from flask import Flask, request, jsonify
from werkzeug.utils import secure_filename
import os

import tensorflow as tf
import numpy as np
from PIL import Image

from tensorflow.keras.preprocessing import image

app = Flask(__name__)

print(tf.__version__)

UPLOAD_FOLDER = 'uploads'
app.config['UPLOAD_FOLDER'] = UPLOAD_FOLDER

# Check if the uploads folder exists, if not, create it
if not os.path.exists(app.config['UPLOAD_FOLDER']):
    os.makedirs(app.config['UPLOAD_FOLDER'])

# Load the model
model = tf.keras.models.load_model('fruite.h5')

# Define the class names
class_names = ['Black Rot_grape', 'Citrus_Canker_Diseases_Leaf_Orange', 'Citrus_Nutrient_Deficiency_Yellow_Leaf_Orange', 'ESCA_grape', 'Healthy_Leaf_Orange', 'Healthy_grape', 'Leaf Blight_grape', 'Multiple_Diseases_Leaf_Orange', 'Young_Healthy_Leaf_Orange', 'apple_scab', 'black_rot_apple', 'cedar_apple_rust', 'healthy_apple']

# Function to preprocess the image
def preprocess_image(image_path):
    img = image.load_img(image_path, target_size=(256, 256))
    img_array = image.img_to_array(img)
    img_array = np.expand_dims(img_array, axis=0)
    return img_array

# Function to make predictions
def predict_image(image_path):
    img_array = preprocess_image(image_path)
    predictions = model.predict(img_array)
    predicted_class = class_names[np.argmax(predictions)]
    return predicted_class

# API endpoint for prediction
@app.route('/predict', methods=['POST'])
def predict():
    if 'file' not in request.files:
        return jsonify({'error': 'No file part'})

    file = request.files['file']
    if file.filename == '':
        return jsonify({'error': 'No selected file'})

    if file:
        filename = secure_filename(file.filename)
        file_path = os.path.join(app.config['UPLOAD_FOLDER'], filename)
        file.save(file_path)
        predicted_label = predict_image(file_path)
        os.remove(file_path)
        print(predicted_label)
        return jsonify({'predicted_label': predicted_label})

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=5000)

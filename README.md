# AgroScan: Your One-Stop App for Smart Farming

This is a final year project that aims to empower farmers with technology. AgroScan offers a combination of features to assist both novice and experienced farmers.

Features:

Weather Forecast: Stay informed about weather conditions to plan your farming activities effectively.
Fruit Crop Disease Detection (CNN Model): Identify diseases affecting orange, grape, and apple crops with an accurate Convolutional Neural Network (CNN) model.
Farming Guide for Beginners: Gain valuable knowledge on essential farming practices, tailored for novice farmers.
Community Feed: Connect with fellow farmers, share queries, and gain insights from their experiences.
Expert Guide: Access a chat platform to directly connect with agriculture experts for in-depth advice (admin-managed).
Requirements:

Python 3.10
TensorFlow 2.14
Project Setup:

Firebase Integration:
AgroScan utilizes Firebase for user authentication, cloud storage, and Firestore database functionalities.
Follow Firebase setup instructions (link to Firebase documentation) to configure your project.
Disease Detection Setup:
Navigate to the fruit folder within the project directory.
Run the Flask API located in the fruit folder. This will generate an IP address.
Update line 177 in the OnPressed function within lib/features/ui/screen/scanner.dart with the obtained IP address.
Running Disease Detection:

Open the AgroScan mobile app.
Select an image of your fruit crop (orange, grape, or apple) from your gallery or storage.
The app will predict the disease (if present) and suggest solutions for control.
Additional Information:

Feel free to contribute to this project by creating pull requests.
For detailed setup and development instructions, refer to the project's internal documentation (if available).
3. Uploading the README:

Once you've filled in the content, save the changes to the README.md file.
If you used the GitHub interface, commit and push the changes to your repository.
If you used the command line, run git add README.md, git commit -m "Added README", and git push to commit and push the changes.
This will create a README file on your AgroScan repository, providing valuable information for users and developers.



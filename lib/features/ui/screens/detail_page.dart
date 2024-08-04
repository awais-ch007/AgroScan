// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, unused_local_variable, unnecessary_null_comparison

import 'package:facebook_clone/features/constants/constants.dart';
import 'package:facebook_clone/features/models/fruits.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final int plantId;

  const DetailPage({Key? key, required this.plantId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final Plant plant = Plant.plantList[plantId];

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(5, 40, 5, 5),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Constants.primaryColor.withOpacity(.15),
                          ),
                          child: Icon(
                            Icons.close,
                            color: Constants.primaryColor,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(5, 40, 5, 5),
                      child: Text(
                        plant.plantName,
                        style: TextStyle(
                          color: Constants.primaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 30.0,
                        ),
                      ),
                    ),
                  ],
                ),

                Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Text(
                    '1.Prepration of Farm',
                    style: TextStyle(
                      color: Constants.primaryColor,
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Text(
                    'Location/Climate:',
                    style: TextStyle(
                      color: Constants.primaryColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Text(
                  plant.locationclimate,
                  style: TextStyle(
                    color: Constants.blackColor,
                    fontSize: 16,
                  ),
                  maxLines: null,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Text(
                    'Sunlight:',
                    style: TextStyle(
                      color: Constants.primaryColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Text(
                  plant.sunlight,
                  style: TextStyle(
                    color: Constants.blackColor,
                    fontSize: 16,
                  ),
                  maxLines: null,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Text(
                    'Soil:',
                    style: TextStyle(
                      color: Constants.primaryColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Text(
                  plant.soil,
                  style: TextStyle(
                    color: Constants.blackColor,
                    fontSize: 16,
                  ),
                  maxLines: null,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Text(
                    'Wind Protection/Air Circulation:',
                    style: TextStyle(
                      color: Constants.primaryColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Text(
                  plant.wind,
                  style: TextStyle(
                    color: Constants.blackColor,
                    fontSize: 16,
                  ),
                  maxLines: null,
                ),
                Image.asset(plant.step1url),

///////////////////////////////////////////////////////////////////////////////////////////////////

                Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Text(
                    '2. Choosing from Varieties:',
                    style: TextStyle(
                      color: Constants.primaryColor,
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Text(
                    'Factors to Consider:',
                    style: TextStyle(
                      color: Constants.primaryColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Text(
                  plant.factors,
                  style: TextStyle(
                    color: Constants.blackColor,
                    fontSize: 16,
                  ),
                  maxLines: null,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Text(
                    'Popular Choices',
                    style: TextStyle(
                      color: Constants.primaryColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Text(
                  plant.popularchoices,
                  style: TextStyle(
                    color: Constants.blackColor,
                    fontSize: 16,
                  ),
                  maxLines: null,
                ),
                Image.asset(plant.step2url),

///////////////////////////////////////////////////////////////////////////////////////////////////

                Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Text(
                    '3. Planting:',
                    style: TextStyle(
                      color: Constants.primaryColor,
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Text(
                    'Timing',
                    style: TextStyle(
                      color: Constants.primaryColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Text(
                  plant.timing,
                  style: TextStyle(
                    color: Constants.blackColor,
                    fontSize: 16,
                  ),
                  maxLines: null,
                ),

                Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Text(
                    'Spacing',
                    style: TextStyle(
                      color: Constants.primaryColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Text(
                  plant.spacing,
                  style: TextStyle(
                    color: Constants.blackColor,
                    fontSize: 16,
                  ),
                  maxLines: null,
                ),

                Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Text(
                    'Digging',
                    style: TextStyle(
                      color: Constants.primaryColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Text(
                  plant.digging,
                  style: TextStyle(
                    color: Constants.blackColor,
                    fontSize: 16,
                  ),
                  maxLines: null,
                ),

                Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Text(
                    'Planting',
                    style: TextStyle(
                      color: Constants.primaryColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Text(
                  plant.planting,
                  style: TextStyle(
                    color: Constants.blackColor,
                    fontSize: 16,
                  ),
                  maxLines: null,
                ),
                Image.asset(plant.step3url),

////////////////////////////////////////////////////////////////////////////////////////////

                Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Text(
                    '4. Care and Maintenance:',
                    style: TextStyle(
                        color: Constants.primaryColor,
                        fontSize: 22,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Text(
                    'Watering',
                    style: TextStyle(
                      color: Constants.primaryColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Text(
                  plant.watering,
                  style: TextStyle(
                    color: Constants.blackColor,
                    fontSize: 16,
                  ),
                  maxLines: null,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Text(
                    'Fertilization',
                    style: TextStyle(
                      color: Constants.primaryColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Text(
                  plant.fertilization,
                  style: TextStyle(
                    color: Constants.blackColor,
                    fontSize: 16,
                  ),
                  maxLines: null,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Text(
                    'Pruning',
                    style: TextStyle(
                      color: Constants.primaryColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Text(
                  plant.pruning,
                  style: TextStyle(
                    color: Constants.blackColor,
                    fontSize: 16,
                  ),
                  maxLines: null,
                ),

                Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Text(
                    'Mulching/Supporting',
                    style: TextStyle(
                      color: Constants.primaryColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Text(
                  plant.mulching,
                  style: TextStyle(
                    color: Constants.blackColor,
                    fontSize: 16,
                  ),
                  maxLines: null,
                ),
                Image.asset(plant.step4url),

                ////

                Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Text(
                    '5. Disease and Pest Management:',
                    style: TextStyle(
                        color: Constants.primaryColor,
                        fontSize: 22,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Text(
                    'Prevention',
                    style: TextStyle(
                      color: Constants.primaryColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Text(
                  plant.prevention,
                  style: TextStyle(
                    color: Constants.blackColor,
                    fontSize: 16,
                  ),
                  maxLines: null,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Text(
                    'Monitoring',
                    style: TextStyle(
                      color: Constants.primaryColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Text(
                  plant.monitor,
                  style: TextStyle(
                    color: Constants.blackColor,
                    fontSize: 16,
                  ),
                  maxLines: null,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Text(
                    'Treatment',
                    style: TextStyle(
                      color: Constants.primaryColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Text(
                  plant.treatment,
                  style: TextStyle(
                    color: Constants.blackColor,
                    fontSize: 16,
                  ),
                  maxLines: null,
                ),
                Image.asset(plant.step5url),

                Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Text(
                    '6. Harvesting:',
                    style: TextStyle(
                        color: Constants.primaryColor,
                        fontSize: 22,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Text(
                    'Ripening:',
                    style: TextStyle(
                      color: Constants.primaryColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Text(
                  plant.ripening,
                  style: TextStyle(
                    color: Constants.blackColor,
                    fontSize: 16,
                  ),
                  maxLines: null,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Text(
                    'Harvesting/Handling:',
                    style: TextStyle(
                      color: Constants.primaryColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Text(
                  plant.harvesting,
                  style: TextStyle(
                    color: Constants.blackColor,
                    fontSize: 16,
                  ),
                  maxLines: null,
                ),
                Image.asset(plant.step6url),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

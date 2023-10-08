import 'package:flutter/material.dart';
import 'constants.dart';
import 'home_view.dart';

// ignore: must_be_immutable
class ResultView extends StatelessWidget {
  ResultView({super.key, required this.result});
  double result;

  String getClassification(result) {
    if (result < 16) {
      return 'Severe Thinness	';
    } else if (result > 16 && result < 17) {
      return 'Moderate Thinness	';
    }
     else if (result >= 18.5 && result < 25) {
      return 'Normal	';
    }
     else if (result >= 25 && result < 30) {
      return 'Overweight	';
    }
    else if (result >= 30 && result < 35) {
      return 'Obese Class I		';
    }
     else if (result >= 35 && result < 40) {
      return 'Obese Class II		';
    }
    
    
     else {
      return 'Obese Class III';
    }
  }
  // ignore: non_constant_identifier_names
  String Bmi(result) {
    if (result < 18.5) {
      return ' أقل من الوزن الطبيعي	';
    
    }
     else if (result >= 18.5 && result < 25) {
      return 'ضمن الوزن الطبيعي	';
    }
     else if (result >= 25 && result < 30) {
      return 'أعلى من الوزن الطبيعي	';
    }
    else if (result >= 30 && result < 35) {
      return 'سمنة درجة أولى (معتدلة)		';
    }
     else if (result >= 35 && result < 40) {
      return 'سمنة درجة ثانية (متوسطة)		';
    }
     else {
      return 'سمنة درجة ثالثة (مفرطة)';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.scaffoldBackground,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: AppColor.scaffoldBackground,
      ),
      body: Center(
        ////////////////////////////////////////////////up result
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Your Result',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 50,
                        color: AppColor.whiteColor,
                      ),
                    ),
                  ],
                ),
              ),
              ////////down result/////////////////////////////////////////////////
              Container(
                  width: 400,
                  height: 400,
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                      color: AppColor.containerBackground,
                      borderRadius: BorderRadius.circular(15)),
                  child: Center(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                        Text(
                          getClassification(result),
                          style: const TextStyle(
                              color: Colors.green, fontSize: 26),
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          result.toStringAsFixed(2),
                          style: TextStyle(
                              color: AppColor.whiteColor,
                              fontSize: 40,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          Bmi(result),
                          style: const TextStyle(
                              fontSize: 30, color:Colors.greenAccent),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                      ]))),

              GestureDetector(
                onTap: () {
                  // w/h*h

                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ResultView(
                            result: result,
                          )));
                },
                child: GestureDetector(
                  onTap: () {
                // w/h*h

                
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const HomeView()));
              },
                child: Container(
                  height: 50,
                  margin: const EdgeInsets.only(top: 10),
                  width: double.infinity,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: AppColor.primaryColor,
                      borderRadius: BorderRadius.circular(5)),
                  child: Text(
                    'Re-Calculate',
                    style: TextStyle(
                        color: AppColor.whiteColor,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),)
              )
            ],
          ),
        ),
      ),
    );
  }
}

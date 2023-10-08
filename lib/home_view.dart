
import 'package:flutter/material.dart';
import 'package:mbi/result_view.dart';

import 'constants.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  bool isMale = true;
  double height = 160;
  int weight = 60;
  int age = 21;
  // (condition)? true:false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.scaffoldBackground,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: AppColor.scaffoldBackground,
        centerTitle: true,
        title: const Text('BMI Calculator App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            //--------gender----------
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isMale = true;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: (isMale)
                              ? AppColor.primaryColor
                              : AppColor.containerBackground,
                          borderRadius: BorderRadius.circular(15)),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.male_rounded,
                              size: 60,
                              color: AppColor.whiteColor,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Male',
                              style: TextStyle(
                                  color: AppColor.whiteColor, fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isMale = false;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: (isMale)
                              ? AppColor.containerBackground
                              : AppColor.primaryColor,
                          borderRadius: BorderRadius.circular(15)),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.female_rounded,
                              size: 60,
                              color: AppColor.whiteColor,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Female',
                              style: TextStyle(
                                  color: AppColor.whiteColor, fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            )),

            // -------- Height
            Expanded(
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                    color: AppColor.containerBackground,
                    borderRadius: BorderRadius.circular(15)),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Height',
                        style: TextStyle(
                            color: AppColor.fabColor,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '${height.round()}',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: AppColor.whiteColor,
                                fontSize: 26,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            'CM',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: AppColor.whiteColor,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Slider(
                        value: height,
                        thumbColor: AppColor.primaryColor,
                        activeColor: AppColor.primaryColor,
                        inactiveColor: AppColor.fabColor,
                        min: 70,
                        max: 240,
                        onChanged: (value) {
                          setState(() {
                            height = value;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // --------- age and weight

            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: AppColor.containerBackground,
                        borderRadius: BorderRadius.circular(15)),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Weight',
                            style: TextStyle(
                                color: AppColor.fabColor,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '$weight',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: AppColor.whiteColor,
                                    fontSize: 26,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                'KG',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: AppColor.whiteColor,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                heroTag: 'min1',
                                backgroundColor: AppColor.fabColor,
                                onPressed: () {
                                  if (weight > 40) {
                                    setState(() {
                                      weight--;
                                    });
                                  }
                                },
                                mini: true,
                                child: const Icon(Icons.remove),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              FloatingActionButton(
                                heroTag: 'max2',
                                backgroundColor: AppColor.fabColor,
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                mini: true,
                                child: const Icon(Icons.add),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: AppColor.containerBackground,
                        borderRadius: BorderRadius.circular(15)),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Age',
                            style: TextStyle(
                                color: AppColor.fabColor,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            '$age',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: AppColor.whiteColor,
                                fontSize: 26,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                heroTag: 'min',
                                backgroundColor: AppColor.fabColor,
                                onPressed: () {
                                  if (age > 10) {
                                    setState(() {
                                      age--;
                                    });
                                  }
                                },
                                mini: true,
                                child: const Icon(Icons.remove),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              FloatingActionButton(
                                heroTag: 'max',
                                backgroundColor: AppColor.fabColor,
                                onPressed: () {
                                  if (age > 10) {
                                    setState(() {
                                      age++;
                                    });
                                  }
                                },
                                mini: true,
                                child: const Icon(Icons.add),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )),
            GestureDetector(
              onTap: () {
                // w/h*h

                double result = weight / ((height / 100) * (height / 100));
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ResultView(
                          result: result,
                        )));
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
                  'Calculate',
                  style: TextStyle(
                      color: AppColor.whiteColor,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

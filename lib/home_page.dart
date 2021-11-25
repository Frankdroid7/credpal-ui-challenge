import 'package:animations/animations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double right = 30;
  double width = 50;
  double height = 50;
  Widget? _mChangingWidget;

  List<Color> colorList = [
    Colors.red,
    Colors.blue,
    Colors.orange,
    Colors.yellow
  ];

  @override
  void initState() {
    super.initState();
    _mChangingWidget = _firstWidget();
  }

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(.9),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(height: 10),
                    Row(
                      children: const [
                        CircleAvatar(
                          child: Icon(Icons.person),
                        ),
                        SizedBox(width: 20),
                        Text('Hello David'),
                        Spacer(),
                      ],
                    ),
                    SizedBox(height: 30),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        RichText(
                          textAlign: TextAlign.start,
                          text: TextSpan(
                            text: 'Stats  ',
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                            children: [
                              TextSpan(
                                text: 'Muscles',
                                style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.black.withOpacity(.2),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          indent: 3,
                          endIndent: 320,
                          thickness: 4,
                          color: Colors.blue,
                        )
                      ],
                    ),
                    SizedBox(height: 40),
                    Text(
                      '58',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 60,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Workouts completed',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black.withOpacity(.2),
                      ),
                    ),
                    SizedBox(height: 40),
                    IntrinsicHeight(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RichText(
                            text: TextSpan(
                              text: '72.4',
                              style: TextStyle(
                                fontSize: 50,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                              children: [
                                TextSpan(
                                  text: 'kg\n',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black.withOpacity(.6),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                TextSpan(
                                  text: 'Current Weight',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black.withOpacity(.2),
                                  ),
                                )
                              ],
                            ),
                          ),
                          VerticalDivider(
                            thickness: 2,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 5),
                              RichText(
                                text: TextSpan(
                                  text: '7.6 ',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: 'kg',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black.withOpacity(.6),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 10),
                              Stack(
                                children: [
                                  Container(
                                    width: 140,
                                    height: 5,
                                    decoration: BoxDecoration(
                                        color: Colors.grey.withOpacity(.3),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                  ),
                                  Container(
                                    height: 5,
                                    width: 80,
                                    decoration: BoxDecoration(
                                      color: Color(0XFFed7d4a),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(height: 15),
                              Text(
                                'Left to Grain',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black.withOpacity(.2),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 50),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        HomeInfo(
                          title: '12.6k',
                          subtitle: 'cal',
                          subText: 'Burned',
                          roundedBgChild: Icon(Icons.add_reaction_rounded,
                              color: Color(0XFFfa6b30)),
                          roundedBgColor: Color(0XFFfa6b30).withOpacity(.2),
                        ),
                        HomeInfo(
                          title: '270k',
                          subtitle: 'kg',
                          subText: 'Lifted',
                          roundedBgChild: Icon(Icons.build_circle_outlined,
                              color: Colors.deepPurpleAccent),
                          roundedBgColor:
                              Colors.deepPurpleAccent.withOpacity(.1),
                        ),
                        HomeInfo(
                          title: '13',
                          subtitle: 'weeks',
                          subText: 'Training',
                          roundedBgChild: Icon(
                            Icons.ac_unit_outlined,
                            color: Colors.blueAccent,
                          ),
                          roundedBgColor: Colors.blueAccent.withOpacity(.1),
                        ),
                      ],
                    ),
                    SizedBox(height: 60),
                    Footer(),
                  ],
                ),
              ),
              Positioned(
                top: 20,
                right: right,
                child: Column(
                  children: [
                    SizedBox(height: 5),
                    AnimatedContainer(
                      width: width,
                      height: height,
                      duration: Duration(milliseconds: 300),
                      child: _mChangingWidget,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _secondWidget() {
    return Stack(
      children: [
        Card(
          elevation: 8,
          margin: EdgeInsets.symmetric(horizontal: 30),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Color(0XFFfa6b30).withOpacity(.2),
                      child: Icon(Icons.whatshot, color: Color(0XFFfa6b30)),
                    ),
                    SizedBox(width: 20),
                    Text(
                      'New Workout',
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      'From Previous',
                      style: TextStyle(fontSize: 24),
                    ),
                    Spacer(),
                    Container(
                      padding: EdgeInsets.all(18),
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(.3),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Icon(Icons.arrow_forward_ios_sharp, size: 15),
                    ),
                  ],
                ),
                Spacer(),
                TextButton.icon(
                  onPressed: () {
                    setState(() {
                      right = 30;
                      width = 50;
                      height = 50;
                      _mChangingWidget = _firstWidget();
                    });
                  },
                  icon: Icon(
                    Icons.close,
                    color: Colors.grey,
                  ),
                  label: Text(
                    'CLOSE',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        Positioned(
          top: 140,
          right: 0,
          left: 0,
          bottom: 120,
          child: SizedBox(
            height: 100,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                itemCount: 4,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return SizedBox(
                    width: 300,
                    child: Card(
                      elevation: 12,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18)),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: WorkoutWidget(
                          workOutWidgetModel: workOutModelList[index],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _firstWidget() {
    return GestureDetector(
      onTap: () {
        setState(() {
          right = 0;
          height = MediaQuery.of(context).size.height * 0.5;
          _mChangingWidget = _secondWidget();
          width = MediaQuery.of(context).size.width;
        });
      },
      child: Container(
        decoration: BoxDecoration(
            color: Color(0XFFfb6d2f), borderRadius: BorderRadius.circular(15)),
        child: Icon(Icons.whatshot, color: Colors.white),
      ),
    );
  }
}

class WorkoutWidget extends StatelessWidget {
  final WorkOutModel? workOutWidgetModel;

  WorkoutWidget({required this.workOutWidgetModel});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
          decoration: BoxDecoration(
            color: workOutWidgetModel!.color,
            borderRadius: BorderRadius.circular(15),
          ),
          child: RichText(
            text: TextSpan(
                text: '${workOutWidgetModel!.dates![0]}\n',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                  color: Colors.white.withOpacity(.5),
                ),
                children: [
                  TextSpan(
                    text: workOutWidgetModel!.dates![1],
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                    ),
                  )
                ]),
          ),
        ),
        SizedBox(width: 20),
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  SizedBox(
                    width: 30,
                    child: Divider(
                      thickness: 5,
                      color: Colors.deepOrange,
                    ),
                  ),
                  SizedBox(width: 6),
                  SizedBox(
                    width: 30,
                    child: Divider(
                      thickness: 5,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Text(
                workOutWidgetModel!.title!,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                workOutWidgetModel!.subtitle!,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black.withOpacity(.2),
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class HomeInfo extends StatelessWidget {
  final String title;
  final String subText;
  final String subtitle;
  final Color roundedBgColor;
  final Widget roundedBgChild;
  const HomeInfo(
      {Key? key,
      required this.title,
      required this.subText,
      required this.subtitle,
      required this.roundedBgColor,
      required this.roundedBgChild})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: roundedBgColor,
            shape: BoxShape.circle,
          ),
          child: roundedBgChild,
        ),
        SizedBox(height: 15),
        RichText(
          text: TextSpan(
            text: title,
            style: TextStyle(
              fontSize: 25,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            children: [
              TextSpan(
                text: subtitle,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black.withOpacity(.6),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 10),
        Text(
          subText,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black.withOpacity(.2),
          ),
        )
      ],
    );
  }
}

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 25, horizontal: 22),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Text(
                  'AUG',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                    color: Colors.white.withOpacity(.5),
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  '17',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    SizedBox(
                      width: 30,
                      child: Divider(
                        thickness: 5,
                        color: Colors.deepOrange,
                      ),
                    ),
                    SizedBox(width: 6),
                    SizedBox(
                      width: 30,
                      child: Divider(
                        thickness: 5,
                        color: Colors.blue,
                      ),
                    ),
                    SizedBox(width: 6),
                    SizedBox(
                      width: 30,
                      child: Divider(
                        thickness: 5,
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Text(
                  'Recent: Chest & Legs',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 12),
                Text(
                  '8 Exercises',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black.withOpacity(.2),
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(.3),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(
              Icons.arrow_forward_ios_sharp,
              size: 15,
            ),
          ),
        ],
      ),
    );
  }
}

List<WorkOutModel> workOutModelList = [
  WorkOutModel(
    color: Colors.blue,
    title: 'Shoulders & Back',
    subtitle: '12 Exercises',
    dates: ['Aug', '14'],
  ),
  WorkOutModel(
    color: Colors.blue.withOpacity(.6),
    title: 'Shoulders & Back',
    subtitle: '14 Exercises',
    dates: ['Sep', '10'],
  ),
  WorkOutModel(
    color: Colors.orange,
    title: 'Chest and Legs',
    subtitle: '15 Exercises',
    dates: ['June', '6'],
  ),
  WorkOutModel(
    color: Colors.yellow,
    title: 'Hips',
    subtitle: '18 Exercises',
    dates: ['Oct', '9'],
  ),
];

class WorkOutModel {
  final Color? color;
  final String? title;
  final String? subtitle;
  final List<String>? dates;

  WorkOutModel(
      {required this.color,
      required this.title,
      required this.subtitle,
      required this.dates});
}

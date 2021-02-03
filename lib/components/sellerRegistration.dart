import 'package:flutter/material.dart';

class SellerRegistration extends StatefulWidget {
  @override
  _SellerRegistrationState createState() => new _SellerRegistrationState();
}

class _SellerRegistrationState extends State<SellerRegistration> {
  int _currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: ThemeData(
          fontFamily: 'Lato',
          primarySwatch: Colors.teal,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          backgroundColor: Colors.white
      ),
      home: new Scaffold(
        appBar: AppBar(
          title:Text('Become A Seller'),
          centerTitle: true,
          backgroundColor:Color(0xFF172f55),
          elevation: 0,
          toolbarHeight:35,
          leading: IconButton(
            icon:Icon(Icons.arrow_back_ios,color: Colors.white,),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: new Stepper(
          physics: ClampingScrollPhysics(),
          type: StepperType.horizontal,
          currentStep: _currentStep,
          onStepTapped: (int step) => setState(() => _currentStep = step),
          onStepContinue: _currentStep < 2 ? () => setState(() => _currentStep += 1) : null,
          onStepCancel: _currentStep > 0 ? () => setState(() => _currentStep -= 1) : null,
          steps: <Step>[
            new Step(
              title: new Text('Personal'),
              content: new Container(
                child: Padding(
                  padding: EdgeInsets.only(bottom: 25.0),
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                          padding: EdgeInsets.only(
                              left: 5.0, right: 5.0, top: 2.0),
                          child: new Row(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              new Flexible(
                                child: new TextField(
                                  decoration: const InputDecoration(
                                    hintText: "Enter Your Name",
                                  ),

                                ),
                              ),
                            ],
                          )),
                      SizedBox(height: 20.0,),
                      Padding(
                          padding: EdgeInsets.only(
                              left: 5.0, right: 5.0, top: 2.0),
                          child: new Row(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              new Flexible(
                                child: new TextField(
                                  decoration: const InputDecoration(
                                      hintText: "Enter Email ID"),

                                ),
                              ),
                            ],
                          )),
                      SizedBox(height: 20.0,),
                      Padding(
                          padding: EdgeInsets.only(
                              left: 5.0, right: 5.0, top: 2.0),
                          child: new Row(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              new Flexible(
                                child: new TextField(
                                  decoration: const InputDecoration(
                                      hintText: "Enter Mobile Number"),

                                ),
                              ),
                            ],
                          )),
                    ],
                  ),
                ),
              ),
              isActive: _currentStep >= 0,
              state: _currentStep >= 0 ? StepState.complete : StepState.disabled,
            ),
            new Step(
              title: new Text('Vehicle'),
              content: new Container(
                child: Padding(
                  padding: EdgeInsets.only(bottom: 25.0),
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          new Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              new Text(
                                'Vehicle Information',
                                style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 20.0,),
                      Padding(
                          padding: EdgeInsets.only(
                              left: 5.0, right: 5.0, top: 2.0),
                          child: new Row(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              new Flexible(
                                child: new TextField(
                                  decoration: const InputDecoration(
                                    hintText: "Enter Vehicle Model",
                                  ),

                                ),
                              ),
                            ],
                          )),
                      SizedBox(height: 20.0,),
                      Padding(
                          padding: EdgeInsets.only(
                              left: 5.0, right: 5.0, top: 2.0),
                          child: new Row(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              new Flexible(
                                child: new TextField(
                                  decoration: const InputDecoration(
                                      hintText: "Enter vehicle year"),

                                ),
                              ),
                            ],
                          )),
                      SizedBox(height: 20.0,),
                      Padding(
                          padding: EdgeInsets.only(
                              left: 5.0, right: 5.0, top: 2.0),
                          child: new Row(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              new Flexible(
                                child: new TextField(
                                  decoration: const InputDecoration(
                                      hintText: "Enter vehicle Registration Number"),

                                ),
                              ),
                            ],
                          )),
                    ],
                  ),
                ),
              ),
              isActive: _currentStep >= 0,
              state: _currentStep >= 1 ? StepState.complete : StepState.disabled,
            ),
            new Step(
              title: new Text('Done'),
              content:new Container(
                child: Padding(
                  padding: EdgeInsets.only(bottom: 25.0),
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                          padding: EdgeInsets.only(
                              left: 5.0, right: 5.0, top: 2.0),
                          child: new Row(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              new Text('And you are done here!')
                            ],
                          )),
                    ],
                  ),
                ),
              ),
              isActive: _currentStep >= 0,
              state: _currentStep >= 2 ? StepState.complete : StepState.disabled,
            ),
          ],
        ),
      ),
    );
  }
}
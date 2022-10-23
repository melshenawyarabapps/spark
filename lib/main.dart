import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int count = 0;

  add() {
    count++;
    setState(() {});
  }

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  String emailAddress = '';

  String password = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          //primarySwatch: MaterialColor()
          ),
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: Center(
          child: Form(
            key: formKey,
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Image.asset(
                        'assets/test/test.png',
                        height: 60,
                        width: 120,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: ShaderMask(
                        blendMode: BlendMode.srcIn,
                        shaderCallback: (Rect bounds) {
                          return LinearGradient(
                            colors: [Colors.blue, Colors.lightBlueAccent],
                          ).createShader(bounds);
                        },
                        child: Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(),
                        label: Text('Email Address'),
                        hintText: 'Enter your email',
                        //suffix: ,
                        // prefix: Icon(Icons.email_outlined),
                        prefixIcon: Icon(Icons.email),

                      ),
                      keyboardType: TextInputType.emailAddress,
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Required filed';
                        } else {
                          return null;
                        }
                      },
                      onChanged: (String value) {
                        emailAddress = value;
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(),
                        label: Text('Password'),
                        hintText: 'Enter your password',
                        //suffix: ,
                        // prefix: Icon(Icons.email_outlined),
                        prefixIcon: Icon(Icons.lock_outline),
                      ),
                      keyboardType: TextInputType.phone,
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Required filed';
                        } else {
                          return null;
                        }
                      },
                      onChanged: (String value) {
                        password = value;
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: (){
                        formKey.currentState!.validate();
                      },
                      child: Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.symmetric(vertical: 18),
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.blue,
                              Colors.lightBlueAccent,
                            ],
                          ),
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: Text(
                          'Login',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/*

60 ==> 30

50 ==> 25

n ===> n/2

 */

/*

Center()

Row()

Container()

 */

/*

MaterialApp()

Scaffold()

AppBar()

Center()

FloatingActionButton()

Text()

TextStyle()

Container()

Row()

Column()

Image() ==> network assets file

TextFiled()

TextFormFiled()

SingleChildScrollView()

AppIcon

AppName




 */

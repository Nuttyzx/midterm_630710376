// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

// TODO: ใส่รหัสนักศึกษาที่ค่าสตริงนี้
const studentId = '630710376';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 20.0,
          ),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bg_colorful.jpg"),
              opacity: 0.6,
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text('Good Morning',
                  textAlign: TextAlign.center, style: textTheme.headlineMedium),
              Text(studentId,
                  textAlign: TextAlign.center,
                  style: textTheme.headlineSmall!.copyWith(
                      fontWeight: FontWeight.bold, color: Colors.black87)),

              SizedBox(height: 50.0,),
              //Spacer(), //Spacer ทำให้เป็นการช่วยกำหนดพื้นที่ว่างที่ยืดหยุ่นได้โดยมันจะทำให้ตัว widget ที่วางต่อจากมันดันไปอยู่ขอบล่างของจอให้เอง
              Expanded(child: _buildQuizView('งานวันกาชาดมีครั้งแรกในรัชสมัยใด?')),

              //Spacer(),
              Container(
                margin: EdgeInsets.only(top: 100.0),
                child: Row(
                  children: [
                    Expanded(child: _buildButtonPanel(Icons.arrow_back_ios , Color(0xF5E57A7A))),
                    SizedBox(width: 10.0,),
                    Expanded(child: _buildButtonPanel(Icons.arrow_forward_ios , Color(0xD519B28E))),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }

  _buildQuizView(String question) {
    // TODO: build UI
    return Container(//No center
      //width: 700.0,
      //height: 200.0,
      //margin: EdgeInsets.all(30.0),
      decoration: BoxDecoration(color: Colors.white,border: Border.all(color: Colors.black,width: 3.0),borderRadius: BorderRadius.circular(30.0)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text('Question 1 of 30',style: TextStyle(fontSize: 20.0),),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Container(
              //width: 600.0,
              //height: 45.0,
              decoration: BoxDecoration(color: Color(0xD519B28E),border: Border.all(color: Colors.black,width: 3.0),borderRadius: BorderRadius.circular(20.0)),
              child: Padding(
                //padding: const EdgeInsets.all(8.0),
                padding: const EdgeInsets.symmetric(horizontal: 155.0,vertical: 16.0),
                child: Text(question,style: TextStyle(color: Colors.white,fontSize: 20.0,fontWeight: FontWeight.bold),),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            //child: _builtAnswer('A','รัชกาลที่ 7'),
              child: Container(
                width: 600.0,
                height: 45.0,
                decoration: BoxDecoration(color: Color(0xFFD7F2FD),border: Border.all(color: Colors.black),borderRadius: BorderRadius.circular(15.0)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 30.0,
                            height: 40.0,
                            decoration: BoxDecoration(color: Color(0xF5E57A7A),border: Border.all(color: Colors.black),borderRadius: BorderRadius.circular(5.0)),
                            child: Center(child: Text('A',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w900))),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 16.0),
                          child: Text('รัชกาลที่ 7',style: TextStyle(fontSize: 14.0,fontWeight: FontWeight.bold)),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(width: 20.0,height: 20.0,decoration: BoxDecoration(color: Color(0xFF28EC2D),border: Border.all(width: 1.0)),child: Icon(Icons.done,size: 15.0,)),

                    ),
                  ],
                ),
              ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: _builtAnswer('B','รัชกาลที่ 8'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: _builtAnswer('C','รัชกาลที่ 9'),
          ),
        ],
      ),
    );
  }

  Container _builtAnswer(String textChoice , String textContent) {
    return Container(

            width: 600.0,
            height: 45.0,
            decoration: BoxDecoration(color: Colors.white,border: Border.all(color: Colors.black),borderRadius: BorderRadius.circular(15.0)),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 30.0,
                    height: 40.0,
                    decoration: BoxDecoration(color: Colors.white,border: Border.all(color: Colors.black),borderRadius: BorderRadius.circular(5.0)),
                    child: Center(child: Text(textChoice,style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w900))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Text(textContent,style: TextStyle(fontSize: 14.0,fontWeight: FontWeight.bold)),
                )
              ],
            ),
          );
  }

  _buildButtonPanel(IconData icon , Color iconColor) {
    // TODO: build UI
    return Center(child: Container(
      //width: 600.0,
      height: 50.0,
      child: ElevatedButton(
        onPressed: () {
        },
        style: ElevatedButton.styleFrom(
          primary: iconColor, // Background color
          onPrimary: Colors.black, // Text Color (Foreground color) เฉพาะที่ยังไม่กำหนดสีไว้
            side: const BorderSide(
              width: 3.0,
              color: Colors.black,
            ),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50),
            ),
        ),
        child: Row(
          //mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              icon: Icon(icon),
              alignment: Alignment.center,
              onPressed: () {
              },
            ),

            /*Icon( // <-- Icon
              icon,
              size: 16.0,
            ),*/
          ],
        ),
      ),
    ),
    );
  }
}

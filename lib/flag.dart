import 'package:flutter/material.dart';

class IndianFlag extends StatefulWidget {
  const IndianFlag({super.key});

  @override
  State<IndianFlag> createState() => _IndianFlagState();
}

class _IndianFlagState extends State<IndianFlag> {

  double myTurn = 0.0;

  @override
  void initState(){
    Future.delayed(
      const Duration(milliseconds: 500),(){
        setState(() {
          myTurn = 20;
        });
    }
    );

    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              color: Colors.orange,
            ),
          ),
          Expanded(
            child: Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Center(
                child: Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.blue, width: 4),
                  ),
                  child: AnimatedRotation(
                    turns: -myTurn,
                    duration: const Duration(seconds: 60),
                    child: Stack(
                      children: List.generate(13, (index) {
                        return Center(
                          child: Transform.rotate(
                            angle: index * 0.26,
                            child: Container(
                              height: 4,
                              width: 120,
                              color: Colors.blue,
                            ),
                          ),
                        );
                      },
                      ),
                    ),
                  ),
                  ),
              ),
              ),
          ),
          Expanded(
            child: Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              color: Colors.green,
            ),
          ),
        ]
        ),
    );
  }
}
import 'package:flutter/material.dart';

class SpleshScreen extends StatefulWidget {
  const SpleshScreen({super.key});

  @override
  State<SpleshScreen> createState() => _SpleshScreenState();
}

class _SpleshScreenState extends State<SpleshScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3),() => Navigator.pushReplacementNamed(context, 'home'),);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body:  Container(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        alignment: Alignment.center,
        child: Image.asset("assets/image/logo.png",height:200,width:200, ),
      ),
    );
  }
}

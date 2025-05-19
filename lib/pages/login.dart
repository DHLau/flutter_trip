import 'package:flutter/material.dart';
import 'package:trip_flutter/Widgets/input.dart';
import 'package:trip_flutter/util/view_util.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool loginEnable = false;
  String? userName;
  String? password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Stack(children: [..._background(), _content()]));
  }

  _background() {
    return [
      Positioned.fill(
        child: Image.asset('assets/images/login-bg.jpg', fit: BoxFit.cover),
      ),
      // 加蒙层
      Positioned.fill(
        child: Container(decoration: BoxDecoration(color: Colors.black54)),
      ),
    ];
  }

  _content() {
    return Positioned.fill(
      child: ListView(
        children: [
          hiSpace(height: 100),
          Text("我是一段文字", style: TextStyle(fontSize: 26, color: Colors.white)),
          hiSpace(height: 40),
          InputWidget(
            "请输入账号",
            onChanged: (value) {
              userName = value;
            },
          ),
        ],
      ),
    );
  }
}

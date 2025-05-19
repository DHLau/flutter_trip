import 'package:flutter/material.dart';

class InputWidget extends StatelessWidget {
  final String hint;
  final bool obsureText;
  final ValueChanged<String>? onChanged;
  // 输入框类型
  final TextInputType? keyboardType;

  const InputWidget(
    this.hint, {
    super.key,
    this.obsureText = false,
    this.onChanged,
    this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _input(),
        Divider(color: Colors.white, height: 1, thickness: 0.5),
      ],
    );
  }

  _input() {
    return TextField(
      onChanged: onChanged,
      obscureText: obsureText,
      keyboardType: keyboardType,
      autofocus: !obsureText,
      cursorColor: Colors.white,
      // 文字样式
      style: TextStyle(
        color: Colors.white,
        fontSize: 16,
        fontWeight: FontWeight.w400,
      ),
      // 输入框样式
      decoration: InputDecoration(
        // 没有边框
        border: InputBorder.none,
        hintText: hint,
        hintStyle: TextStyle(color: Colors.white54),
      ),
    );
  }
}

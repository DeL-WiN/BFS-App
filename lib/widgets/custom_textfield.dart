import 'package:bfs_app/style.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final void Function(String)? onChanged;
  const CustomTextField({super.key, required this.controller, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return   TextField(
      controller: controller,
      onChanged: onChanged,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BRadius.r16,
          borderSide: BorderSide(color: BC.blue),
        ),
        hintText: 'https://api.example.com',
        prefixIcon: const Icon(Icons.compare_arrows),
      ),
    );
  }
}

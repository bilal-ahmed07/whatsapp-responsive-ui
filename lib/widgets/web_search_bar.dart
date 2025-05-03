import 'package:flutter/material.dart';
import 'package:whatsapp_ui/colors.dart';

class WebSearchBar extends StatelessWidget {
  const WebSearchBar({super.key});


  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.09,
      width: MediaQuery.of(context).size.width * 0.25,
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: dividerColor),
        )
      ),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(
              width: 0,
              style: BorderStyle.none,
            ),
          ),
          prefixIcon:const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Icon(Icons.search),
          ),
          hintText: "Search or Start new Chat",
          hintStyle: const TextStyle(color: Colors.grey),
          fillColor: searchBarColor,
          filled: true,
          contentPadding: const EdgeInsets.all(10),
        ),
      ),
    );
  }
}
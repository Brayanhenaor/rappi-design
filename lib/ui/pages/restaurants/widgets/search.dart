import 'package:flutter/material.dart';

class SearchInput extends StatelessWidget {
  final void Function(String) searchHandler;
  final String? hintText;

  const SearchInput({
    Key? key,
    required this.searchHandler,
    this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      onSubmitted: searchHandler,
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.search,
      decoration: InputDecoration(
        hintText: hintText,
        suffixIcon: Icon(
          Icons.search,
          color: Colors.black,
        ),
        hintStyle: TextStyle(fontSize: 15, color: Colors.grey[800]),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          borderSide: BorderSide(
            width: 0,
            style: BorderStyle.none,
          ),
        ),
        filled: true,
        fillColor: Colors.grey[200],
        contentPadding: const EdgeInsets.symmetric(horizontal: 20),
      ),
    );
  }
}

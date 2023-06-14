import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/colors.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: MyColors.kSecondaryColor,
      decoration: InputDecoration(
        hintText: 'Search',
        focusColor: MyColors.kSecondaryColor,
        hoverColor: MyColors.kSecondaryColor,
        suffixIcon: IconButton(
          onPressed: () {},
          icon: const Icon(
            FontAwesomeIcons.magnifyingGlass,
            color: MyColors.kSecondaryColor,
            size: 22,
          ),
        ),
        enabledBorder: buildOutlinedInputBorder(),
        border: buildOutlinedInputBorder(),
        focusedBorder: buildOutlinedInputBorder(),
      ),
    );
  }

  OutlineInputBorder buildOutlinedInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: MyColors.kSecondaryColor),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:paymentapp/core/utils/styles.dart';

AppBar BuildAppBar({required final String? title}) {
  return AppBar(
    leading: IconButton(
      onPressed: () {},
      icon: const Icon(Icons.arrow_back),
    ),
    centerTitle: true,
    title: Text(
      textAlign: TextAlign.center,
      title ?? '',
      style: Styles.textStyle25,
    ),
  );
}

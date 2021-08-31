import 'package:ecommer_app/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CheckoutSuccessPage extends StatelessWidget {
  const CheckoutSuccessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: bgColor1,
        centerTitle: true,
        title: Text(
          'Checkout Success',
        ),
        elevation: 0,
      ),
    );
  }
}

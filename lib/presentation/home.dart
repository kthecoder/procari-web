import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0,
        title: const Text('Procar\u00ed',
            style: TextStyle(
              color: Colors.white,
            )),
      ),
      body: SizedBox(
        width: mediaQuery.width,
        height: mediaQuery.height,
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Color.fromRGBO(0, 92, 151, 1),
                Color.fromRGBO(44, 14, 113, 1),
              ],
            ),
          ),
          child: Container(),
        ),
      ),
    );
  }
}

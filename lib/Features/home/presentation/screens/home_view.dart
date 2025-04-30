import 'package:flutter/material.dart';
import '../widgets/home_appbar.dart';

class HomeView extends StatelessWidget
{
  const HomeView({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: const CustomHomeAppBar(barTitle: "Reset Password",),
      backgroundColor: Theme.of(context).cardColor,
      body: const Column(
        children:
        [
          /* Add widgets here */
        ],
      ),
    );
  }
}
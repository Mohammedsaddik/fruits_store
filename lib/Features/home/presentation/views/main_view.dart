import 'package:flutter/material.dart';
import 'package:fruits_store/Features/home/presentation/views/widgets/Custom_Bottom_Navigation_Bar.dart';
import 'package:fruits_store/Features/home/presentation/views/widgets/home_view.dart';
import 'package:fruits_store/Features/home/presentation/views/widgets/main_view_body.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});
  static const routeName = "HomeView";

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int currentViewIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MainViewBody(
        currentViewIndex: currentViewIndex,
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        onItemTapped: (index) {
          currentViewIndex = index;
          setState(() {});
        },
      ),
    );
  }
}

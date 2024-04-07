import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_list/ui/screens/today_screen.dart';
import 'package:todo_list/ui/screens/tomorrow_screen.dart';
import 'package:todo_list/ui/screens/upcoming_screen.dart';
import 'package:todo_list/ui/viewmodels/home_viewmodel.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HomeViewModel controller = Get.put(HomeViewModel());
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: const Text('Todo App'),
          bottom: TabBar(
            onTap: controller.onTabChanged,
            indicatorColor: Colors.blue[100],
            tabs: const <Widget>[
              Tab(text: "Today"),
              Tab(text: "Tomorrow"),
              Tab(text: "Upcoming"),
            ],
          ),
        ),
        body: const TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: <Widget>[
            TodayScreen(),
            TomorrowScreen(),
            UpcomingScreen(),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: controller.navigateToAddTodoScreen,
          tooltip: 'Add Todo',
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}

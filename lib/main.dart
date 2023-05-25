import 'package:flutter/material.dart';
import 'package:my_custom_widgets/utils/constants.dart';
import 'package:my_custom_widgets/utils/helperSnackBar.dart';
import 'package:my_custom_widgets/views/homePageContainer.dart';

void main() {
  runApp(MyWidgetApp());
}

class MyWidgetApp extends StatelessWidget {
  void onFabPressed(BuildContext context) {
    HelperSnackBar.showSnackbarOnMaterialApp('FloatingActionButton pressed!');
  }

 SnackBar menuButtonClicked(String selectedMenu, BuildContext context) {
   return HelperSnackBar.showSnackbarOnMaterialApp(selectedMenu);
  }

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey =
        GlobalKey<ScaffoldMessengerState>();

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: Constants.STR_APP_TITLE,
        scaffoldMessengerKey: scaffoldMessengerKey,
        home: Scaffold(
          appBar: AppBar(
            title: Text('Flutter Widgets Samples'),
            actions: [
              PopupMenuButton<String>(
                onSelected: (value) {
                  print('Selected: $value');
                  scaffoldMessengerKey.currentState!.showSnackBar(
                      menuButtonClicked('Selected Menu: $value', context));
                },
                itemBuilder: (BuildContext context) => [
                  PopupMenuItem(
                    value: 'Option 1',
                    child: Text('Option 1'),
                  ),
                  PopupMenuItem(
                    value: 'Option 2',
                    child: Text('Option 2'),
                  ),
                  PopupMenuItem(
                    value: 'Option 3',
                    child: Text('Option 3'),
                  ),
                ],
              )
            ],
          ),
          backgroundColor: Colors.white,
          body: homePageContainer(Colors.blue, Colors.pink),
          floatingActionButton: FloatingActionButton(
            onPressed: (){
              onFabPressed(context);
            },
            child: Icon(Icons.add),
            backgroundColor: Colors.blue,
            tooltip: 'Add',
          ),
        ));
  }
}

import 'package:ably_flutter/ably_flutter.dart' as alby;
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/_http/mock/http_request_mock.dart';
import 'package:trackit/core/localization/localization.dart';
import 'package:trackit/core/navigation/pages.dart';
import 'package:trackit/core/themes/theme.dart';
import 'package:trackit/core/utils/debug_logger.dart';
import 'package:trackit/data/services/mock_order_service.dart';

void mainCommon(Map<String, dynamic> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();

  //
  // Create an instance of ClientOptions with Ably key
  final clientOptions = alby.ClientOptions(key: '<KEY>');
  MockOrderService(clientOptions);

  "$args".logger;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(414.0, 896.0),
      splitScreenMode: true,
      minTextAdapt: true,
      builder: (_, __) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        translations: AppLocalization(),
        locale: Get.deviceLocale, //for setting localization strings
        fallbackLocale: const Locale('en', 'US'),
        title: 'Trackit',
        theme: AppThemeData.lightTheme,
        getPages: Pages.pages,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

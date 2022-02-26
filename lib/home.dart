import 'package:flutter/material.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  static final String oneSignalAppId = "da0f64bd-3c2d-437f-ad46-90e02cbffb20";
  Future<void> initPlatformState() async {
    OneSignal.shared.setAppId(oneSignalAppId);
    OneSignal.shared
        .promptUserForPushNotificationPermission()
        .then((accepted) {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            FlutterLogo(
              size: 300,
              textColor: Colors.blue,
              style: FlutterLogoStyle.stacked,
            ), //Flutter
            Text("Hello"),
          ],
        ),
      ),
    );
  }
}

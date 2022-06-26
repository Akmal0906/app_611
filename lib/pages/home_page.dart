import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static const String id = 'home_page';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();


  void _toastfun() {
    Fluttertoast.showToast(
        msg: "This is Center Short Toast",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.SNACKBAR,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.deepPurpleAccent,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  void _awasome() {
    AwesomeDialog(
      context: context,
      animType: AnimType.SCALE,
      dialogType: DialogType.SUCCES,
      body: const Center(
        child: Text(
          'If the body is specified, then title and description will be ignored, this allows to further customize the dialogue.',
          style: TextStyle(fontStyle: FontStyle.italic),
        ),
      ),
      title: 'This is Ignored',
      desc: 'This is also Ignored',
      btnOkOnPress: () {},
    ).show();
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> textWidgets = [];
    return Scaffold(
      appBar: AppBar(
        title: const Text('flutter'),
      ),
      body: Center(


        child:textWidgets[1],

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
          setState(() {
            textWidgets.add(Text('android info ${androidInfo.androidId}'));
            textWidgets.add(Text('android info ${androidInfo.version}'));
            textWidgets.add(Text('android info ${androidInfo.host}'));
          });
        },
        child: const Icon(Icons.refresh,color: Colors.deepPurpleAccent,),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  final TextEditingController textEditingController = TextEditingController();
  static const String KEYNAME = "name";
  var namevalue = "No value saved";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getValue();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Shared Preference"),
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: TextFormField(
                controller: textEditingController,
                decoration: InputDecoration(
                    label: Text("Name"),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        width: 2,
                      ),
                    )),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () async {
                  var name = textEditingController.text.toString();
                  // Obtain shared preferences.
                  var prefs = await SharedPreferences.getInstance();
                  // Save an String value to 'action' key.
                  await prefs.setString(KEYNAME, name);
                  // Update the value after saving to SharedPreferences.
                  getValue();
                },
                child: const Text("Save")),
            const SizedBox(
              height: 20,
            ),
            Text(namevalue),
          ]),
        ),
      ),
    );
  }

  void getValue() async {
    // Obtain shared preferences.
    var prefs = await SharedPreferences.getInstance();
    var getName = prefs.getString(KEYNAME);
    namevalue = getName ?? "No Value Saved";
    setState(() {});
  }
}

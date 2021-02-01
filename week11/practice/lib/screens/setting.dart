import 'package:flutter/material.dart';
import 'package:practice/notifier/fonts-notifier.dart';
import 'package:practice/notifier/theme-notifier.dart';
import 'package:practice/screens/home.dart';
import 'package:provider/provider.dart';

class Setting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (c) => MyHomePage()));
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        automaticallyImplyLeading: false,
        title: Text("Setting"),
      ),
      body: Consumer<FontNotifer>(
        builder: (context, notifier, _) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 20),
                child: Text(
                  "Text Size",
                  style: Theme.of(context).textTheme.headline4,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 20),
                child: Text(
                  "Name",
                  style: TextStyle(fontSize: notifier.fontSize),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 10),
                child: Row(
                  children: [
                    Text(
                      "9:00 AM",
                      style: TextStyle(fontSize: notifier.fontSize),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 8),
                      height: 16,
                      width: 2,
                      decoration: BoxDecoration(
                        color: Colors.teal,
                      ),
                    ),
                    Text(
                      "26 seconds",
                      style: TextStyle(fontSize: notifier.fontSize),
                    ),
                  ],
                ),
              ),
              Slider(
                  activeColor: Colors.teal,
                  inactiveColor: Colors.grey,
                  value: notifier.sliderFontSize,
                  min: 0.5,
                  onChanged: (value) {
                    notifier.setFontSize(value);
                  }),
              Divider(
                color: Colors.teal,
              ),
              DarkModeWidget()
            ],
          );
        },
      ),
    );
  }
}

class DarkModeWidget extends StatelessWidget {
  const DarkModeWidget({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final themeProvider = context.watch<ThemeNotifier>();
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (c) => DarkModeSwitcher()));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Dark Mode",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                    flex: 3,
                    child: Text(
                      "user Darker colours platette fo rsystem background and compatbile apps.Dark mode can help you to relieve eyes strain when you're using your device in the dark.",
                      style: TextStyle(color: Colors.grey),
                    )),
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Row(children: [
                    Text(themeProvider.isDarkTheme ? "On" : "Off"),
                    Icon(Icons.arrow_forward_ios),
                  ]),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class DarkModeSwitcher extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeNotifier>(context);
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text(
            "Dark Mode",
            style: Theme.of(context).textTheme.headline3,
          ),
          SwitchListTile(
            title: Text("Dark Mode"),
            value: themeProvider.isDarkTheme,
            onChanged: (value) {
              themeProvider.toggleTheme();
            },
          ),
        ],
      ),
    );
  }
}

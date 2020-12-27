import 'package:flutter/material.dart';
import 'package:ongenerateroute/pages/setting-pages/setting-pages.dart';

class SettingPage extends StatelessWidget {
  static const routeName = "/setting-page";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              "Settings",
              style: TextStyle(color: Colors.white, fontSize: 40),
            ),
          ),
          PhoneSettingWidget(
            onTap: () {
              Navigator.of(context).pushNamed(AboutPhonePage.routeName);
            },
            icon: Icons.phone_android,
            color: Colors.blue,
            title: "About Phone",
          ),
          PhoneSettingWidget(
            onTap: () {
              Navigator.of(context).pushNamed(AboutPhonePage.routeName);
            },
            icon: Icons.upload_file,
            color: Colors.red[300],
            title: "System apps Updaters",
          ),
          PhoneSettingWidget(
            onTap: () {
              Navigator.of(context).pushNamed(SecurityPage.routeName);
            },
            icon: Icons.security,
            color: Colors.green[300],
            title: "Security statuss",
          ),
          Divider(
            color: Colors.grey,
          ),
          PhoneSettingWidget(
            onTap: () {},
            icon: Icons.sim_card,
            color: Colors.orange[50],
            title: "Sim cards & mobile networks",
          ),
          PhoneSettingWidget(
            onTap: () {
              Navigator.of(context).pushNamed(WifiPage.routeName);
            },
            icon: Icons.wifi,
            color: Colors.blue,
            title: "Wi-Fi",
          ),
          PhoneSettingWidget(
            onTap: () {
              Navigator.of(context).pushNamed(BluetoothPage.routeName);
            },
            icon: Icons.bluetooth,
            color: Colors.green[300],
            title: "Bluetooth ",
          ),
          Divider(
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}

class PhoneSettingWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color color;
  final Function onTap;

  const PhoneSettingWidget({
    Key key,
    @required this.icon,
    @required this.title,
    @required this.color,
    @required this.onTap,
  })  : assert(onTap != null, "Please Provide Ontap Function"),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: Icon(
        icon,
        color: color,
      ),
      title: Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
      ),
      trailing: Icon(
        Icons.arrow_forward_ios,
        color: Colors.grey,
      ),
    );
  }
}

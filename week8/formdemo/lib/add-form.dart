import 'package:flutter/material.dart';
import 'package:formdemo/widgets/app-custom-button.dart';
import 'package:formdemo/widgets/form-button.dart';
import 'package:formdemo/widgets/icon-label-button.dart';
import './widgets/app-text-fields.dart';

class AddForm extends StatefulWidget {
  @override
  _AddFormState createState() => _AddFormState();
}

class _AddFormState extends State<AddForm> {
  final nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            AppTextField(
              controller: nameController,
              label: "User Name ",
              hintText: "Enter Your Name",
              icon: Icons.person,
              prefix: null,
            ),
            AppTextField(
              controller: nameController,
              label: "User Mail ",
              hintText: "Enter Your Mail",
              icon: Icons.email,
              prefix: null,
              textInputType: TextInputType.emailAddress,
            ),
            AppTextField(
              controller: nameController,
              label: "User Phone",
              hintText: "Enter Your Phone",
              icon: Icons.phone,
              prefix: "+95 ",
              textInputType: TextInputType.phone,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                AppCustomButton(
                  height: 40,
                  color: Colors.teal,
                  textColor: Colors.white,
                  child: Text("Save"),
                  onPressed: () {},
                ),
                IconButtonLabel(
                  label: "Edit",
                  icon: Icons.edit,
                  onPressed: () {},
                ),
                FormButton(label: "Cancel", onPressed: () {})
              ],
            )
          ],
        ),
      ),
    );
  }
}

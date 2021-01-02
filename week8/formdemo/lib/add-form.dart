import 'package:flutter/material.dart';
import 'package:formdemo/model/contact-model.dart';
import 'package:formdemo/widgets/form-button.dart';
import './widgets/app-text-fields.dart';

class AddForm extends StatefulWidget {
  final AddContact addContact;
  AddForm({Key key, @required this.addContact}) : super(key: key);
  @override
  _AddFormState createState() => _AddFormState();
}

class _AddFormState extends State<AddForm> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final formState = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: formState,
          child: ListView(
            children: [
              AppTextField(
                validator: (value) {
                  if (value.length < 4 || value.isEmpty) {
                    return "Please Enter Real Name";
                  }
                  return null;
                },
                controller: nameController,
                label: "User Name ",
                hintText: "Enter Your Name",
                icon: Icons.person,
                prefix: null,
              ),
              AppTextField(
                validator: (value) {
                  if (!value.contains("@") || value.isEmpty) {
                    return "Please Enter Valid Mail";
                  }
                  return null;
                },
                controller: emailController,
                label: "User Mail ",
                hintText: "Enter Your Mail",
                icon: Icons.email,
                prefix: null,
                textInputType: TextInputType.emailAddress,
              ),
              AppTextField(
                validator: (value) {
                  if (value.length < 10 || value.isEmpty) {
                    return "Please Enter Valid Phone";
                  }
                  return null;
                },
                controller: phoneController,
                label: "User Phone",
                hintText: "Enter Your Phone",
                icon: Icons.phone,
                prefix: "+95 ",
                textInputType: TextInputType.phone,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FormButton(
                      label: "Cancel",
                      onPressed: () {
                        Navigator.of(context).pop();
                      }),
                  FormButton(label: "Save", onPressed: submit),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  void submit() {
    var username = nameController.text;
    var userEmail = emailController.text;
    var userPhone = phoneController.text;

    final newContact = ContactModel(
      userEmail: userEmail,
      userName: username,
      userPhone: userPhone,
    );

    if (formState.currentState.validate()) {
      widget.addContact(newContact);
      Navigator.of(context).pop();
    }
  }
}

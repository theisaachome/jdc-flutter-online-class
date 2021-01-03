import 'package:flutter/material.dart';
import 'package:formdemo/app-format.dart';
import 'package:formdemo/app-validation.dart';
import 'package:formdemo/model/contact-model.dart';
import 'package:formdemo/widgets/form-button.dart';
import './widgets/app-text-fields.dart';

class AddForm extends StatefulWidget {
  final AddContact addContact;
  AddForm({Key key, @required this.addContact}) : super(key: key);
  @override
  _AddFormState createState() => _AddFormState();
}

class _AddFormState extends State<AddForm> with AppValidation {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final formState = GlobalKey<FormState>();
  DateTime dob;

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
                validator: validateName,
                controller: nameController,
                label: "User Name ",
                hintText: "Enter Your Name",
                icon: Icons.person,
                prefix: null,
              ),
              AppTextField(
                validator: validateEmail,
                controller: emailController,
                label: "User Mail ",
                hintText: "Enter Your Mail",
                icon: Icons.email,
                prefix: null,
                textInputType: TextInputType.emailAddress,
              ),
              AppTextField(
                validator: validatePhone,
                controller: phoneController,
                label: "User Phone",
                hintText: "Enter Your Phone",
                icon: Icons.phone,
                prefix: "+95 ",
                textInputType: TextInputType.phone,
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                padding: EdgeInsets.only(top: 16, left: 8, bottom: 16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.grey)),
                child: Row(
                  children: [
                    InkWell(
                      child: Icon(
                        Icons.today,
                        color: Colors.grey,
                      ),
                      onTap: _pickDOB,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child:
                          Text(dob != null ? appDateForm(dob) : "Select DOB"),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FormButton(
                        label: "Cancel",
                        onPressed: () {
                          Navigator.of(context).pop();
                        }),
                    FormButton(label: "Save", onPressed: submit),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  _pickDOB() async {
    final pickedDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2100));
    setState(() {
      dob = pickedDate;
    });
  }

  void submit() {
    var username = nameController.text;
    var userEmail = emailController.text;
    var userPhone = phoneController.text;

    final newContact = ContactModel(
      userEmail: userEmail,
      userName: username,
      userPhone: userPhone,
      dob: dob,
    );

    if (formState.currentState.validate()) {
      widget.addContact(newContact);
      Navigator.of(context).pop();
    }
  }
}

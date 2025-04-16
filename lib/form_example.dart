import 'package:flutter/material.dart';

class FormExample extends StatefulWidget {
  const FormExample({super.key});

  @override
  State<FormExample> createState() => _FormExampleState();
}

class _FormExampleState extends State<FormExample> {
  final GlobalKey<FormState> _nameFormKey = GlobalKey();
  bool switchValue = false;
  bool checkBoxValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form Example"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Form(
          key: _nameFormKey,
          child: Column(
            children: [
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter Username";
                  } else if (value.length < 5) {
                    return "Too short username";
                  } else if (value.length > 10) {
                    return "Too Long username";
                  } else {
                    return null;
                  }
                },
                onSaved: (newValue) {
                  print(newValue!);
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                  hintText: "Enter Your Name",
                ),
              ),
              Switch(
                value: switchValue,
                onChanged: (value) {
                  setState(() {
                    switchValue = value;
                  });
                },
              ),
              Checkbox(
                value: checkBoxValue,
                onChanged: (value) {
                  setState(() {
                    checkBoxValue = value ?? false;
                  });
                },
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  if (_nameFormKey.currentState!.validate()) {
                    return;
                  }
                  _nameFormKey.currentState!.save();
                },
                child: Text("Submit"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

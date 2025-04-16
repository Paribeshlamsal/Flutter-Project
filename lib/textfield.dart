import 'package:flutter/material.dart';
//to convert into statefull we must need to click on the stateless widget and then click on refactor and then click on convert to stateful widget
//to update the value of count we use setState() method
class TextfieldExample extends StatefulWidget {
  TextfieldExample({super.key});

  @override
  State<TextfieldExample> createState() => _TextfieldExampleState();
}

class _TextfieldExampleState extends State<TextfieldExample> {
  final TextEditingController dummyTextController = TextEditingController(text: "Dummy Text");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('TextField Example')),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
        child: Column(
          children: [
            TextField(
              controller: dummyTextController,
              decoration: InputDecoration(
                labelText: 'Enter your text',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide(color: Colors.blue, width: 3.0),
                ),
                floatingLabelAlignment: FloatingLabelAlignment.start,
                prefixIcon: Icon(Icons.person),
                suffixIcon: Icon(Icons.check_circle),
                prefixIconColor: Colors.blue,
                suffixIconColor: Colors.green,
                counterText: "",
                // floatingLabelBehavior: FloatingLabelBehavior.never, [  mathi patti aauni floating label chai hatauxa after clicking the text field ]
              ),
              //  obscureText:true,
              //  obscuringCharacter: '*',
              keyboardType: TextInputType.multiline,
              //  cursorColor: Colors.red, [ mathi patti aauni cursor color change garna sakinchha ]
              // maxLength: 10,
              //maxlength garesi tala 10/10 vanne aauxa to hide it we use countertext: ''
              // maxLines: 4,
              // minLines: 1,
              //maxliines and min lines doesnot support obscure text
              onChanged: (value) {
            setState(() {
                dummyTextController.text = value;
              });
              },
              readOnly: true,
              onTap: (){},
            ),
            Text(dummyTextController.text, 
                style: TextStyle(
                  fontSize: 20,
                )),

          ],
        ),
      ),
    );
  }
}

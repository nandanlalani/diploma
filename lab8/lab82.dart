import 'package:flutter/material.dart';


class SurveyForm extends StatefulWidget {
  const SurveyForm({super.key});

  @override
  State<SurveyForm> createState() => _SurveyFormState();
}

class _SurveyFormState extends State<SurveyForm> {
  TextEditingController nameController = TextEditingController();

  String gender = "Male";
  bool likesFlutter = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Survey Form"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Enter Name",
              style: TextStyle(fontSize: 18),
            ),
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                hintText: "Enter your name",
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 20),

            Text(
              "Select Gender",
              style: TextStyle(fontSize: 18),
            ),

            RadioListTile(
              title: Text("Male"),
              value: "Male",
              groupValue: gender,
              onChanged: (value) {
                setState(() {
                  gender = value.toString();
                });
              },
            ),

            RadioListTile(
              title: Text("Female"),
              value: "Female",
              groupValue: gender,
              onChanged: (value) {
                setState(() {
                  gender = value.toString();
                });
              },
            ),

            CheckboxListTile(
              title: Text("Do you like Flutter?"),
              value: likesFlutter,
              onChanged: (value) {
                setState(() {
                  likesFlutter = value!;
                });
              },
            ),

            Center(
              child: ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        "Name: ${nameController.text}\n"
                            "Gender: $gender\n"
                            "Likes Flutter: ${likesFlutter ? "Yes" : "No"}",
                      ),
                    ),
                  );
                },
                child: Text("Submit"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
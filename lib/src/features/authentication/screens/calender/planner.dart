import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:scaffold_gradient_background/scaffold_gradient_background.dart';

class Planner extends StatefulWidget {
  const Planner({Key? key}) : super(key: key);

  @override
  State<Planner> createState() => _PlannerState();
}

class _PlannerState extends State<Planner> {
  TextEditingController noteController = TextEditingController();
  User? userId = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: ScaffoldGradientBackground(
          gradient: LinearGradient(colors: [
            Color(0xFF8EC5FC),
            Color(0xFFE0C3FC),
          ]),
      appBar: AppBar(
        title: Text("Note Down Your Daily Tasks,"),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: [
            Container(
              child: TextFormField(
                controller: noteController,
                maxLines: null,
                decoration: InputDecoration(hintText: "Add Here!"),
              ),
            ),
            ElevatedButton(
                onPressed: () async {
                  await FirebaseFirestore.instance.collection("notes").add({
                    "note": noteController.text,
                    "createdAt": DateTime.now(),
                    //not required but trying
                    // "userId":userId?.uid,
                  }).then((value) => print("note added"));
                },
                child: Text("ADD"))
          ],
        ),
      ),
    ));
  }
}

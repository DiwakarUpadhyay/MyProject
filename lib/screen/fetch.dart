import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class FetchData extends StatefulWidget {
  const FetchData({super.key});

  @override
  State<FetchData> createState() => _FetchDataState();
}

class _FetchDataState extends State<FetchData> {
  final firebaseDB = FirebaseFirestore.instance.collection("user").snapshots();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("fetch data"),
        centerTitle: true,
      ),
      body:StreamBuilder(
        stream: firebaseDB,
        builder: (context , snapshot){
          if(!snapshot.hasData) return CircularProgressIndicator();
          return ListView.builder(
            itemCount: snapshot.data!.docs.length,
              itemBuilder:(context , index) {
                return ListTile(
                  leading: Text(snapshot.data!.docs[index]['Dob']),
                );
              });
        },
      ),
    );
  }
}

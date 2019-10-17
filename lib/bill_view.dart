import 'package:bill_md_mobile/add_bill_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:bill_md_mobile/constants.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'commonComponents/customCard.dart';



class BillView extends StatefulWidget {
  @override
  State createState() => _BillViewState();
}

class _BillViewState extends State<BillView> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("These are your bills"),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: StreamBuilder<QuerySnapshot>(
            stream: Firestore.instance.collection('useraccounts')
              .snapshots(),
            builder: (BuildContext context,
              AsyncSnapshot<QuerySnapshot> snapshot) {
                if (snapshot.hasError)
                  return new Text('Error: ${snapshot.error}');
                switch (snapshot.connectionState) {
                  case ConnectionState.waiting:
                    return new Text('Loading...');
                  default:
                    return new ListView(
                      children: snapshot.data.documents
                        .map((DocumentSnapshot document) {
                          return new CustomCard(
                            title: document['title'],
                            description: document['description'],
                          );
                      }).toList(),
                    );
                }
              },
            )),
          ),
    );
  }
}

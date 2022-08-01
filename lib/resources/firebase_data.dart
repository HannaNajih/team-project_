import 'package:cloud_firestore/cloud_firestore.dart';

final FirebaseFirestore _firestore = FirebaseFirestore.instance;

// methode to add name and message
Future<DocumentReference> AddData(
    {required String name, required String message}) async {
  DocumentReference _doc = await _firestore.collection('User').add({
    "name": "$name",
    "message": "$message",
  });
  return _doc;
}

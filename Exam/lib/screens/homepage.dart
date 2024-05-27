import 'package:finalexam/widgets/btn.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod/riverpod.dart';

class Item {
  final String id;
  final String name;

  Item({required this.id, required this.name});

  factory Item.fromDocument(DocumentSnapshot doc) {
    return Item(
      id: doc.id,
      name: doc['name'] as String,
    );
  }
}

// 2. Create a provider for Firestore access
final firestoreProvider = Provider((ref) => FirebaseFirestore.instance);

// 3. Create a provider for the item list
final itemListProvider = StreamProvider<List<Item>>((ref) {
  final firestore = ref.watch(firestoreProvider);
  final collection = 'Categories'; // Replace with your collection name

  return firestore.collection(collection)
      .snapshots()
      .map((snapshot) => snapshot.docs.map(Item.fromDocument).toList());
});



class MyHomePage extends ConsumerWidget {

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final items = ref.watch(itemListProvider);
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.only(
          top: 50.0,
          left: 16.0,
          right: 16.0,
          bottom: 16.0,
        ),
        children: [
          const TextField(
            decoration: InputDecoration(
              hintText: 'Search shoes...',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(50.0),
                  right: Radius.circular(50.0),
                ),
                borderSide: BorderSide(
                  color: Colors.grey,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(50.0),
                  right: Radius.circular(50.0),
                ),
                borderSide: BorderSide(
                  color: Colors.grey,
                ),
              ),
              fillColor: Colors.grey,
              prefixIcon: Icon(Icons.search, color: Colors.grey),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 35,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Btn(title: "Processing"),
                SizedBox(
                  width: 10,
                ),
                Btn(title: "Shiped"),
                SizedBox(
                  width: 10,
                ),
                Btn(title: "Late"),
                SizedBox(
                  width: 10,
                ),
                Btn(title: "Returns"),
                SizedBox(
                  width: 10,
                ),
                Btn(title: "Cancel"),
              ],
            ),
          ),
          const SizedBox(height: 16),
          InkWell(
              onTap: () {},
              child: ListTile(title: Text("test"), subtitle: Text('tsfs'))),
        ],
      ),
    );
  }
}

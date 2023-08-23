import 'package:flutter/material.dart';
import 'package:redesign/views/add_branches.dart';

class BranchesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFF3A5A),
        title: Text('BRANCHES'),
        centerTitle: true,
      ),
      body: Container(
        color: const Color.fromARGB(
            255, 235, 204, 195), // Set a light-colored background
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                children: [
                  _BranchButton(name: '4-1 IT'),
                  _BranchButton(name: '4-1 DS'),
                  _BranchButton(name: '3-1 IT'),
                  _BranchButton(name: '3-1 DS(A)'),
                  _BranchButton(name: '3-1 DS(B)'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () {
                 
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AddBranchPage(),
                      ),
                    );
                },
                child: Text('Update'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFFF3A5A),
                  textStyle: TextStyle(fontSize: 20, color: Colors.white),
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _BranchButton extends StatelessWidget {
  final String name;

  const _BranchButton({required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: ElevatedButton(
        onPressed: () {
          // Add action for branch button
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.business),
                SizedBox(width: 10),
                Text(name),
              ],
            ),
            IconButton(
              onPressed: () {
                // Add action for delete
              },
              icon: Icon(Icons.delete),
            ),
          ],
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFFFF3A5A),
          textStyle: TextStyle(fontSize: 20, color: Colors.white),
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30), // Add rounded border
          ),
        ),
      ),
    );
  }
}

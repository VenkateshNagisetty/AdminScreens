import 'package:flutter/material.dart';

class AddBranchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFF3A5A),
        title: Text('Add New Branch'),
        centerTitle: true,
      ),
      body: Container(
        color: Color.fromARGB(255, 235, 204, 195), // Light background color
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    children: [
                      SizedBox(height: 20),
                      _buildDropdown('Regulation', ['20KP', '21KP', '22KP']),
                      SizedBox(height: 20),
                      _buildDropdown('Branch', [
                        '4-1 IT',
                        '4-1 DS',
                        '3-1 IT',
                        '3-1 DS',
                        '2-1 IT',
                        '2-1 DS',
                      ]),
                      SizedBox(height: 20),
                      _buildDropdown('Section', ['Section(A)', 'Section(B)']),
                      SizedBox(height: 30),
                      ElevatedButton(
                        onPressed: () {
                          // Add action for the "Add Branch" button
                        },
                        child: Text('Add Branch'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFFF3A5A),
                          textStyle:
                              TextStyle(fontSize: 20, color: Colors.white),
                          padding: EdgeInsets.symmetric(
                              horizontal: 40, vertical: 15),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDropdown(String label, List<String> items) {
    return DropdownButtonFormField<String>(
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(),
      ),
      items: items.map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      onChanged: (String? newValue) {
        // Handle dropdown value changes
      },
    );
  }
}

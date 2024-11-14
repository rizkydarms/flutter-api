import 'package:flutter/material.dart';

class MutationView extends StatelessWidget {
  const MutationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Date filter (Static example, no functionality)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              children: [
                Text(
                  'From: ',
                  style: TextStyle(color: Colors.blueAccent),
                ),
                const Text(' to '),
                Text(
                  'To: ',
                  style: TextStyle(color: Colors.blueAccent),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          // Transaction list (Empty view for now)
          Expanded(
            child: ListView.builder(
              itemCount: 5, // Example static count
              itemBuilder: (context, index) {
                return Card(
                  margin: const EdgeInsets.only(bottom: 8),
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: ListTile(
                    title: Text('Transaction ID: XXXX'),
                    subtitle: Text('Amount: Rp. 500.000'),
                    trailing: Text('Date: 2023-11-12'),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

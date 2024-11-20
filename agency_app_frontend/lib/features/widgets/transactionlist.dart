import 'package:flutter/material.dart';

class TransactionList extends StatelessWidget {
  const TransactionList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Today, Nov 20", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                Row(
                  children: [
                    Text("All Transactions",style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                  ],
                ),
              ],
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: const Color.fromARGB(255, 239, 243, 245),
              child: Icon(Icons.fitness_center, color: Colors.red),
            ),
            title: Text("Gym",style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
            subtitle: Text("Payment",),
            trailing: Text("-Ghc45.00", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
            ),
          ),
          Divider(color: Colors.grey[200],),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: const Color.fromARGB(255, 239, 243, 245),
              child: Icon(Icons.account_balance, color: Colors.red,),
            ),
            title: Text("Bank of Ghana",style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
            subtitle: Text("Deposit",),
            trailing: Text("Ghc4500", style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
            ),
          ),
          Divider(color: Colors.grey[200],),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: const Color.fromARGB(255, 239, 243, 245),
              child: Icon(Icons.send, color: Colors.red),
            ),
            title: Text("To Priscilla",style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
            subtitle: Text("Sent"),
            trailing: Text("-Ghc 1,500,000", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}

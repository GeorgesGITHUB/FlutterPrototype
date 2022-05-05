import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, //solves a flutter glitch
        items: [
          const BottomNavigationBarItem(icon: Icon(Icons.speed_outlined), label: ''),
          const BottomNavigationBarItem(icon: Icon(Icons.check_box_outline_blank_outlined), label: ''),
          const BottomNavigationBarItem(icon: Icon(Icons.circle_sharp), label: ''),
          const BottomNavigationBarItem(icon: Icon(Icons.calendar_month_outlined), label: ''),
          const BottomNavigationBarItem(icon: Icon(Icons.settings), label: ''),        
        ],
      ),
      body: Container(
        //color: Colors.red,
        margin: EdgeInsets.only(top: 45, left: 20, right: 20),

        child: ListView(
          clipBehavior: Clip.none,
          children: [
            const AccountSection(),
            const ManagementSection(),
            const PropertyMSection(),
            const VidyProsSection(),
          ],
        ),
      ) 
    );
  }
}

class AccountSection extends StatelessWidget {
  const AccountSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          const BoxShadow(
            color: Colors.grey,
            blurRadius: 3,
            offset: Offset(3, 3)
          )
        ]
      ),
      padding: EdgeInsets.all(10),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Text(
            'Account',
            style: TextStyle(
              fontWeight: FontWeight.bold
            )
          ),
          SizedBox(height: 10),
          Row(
            children: [
              const Icon(Icons.account_circle_outlined),
              const SizedBox(width: 10),
              const Text('Profile')
            ]
          ),
          SizedBox(height: 10),
          Row(
            children: [
              const Icon(Icons.payment),
              const SizedBox(width: 10),
              const Text('Payment Methods')
            ]
          ),
          SizedBox(height: 10),
          Row(
            children: [
              const Icon(Icons.logout),
              const SizedBox(width: 10),
              const Text('Log Out')
            ]
          )
        ],
      ),
    );
  }
}
// **********
//Delete below
// **********

class ManagementSection extends StatelessWidget {
  const ManagementSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 3,
            offset: Offset(3, 3)
          )
        ]
      ),
      padding: EdgeInsets.all(10),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          const Text(
            'Management',
            style: TextStyle(
              fontWeight: FontWeight.bold
            )
          ),
          SizedBox(height: 10),
          Row(
            children: [
              const Icon(Icons.assignment_ind_outlined),
              const SizedBox(width: 10),
              const Text('My Contacts List')
            ]
          ),
          SizedBox(height: 10),
          Row(
            children: [
              const Icon(Icons.favorite_border),
              const SizedBox(width: 10),
              const Text('My Favorites')
            ]
          ),
        ],
      ),
    );
  }
}

class PropertyMSection extends StatelessWidget {
  const PropertyMSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 3,
            offset: Offset(3, 3)
          )
        ]
      ),
      padding: EdgeInsets.all(10),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          const Text(
            'Property Management',
            style: TextStyle(
              fontWeight: FontWeight.bold
            )
          ),
          SizedBox(height: 10),
          Row(
            children: [
              const Icon(Icons.corporate_fare),
              const SizedBox(width: 10),
              const Text('My Building List')
            ]
          ),
        ],
      ),
    );
  }
}

class VidyProsSection extends StatelessWidget {
  const VidyProsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 3,
            offset: Offset(3, 3)
          )
        ]
      ),
      padding: EdgeInsets.all(10),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          const Text(
            'Vidy Pros',
            style: TextStyle(
              fontWeight: FontWeight.bold
            )
          ),
          SizedBox(height: 10),
          Row(
            children: [
              const Icon(Icons.sticky_note_2_outlined),
              const SizedBox(width: 10),
              const Text('What is New')
            ]
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              const Icon(Icons.info_outline),
              const SizedBox(width: 10),
              const Text('About Us')
            ]
          ),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import './constants.dart' as Constants;

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed, //solves a flutter glitch
          items: [
            const BottomNavigationBarItem(
                icon: Icon(Icons.speed_outlined), label: ''),
            const BottomNavigationBarItem(
                icon: Icon(Icons.check_box_outline_blank_outlined), label: ''),
            const BottomNavigationBarItem(
                icon: Icon(Icons.circle_sharp), label: ''),
            const BottomNavigationBarItem(
                icon: Icon(Icons.calendar_month_outlined), label: ''),
            const BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: ''),
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
        ));
  }
}

class AccountSection extends StatelessWidget {
  const AccountSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: Constants.BTNBOX_DECORATION,
      padding: Constants.BTNBOX_PADDING,
      margin: Constants.BTNBOX_MARGIN,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Account', style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(height: Constants.SPACING),
          IconTextRow(Icons.account_circle_outlined, 'Profile'),
          SizedBox(height: Constants.SPACING),
          IconTextRow(Icons.payment, 'Payment Methods'),
          SizedBox(height: Constants.SPACING),
          IconTextRow(Icons.logout, 'Log Out'),
        ],
      ),
    );
  }
}

class ManagementSection extends StatelessWidget {
  const ManagementSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: Constants.BTNBOX_DECORATION,
      padding: Constants.BTNBOX_PADDING,
      margin: Constants.BTNBOX_MARGIN,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Management', style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(height: Constants.SPACING),
          IconTextRow(Icons.assignment_ind_outlined, 'My Contacts List'),
          SizedBox(height: Constants.SPACING),
          IconTextRow(Icons.favorite_border, 'My Favorites'),
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
      decoration: Constants.BTNBOX_DECORATION,
      padding: Constants.BTNBOX_PADDING,
      margin: Constants.BTNBOX_MARGIN,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Property Management', style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(height: Constants.SPACING),
          IconTextRow(Icons.corporate_fare, 'My Building List'),
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
      decoration: Constants.BTNBOX_DECORATION,
      padding: Constants.BTNBOX_PADDING,
      margin: Constants.BTNBOX_MARGIN,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Vidy Pros', style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(height: Constants.SPACING),
          IconTextRow(Icons.sticky_note_2_outlined, 'What is New'),
          SizedBox(height: Constants.SPACING),
          IconTextRow(Icons.info_outline, 'About Us'),
        ],
      ),
    );
  }
}

class IconTextRow extends StatelessWidget {
  //Override
  IconData icon = Icons.abc; double space = 0; String text = '';

  //IconData takes a constant from Icons class
  IconTextRow(IconData icon, String text) {
    this.icon = icon; this.text = text;
  }

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Icon(icon),
      const SizedBox(width: Constants.SPACING),
      Text('${text}')
    ]);
  }
}
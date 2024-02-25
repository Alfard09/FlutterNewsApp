import 'package:flutter/material.dart';
import 'package:flutter_serverless_news/components/custom_appbar.dart';

// Import the custom bottom navigation bar widget

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key});

  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
        child: Container(
          height: 500,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 242, 237, 237),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(255, 212, 209, 209).withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes the direction of the shadow
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _buildAvatarWithText('Latest'),
                    _buildAvatarWithText('Item 2'),
                    _buildAvatarWithText('Item 3'),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _buildAvatarWithText('Item 4'),
                    _buildAvatarWithText('Item 5'),
                    _buildAvatarWithText('Item 6'),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _buildAvatarWithText('Item 4'),
                    _buildAvatarWithText('Item 5'),
                    _buildAvatarWithText('Item 6'),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildAvatarWithText(String text) {
    return Column(
      children: [
        Container(
          height: 70,
          width: 70,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Icon(
            Icons.person,
            size: 40,
          ),
        ),
        SizedBox(height: 10.0),
        Text(text),
      ],
    );
  }
}
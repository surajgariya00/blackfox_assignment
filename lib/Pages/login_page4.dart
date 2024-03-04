import 'package:blackfox_assignment/Pages/login_page5.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage4 extends StatefulWidget {
  const LoginPage4({super.key});

  @override
  LoginPage4State createState() => LoginPage4State();
}

class LoginPage4State extends State<LoginPage4> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildImageContainer(context),
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      leading: IconButton(
        icon: const Icon(
          Icons.filter_list_outlined,
          color: Colors.blue,
        ),
        onPressed: () {},
      ),
      title: Center(
        child: Image.asset(
          'assets/lgoo.png',
          width: 60,
          color: Colors.black,
        ),
      ),
      actions: [
        _buildNotificationIcon(),
      ],
    );
  }

  Widget _buildNotificationIcon() {
    return Container(
      width: 50,
      height: 30,
      margin: const EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
        border: Border.all(color: const Color.fromARGB(255, 74, 150, 255)),
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: const Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.alt_route_outlined,
            color: Colors.blue,
          ),
          Text('40', style: TextStyle(fontSize: 10, color: Colors.blue)),
        ],
      ),
    );
  }

  Widget _buildImageContainer(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const LoginPage5()));
      },
      child: Container(
        width: 700.0,
        height: 650.0,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage('assets/model.png'),
          ),
        ),
      ),
    );
  }

  BottomNavigationBar _buildBottomNavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: _currentIndex,
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
      },
      items: [
        const BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.home),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Container(
            width: 100.0,
            height: 40.0,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 162, 161, 161),
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: const Center(
              child: Text(
                'Search',
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ),
          ),
          label: '',
        ),
        const BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.person),
          label: '',
        ),
      ],
    );
  }
}

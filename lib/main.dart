import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false, //우측상단 DEBUG없애기
      title: 'Koobori',
      home: Grade(),
    );
  }
}

class Grade extends StatelessWidget {
  const Grade({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        title: const Text("Koobori"),
        backgroundColor: Colors.blue[300],
        centerTitle: true,
        elevation: 0.0,

        actions: [
          IconButton( //왼쪽 상단에 메뉴 버튼 생김
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
              print('Shopping cart button is clicked');
            },
          ),
          IconButton( //왼쪽 상단에 메뉴 버튼 생김
            icon: const Icon(Icons.search),
            onPressed: () {
              print('Search button is clicked');
            },
          ),
        ],
      ),
        drawer: Drawer(//메뉴바가 생김
          child: ListView( //what is it ?
            padding: EdgeInsets.zero,
            children: [
              UserAccountsDrawerHeader(
                currentAccountPicture: const CircleAvatar(//현재사용자의 이미지
                  backgroundImage: AssetImage('assets/bori.png'),
                  backgroundColor: Colors.white,
                ),
                accountName: const Text('Koobori'),
                accountEmail: const Text('koobori@gmail.com'),
                onDetailsPressed: (){ //메일옆 화살표
                  print('arrow is clicked');
                },
                decoration: BoxDecoration( //이쁘게 꾸밈
                  color: Colors.blue[300],
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(40.0),
                    bottomRight: Radius.circular(40.0),
                  )
                ),
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(30.0, 40.0, 0.0, 0.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Center(//image 중앙
                  child: CircleAvatar( //위젯
                    backgroundImage: AssetImage('assets/koobori.jpeg'),
                    radius: 60.0,
                  ),
                ),
              Divider(
                height: 60.0, // divider의 위와 아래 사이가 합쳐서 60.0 , 위30,아래30 뜻
                color: Colors.grey[850],
                thickness: 0.5,//선의 두께 설정
                endIndent: 30.0,//디바이더 선이 끝에서 어느정도 떨어져야 하는지 속성
              ),
              const Text('NAME',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0//글자간의 간격
              ),
              ),
              const SizedBox( //간격
                height: 10.0,
              ),
              const Text('Bori',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold
              ),
              ),
                const SizedBox(
                  height: 30.0,
                ),
                const Text('Bori POWER LEVEL',
                  style: TextStyle(
                      color: Colors.white,
                      letterSpacing: 2.0//글자간의 간격
                  ),
                ),
                const SizedBox( //간격
                  height: 10.0,
                ),
                const Text('11',
                  style: TextStyle(
                      color: Colors.white,
                      letterSpacing: 2.0,
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                Row(
                  children: const [
                    Icon(Icons.check_circle_outline),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text('using lightsaber',
                    style: TextStyle(
                      fontSize: 16.0,
                      letterSpacing: 1.0
                    ),
                  ),
                  ],
                ),
                Row(
                  children: const [
                    Icon(Icons.check_circle_outline),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text('face hero bori',
                      style: TextStyle(
                          fontSize: 16.0,
                          letterSpacing: 1.0
                      ),
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Icon(Icons.check_circle_outline),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text('fire flames',
                      style: TextStyle(
                          fontSize: 16.0,
                          letterSpacing: 1.0
                      ),
                    ),
                  ],
                ),
                Center(
                  child: CircleAvatar(
                    backgroundImage: const AssetImage('assets/bori.png'),
                    radius: 40.0,
                    backgroundColor: Colors.blue[200],
                  ),
                )
            ],
          ),
        ),
    );
  }
}

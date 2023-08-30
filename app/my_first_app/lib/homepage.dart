import 'package:flutter/material.dart';
import 'package:my_first_app/descriptionpage.dart';
import 'package:my_first_app/main.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color backgroundColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  if (backgroundColor == Colors.white)
                    backgroundColor = Colors.redAccent;
                  else
                    backgroundColor = Colors.white;
                });
              },
              icon: Icon(Icons.color_lens))
        ],
      ),
      drawer: SafeArea(
        child: Drawer(
          child: Column(children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.redAccent),
              child: ListTile(
                title: Text(
                  'Flutter Mapp',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
            ListTile(
              onTap: () {},
              leading: const Icon(Icons.settings),
              title: const Text(
                'Setting',
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) {
                    return const LoginPage();
                  }),
                );
              },
              leading: const Icon(Icons.logout),
              title: const Text(
                'Logout',
              ),
            ),
          ]),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
            child: Wrap(spacing: 10, children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                  shape: const StadiumBorder(),
                ),
                onPressed: () {},
                child: const Text('Money'),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                  shape: const StadiumBorder(),
                ),
                onPressed: () {},
                child: const Text('Bitcoin'),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                  shape: const StadiumBorder(),
                ),
                onPressed: () {},
                child: const Text('Stock Market'),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                  shape: const StadiumBorder(),
                ),
                onPressed: () {},
                child: const Text('House Market'),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                  shape: const StadiumBorder(),
                ),
                onPressed: () {},
                child: const Text('Diamond Hands'),
              ),
            ]),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return const DescriptionPage(
                      title: 'How to not to get bullied',
                      imagePath: 'images/welcome.gif',
                    );
                  },
                ),
              );
            },
            child: Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(
                horizontal: 10.0,
                vertical: 5.0,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    spreadRadius: 2,
                    blurRadius: 2,
                    offset: Offset(2, 2),
                  )
                ],
              ),
              child: Column(
                children: [
                  Image.asset('images/welcome.gif'),
                  const ListTile(
                    title: Text('How to not to get bullied'),
                    trailing: Icon(Icons.arrow_forward_ios_outlined),
                  )
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) {
                  return const DescriptionPage(
                    title: 'How to get rich',
                    imagePath: 'images/image2.png',
                  );
                }),
              );
            },
            child: Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(
                horizontal: 10.0,
                vertical: 5.0,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    spreadRadius: 2,
                    blurRadius: 2,
                    offset: Offset(2, 2),
                  )
                ],
              ),
              child: Column(
                children: [
                  Image.asset('images/image2.png'),
                  const ListTile(
                    title: Text('How to get rich'),
                    trailing: Icon(Icons.arrow_forward_ios_outlined),
                  )
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) {
                  return const DescriptionPage(
                    title: 'How to be happy',
                    imagePath: 'images/image3.png',
                  );
                }),
              );
            },
            child: Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(
                horizontal: 10.0,
                vertical: 5.0,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    spreadRadius: 2,
                    blurRadius: 2,
                    offset: Offset(2, 2),
                  )
                ],
              ),
              child: Column(
                children: [
                  Image.asset('images/image3.png'),
                  const ListTile(
                    title: Text('How to be happy'),
                    trailing: Icon(Icons.arrow_forward_ios_outlined),
                  )
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) {
                  return const DescriptionPage(
                    title: 'How to get study',
                    imagePath: 'images/image4.png',
                  );
                }),
              );
            },
            child: Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(
                horizontal: 10.0,
                vertical: 5.0,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    spreadRadius: 2,
                    blurRadius: 2,
                    offset: Offset(2, 2),
                  )
                ],
              ),
              child: Column(
                children: [
                  Image.asset('images/image4.png'),
                  const ListTile(
                    title: Text('How to get study'),
                    trailing: Icon(Icons.arrow_forward_ios_outlined),
                  )
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}

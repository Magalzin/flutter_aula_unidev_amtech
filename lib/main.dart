import 'package:flutter/material.dart';
import 'package:flutter_aula/task.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Piroca pequena',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            "Primeiro aplicativo TO DO LIST",
            style: TextStyle(color: Colors.white, fontSize: 23),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Task(
                nomeDaTarefa: 'Tomar banho',
                url:
                    'https://www.petlove.com.br/images/breeds/197837/profile/original/shiba-p.jpg?1532540015',
              ),
              Task(
                nomeDaTarefa: 'Tomar banho',
                url:
                    'https://www.petlove.com.br/images/breeds/197837/profile/original/shiba-p.jpg?1532540015',
              ),
              Task(
                nomeDaTarefa: 'Tomar banho',
                url:
                    'https://www.petlove.com.br/images/breeds/197837/profile/original/shiba-p.jpg?1532540015',
              ),
              Task(
                nomeDaTarefa: 'Tomar banho',
                url:
                    'https://www.petlove.com.br/images/breeds/197837/profile/original/shiba-p.jpg?1532540015',
              ),
              Task(
                nomeDaTarefa: 'Tomar banho',
                url:
                    'https://www.petlove.com.br/images/breeds/197837/profile/original/shiba-p.jpg?1532540015',
              ),
              Task(
                nomeDaTarefa: 'Tomar banho',
                url:
                    'https://www.petlove.com.br/images/breeds/197837/profile/original/shiba-p.jpg?1532540015',
              ),
              Task(
                nomeDaTarefa: 'Tomar banho',
                url:
                    'https://www.petlove.com.br/images/breeds/197837/profile/original/shiba-p.jpg?1532540015',
              ),
              Task(
                nomeDaTarefa: 'Tomar banho',
                url:
                    'https://www.petlove.com.br/images/breeds/197837/profile/original/shiba-p.jpg?1532540015',
              ),
              Task(
                nomeDaTarefa: 'Tomar banho',
                url:
                    'https://www.petlove.com.br/images/breeds/197837/profile/original/shiba-p.jpg?1532540015',
              ),
            ],
          ),
        ));
  }
}
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),
      ),
      home: const MyHomePage(),
    );
  }
}

// stful 로 만든 class 두개
// 기본적으로 하기 코드가 있어야 실행 됨
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() =>
      _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // 변수
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('홈')),
      body: Center(
        child: Column(
          children: [
            Text(
              '$count', // flutter 에서는 작은 따옴표에 '${변수명}' 으로 표시
              style: TextStyle(
                color: Colors.red,
                fontSize: 70,
              ),
            ),
          ],
        ), // option + enter 키로 wrapping 가능
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // 화면 갱신 - setState() 를 해줘야 화면에 다시 그려준다.
          setState(() {
            count++;
          });
        },   // onPressed 중괄호 내에 함수 입력
        child: Icon(Icons.add),
      ),
    );
  }
}

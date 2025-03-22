import 'package:flutter/material.dart';

// stful 로 만든 class 두개
// 기본적으로 하기 코드가 있어야 실행 됨
class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() =>
      _MainPageState();
}

class _MainPageState extends State<MainPage> {
  // 변수
  int number = 0;    // shift + f6 > 변수명 rename

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('홈')),
      body: Center(
        child: Column(
          // child : column () >> 위, 아래  // child : Row () >> 양 옆
          mainAxisAlignment:
          MainAxisAlignment
              .center, // 가운데 정렬해 주는 코드
          children: [
            Text(
              '숫자',
              // flutter 에서는 작은 따옴표에 '${변수명}' 으로 표시
              style: TextStyle(
                color: Colors.black,
                fontSize: 40,
              ),
            ),
            Text(
              '$number',
              // flutter 에서는 작은 따옴표에 '${변수명}' 으로 표시
              style: TextStyle(
                color: Colors.red,
                fontSize: 70,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                print('ElevatedButton');
              },
              child: Text('ElevatedButton'),
            ),
            TextButton(
              onPressed: () {
               print('TextButton');
              },
              child: Text('TextButton'),
            ),
            OutlinedButton(
              onPressed: () {
                print('Outlined Button');
              },
              child: Text('Outlined Button'),
            ),
          ],
        ), // option + enter 키로 wrapping 가능
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // 화면 갱신 - setState() 를 해줘야 화면에 다시 그려준다.
          setState(() {
            number++;
          });
        }, // onPressed 중괄호 내에 함수 입력
        child: Icon(Icons.add),
      ),
    );
  }
}

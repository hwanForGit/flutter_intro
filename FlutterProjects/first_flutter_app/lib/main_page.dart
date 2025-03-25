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
  int number =
      10; // shift + f6 > 변수명, 파일명 등 rename

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('카운터')),
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
            TextField(
              // text input widget
              decoration: InputDecoration(
                labelText: '글자',
                border: OutlineInputBorder(),
              ),
              onChanged: (text) {
                // 내용 변경할 때의 이벤트 처리 함수
                print(text);
              },
            ),
            Image.network(  // image widget
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7LpapIl8DITfz4_Y2z7pqs7FknPkjReAZCg&s',
              width: 100,
              height: 100,
              fit: BoxFit.cover // 가로 세로 채우는 느낌, fit : 이미지의 형태를 보여줌
            ),
            Image.asset('assets/pic.jpg',
              width: 100,
              height: 100,
              fit: BoxFit.cover
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

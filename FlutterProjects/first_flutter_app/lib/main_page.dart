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
  // 변수, 인스턴스, 오브젝트, 상수
    // 변수 : 언제든지 변경 가능한 값
    // 상수 : 더 이상 변경이 안되는 값
    // 인스턴스 : 화면이 등장했을 때, 화면 상에 등장한 위젯들(메모리 상에)
    // 오브젝트 : 객체
  int number = 10; // shift + f6 > 변수명, 파일명 등 rename
  String _text = '';  // 버튼 눌렀을 때 text 전달하는 함수용 변수
  final TextEditingController _textController = new TextEditingController();  // 버튼 눌렀을 때 text 전달하는 text controller
                                                    // 다 사용 후, 정리가 필요함(메모리)
  @override
  void dispose() {  // 화면이 닫힐 때 발생되는 이벤트
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('카운터')),
      body: Center(
        child: SingleChildScrollView(
          // child를 wrap with widget으로 하고 해당 body 전체를 SingleChildScrollView로 감쌈
          child: Column(
            // child : column () >> 위, 아래  // child : Row () >> 양 옆
            mainAxisAlignment:
                MainAxisAlignment
                    .center, // 가운데 정렬해 주는 코드
            children: [
              Container(
                color: Colors.red,
                width: 100,
                height: 100,
              ),
              SizedBox(
                // Size만 지니고 있어, 빈 공간을 만들 때 사용하는 widget // 단순 사이즈 변형은 컨테이너보다 낫다.
                // 색을 지닐 수 없음
                height: 30,
              ),
              Container(height: 30),
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
              Row(
                children: [
                  Expanded(
                    flex: 3,  // Expended 사용 시, 더 넓게 주고 싶은 영역이 있을 때
                    child: TextField(  // 화면의 한 row을 전체 차지하는 widget이기 때문에, 다른 양 옆에 다른 아이템을 두고 싶으면 사이즈를 지정하는게 좋음
                      // text input widget
                      controller: _textController,  // 선언한 Text Controller를 활용
                      decoration: InputDecoration(
                        labelText: '글자',
                        border:
                            OutlineInputBorder(),
                      ),
                      onChanged: (text) {
                        // 내용 변경할 때의 이벤트 처리 함수
                        //print(text);
                        _text = text;
                      },
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: ElevatedButton(
                      onPressed: () {
                        print(_textController.text);
                        //  화면 갱신
                        setState(() {

                        });
                      },
                      child: Text('login'),
                    ),
                  ),
                ],
              ),
              Text(_textController.text),
              Image.network(
                // image widget
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7LpapIl8DITfz4_Y2z7pqs7FknPkjReAZCg&s',
                width: 100,
                height: 100,
                fit:
                    BoxFit
                        .cover, // 가로 세로 채우는 느낌, fit : 이미지의 형태를 보여줌
              ),
              Container(
                color: Colors.red,
                child: Padding(
                  padding: const EdgeInsets.all(
                    8.0,
                  ),
                  child: Image.asset(
                    'assets/pic.jpg',
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
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

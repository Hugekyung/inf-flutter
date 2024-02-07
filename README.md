# test_project

## Widget
- 위젯은 모두 불변의 법칙을 갖고 있다.
- 위젯의 값을 변경하게 되는 일은 매우 흔한데, 이 때 위젯이 수정되는 것이 아니라 기존 위젯은 버려지고 아예 새로운 위젯이 생성되는 것이다.
- 즉, 아무리 위젯의 값이 변경되더라도 해당 위젯은 처음 생성된 그 상태 그대로 불변의 상태인 것이다.

## StatelessWidget
- 워딩 그대로 상태가 없는 위젯이다.
- 데이터가 변경되지 않으므로 리소스를 적게 사용하며, 성능이 좋다.
- 정적인 데이터를 표시할 때 사용한다.
- StatelessWidget의 라이프사이클
  - Constructor로 생성되며 생성 되자마자 build 함수가 실행된다.
  - 한번 build 되면 어떤 입력에 의해 값이 변경되지 않는다. Widget과 같이 값 변경이 필요할 경우 새로운 위젯을 만든다.
  - 하나의 StatelessWidget은 라이프 사이클 동안 단 한번만 build 함수를 실행한다.
  - 즉, 한번 생성되면 기존 위젯을 폐기하고 새로운 위젯을 생성하기 전까지 어떠한 변화도 일어나지 않는다.

## StatefulWidget
  
## 유용한 단축키
- `stless`를 입력하면 StateLessWidget의 클래스 기본 포맷을 생성해준다.

## asset 저장하기
- Flutter 프로젝트에서 assets을 사용하려면 pubspec.yaml 파일의 `flutter:` 아래에 사용할 파일 경로를 작성해야 한다.
- 작성 후, 반드시 오른쪽 상단에 있는 `Pub get` 이라는 동작을 해줘야 Flutter 프로젝트에 등록이 된다.

## Expanded / Flexible
- 두 위젯은 반드시 Row 혹은 Column 내부에서만 사용할 수 있다.
- 두 위젯 모두 하위에 flex라는 값으로 비율을 지정해 줄 수 있다.
- Expanded: 나머지 남는 주축을 채워준다.
- Flexible: 주축의 사용 비율을 유동적으로 할당해준다. 

## 유용한 개발 팁
- setJavaScriptMode() 함수: JavaScript를 활성화할 것인지 세팅하는 함수
  - 안드로이드에서는 기본적으로 JavaScript가 활성화되어 있지 않기 때문에 위 함수를 통해 활성화해야 한다.
      ```flutter
        WebViewController()..setJavaScriptMode(JavaScriptMode.unrestricted)
      ```
- 온점 두 개의 의미: 일반적으로 온점 하나를 통해 하위 depth로 이동할 수 있다. 하지만 온점 두 개는 온점 한 개일 떄와 반대로 해당 함수를 실행한 자기 자신을 가리키게 한다.
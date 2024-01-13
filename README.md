# test_project

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
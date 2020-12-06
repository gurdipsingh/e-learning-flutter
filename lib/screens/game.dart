import 'package:e_learning/components/indexCard.dart';
import 'package:e_learning/components/indexCardWidget.dart';
import 'package:flutter/material.dart';

class Game extends StatefulWidget {
  @override
  _GameState createState() => _GameState();
}

class _GameState extends State<Game> {
  static List<IndexCard> indexCardList = [
    IndexCard(1, 'first_Name', 'first_Info', 'first_Label', null),
    IndexCard(2, 'second_Name', 'second_Info', 'second_Label', null),
    IndexCard(3, 'third_Name', 'third_Info', 'third_Label', null),
    IndexCard(4, 'four_Name', 'four_Info', 'four_Label', null),
    IndexCard(5, 'five_Name', 'five_Info', 'five_Label', null),
    IndexCard(6, 'six_Name', 'six_Info', 'six_Label', null),
    IndexCard(7, 'seven_Name', 'seven_Info', 'seven_Label', null),
    IndexCard(8, 'eight_Name', 'eight_Info', 'eight_Label', null),
    IndexCard(9, 'nine_Name', 'nine_Info', 'nine_Label', null),
  ];

  static List<Widget> createIndexCardWidgetList(List<IndexCard> indexList) {
    List<Widget> result = [];
    indexList.forEach((element) {
      result.add(IndexCardWidget(element));
    });
    result.add(
      RaisedButton(
        onPressed: () {
          print("Win Button!");
        },
        child: const Text('Check for win', style: TextStyle(fontSize: 20)),
      ),
    );
    return result;
  }

  List<Widget> indexCardWidgetList = createIndexCardWidgetList(indexCardList);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 3,
      children: indexCardWidgetList,
    );
  }
}

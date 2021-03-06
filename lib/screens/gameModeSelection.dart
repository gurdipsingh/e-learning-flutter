import 'package:e_learning/components/PassingArgument.dart';
import 'package:e_learning/components/gameModes.dart';
import 'package:e_learning/components/myButtomNavBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class GameModeSelection extends StatelessWidget {
  static const route = '/gameSelectionMode';

  final PassingArgument passingArgument;

  GameModeSelection({
    Key key,
    @required this.passingArgument,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: passingArgument.getBackgroundColor(),
        bottomNavigationBar: MyButtomNavigationBar(
          passingArgument: passingArgument,
        ),
        appBar: AppBar(
          title: const Text('Spiel Modus Wahl'),
          backgroundColor: passingArgument.getPrimaryColor(),
        ),
        body: GameModes(
          passingArgument: passingArgument,
        ));
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tic_tac_toe_reinvented/constants/player_list.dart';
import 'package:tic_tac_toe_reinvented/mode_selection.dart';

class PlayerSelection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ///Player card widget List
    final List<Widget> playerCards = [
      for (int i = 0; i < playerList.length; i++)
        InkWell(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ModeSelection(),
            ),
          ),
          child: Card(
            color: Colors.white,
            elevation: 2,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        if (i == 3)
                          Row(
                            children: [Icon(Icons.person), Icon(Icons.add)],
                          ),
                        if (i != 3)
                          for (int j = 1; j <= i + 1; j++) Icon(Icons.person),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      playerList[i],
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Tic Tac Toe',
          //style: TextStyle(color: Colors.deepOrange),
        ),
        //backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
          crossAxisCount: 2,
          children: playerCards,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
      ),
    );
  }
}

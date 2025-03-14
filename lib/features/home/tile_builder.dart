import 'package:flutter/material.dart';
import 'package:mppo_final/etc/models.dart';
import 'package:mppo_final/repos/database/db.dart';

class TileBuilder extends StatelessWidget {
  final Item tile;
  final int index;
  final Function updater;
  const TileBuilder({super.key, required this.tile, required this.index, required this.updater});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20, left: 15, right: 15),
      child: Container(
          alignment: Alignment.center,
          width: 300,
          height: 90,
          decoration: BoxDecoration(color: Color.fromARGB(255, 223, 223, 230), borderRadius: BorderRadius.circular(20)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(tile.toString()),
              IconButton(
                  onPressed: () async {
                    await DatabaseService().delItem(tile);

                    updater();
                  },
                  icon: Icon(Icons.delete))
            ],
          )),
    );
  }
}

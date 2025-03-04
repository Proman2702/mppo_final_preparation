import 'package:flutter/material.dart';

class AddDialog extends StatefulWidget {
  const AddDialog({super.key});

  @override
  State<AddDialog> createState() => _AddDialogState();
}

class _AddDialogState extends State<AddDialog> {
  String? name;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Добавить инфу'),
      content: Container(
        height: 140,
        width: 280,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          spacing: 20,
          children: [
            Container(
              padding: EdgeInsets.only(left: 20, right: 20),
              alignment: Alignment.center,
              width: double.infinity,
              height: 55,
              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(25)),
              child: TextField(
                onChanged: (value) => {name = value},
                decoration:
                    InputDecoration(labelText: 'Ввод имени из бд', maintainHintHeight: false, border: InputBorder.none),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(width: 130, height: 40, child: ElevatedButton(onPressed: () {}, child: Text('Удалить'))),
                Spacer(),
                SizedBox(width: 130, height: 40, child: ElevatedButton(onPressed: () {}, child: Text('Добавить')))
              ],
            )
          ],
        ),
      ),
    );
  }
}

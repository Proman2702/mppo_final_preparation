import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:mppo_final/etc/models.dart';
import 'package:mppo_final/features/drawer.dart';
import 'package:mppo_final/features/home/add_dialog.dart';
import 'package:mppo_final/features/home/tile_builder.dart';
import 'package:mppo_final/repos/database/db.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? name;
  List<Object?>? objects;
  DatabaseService db = DatabaseService();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    dbUpdate();
    // TODO: implement initState
    super.initState();
  }

  void dbUpdate() async {
    log('updated');
    objects = await db.getItems();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        backgroundColor: Colors.white,
        drawer: const AppDrawer(chosen: 0),
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(70),
            child: AppBar(
              toolbarHeight: 75,
              leadingWidth: 60,
              centerTitle: true,
              automaticallyImplyLeading: true,
              backgroundColor: Colors.white,
              elevation: 5,
              shadowColor: Colors.black,
              flexibleSpace: Container(
                decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius:
                        const BorderRadius.only(bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30))),
              ),
              leading: IconButton(
                  onPressed: () {
                    _scaffoldKey.currentState!.openDrawer();
                  },
                  icon: const Icon(Icons.menu, color: Colors.white, size: 35)),
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30))),
              title: const Padding(
                padding: EdgeInsets.only(left: 0.0),
                child: Text('home',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Nunito',
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1)),
              ),
              actions: [
                //IconButton(
                //onPressed: () {
                //Navigator.of(context).pushNamed('/home/settings');
                //},
                //icon: const Icon(Icons.settings, color: Colors.white, size: 35)),
                //const SizedBox(width: 10),
              ],
            )),
        body: Center(
            child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              objects != null
                  ? SingleChildScrollView(
                      child: SizedBox(
                        width: MediaQuery.sizeOf(context).width,
                        height: MediaQuery.sizeOf(context).height - 150,
                        child: ListView(
                          children: [
                            ListView.builder(
                                physics: const ScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: objects?.length,
                                itemBuilder: (context, index) {
                                  final tile = objects![index];
                                  return TileBuilder(
                                    index: index,
                                    tile: Item.fromMap(tile as Map<String, dynamic>),
                                    updater: dbUpdate,
                                  );
                                }),
                          ],
                        ),
                      ),
                    )
                  : const CircularProgressIndicator()
            ],
          ),
        )),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) => AddDialog(
                      updater: dbUpdate,
                    ));
          },
          child: Icon(Icons.add),
        ));
  }
}

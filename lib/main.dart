import 'package:flutter/material.dart';
import 'package:flutter101/common_widgets/drawer_custom_list_tile.dart';

import 'common_widgets/main_menu_custom_list.dart';

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerCustomListTile(
                Color.fromRGBO(23, 95, 146, 1),
                Colors.white,
                "Anasayfa",
                "",
                Icons.home,
                Icons.arrow_right_rounded,
              ),
              DrawerCustomListTile(
                Color.fromRGBO(23, 95, 146, 1),
                Colors.white,
                "Bana Özel (Gizem.)",
                "",
                Icons.person,
                Icons.arrow_right_rounded,
              ),
              DrawerCustomListTile(
                Color.fromRGBO(23, 95, 146, 1),
                Colors.white,
                "İlan Ver",
                "",
                Icons.add,
                Icons.arrow_right_rounded,
              ),
              DrawerCustomListTile(
                Color.fromRGBO(23, 95, 146, 1),
                Colors.white,
                "Servisler",
                "",
                Icons.circle,
                Icons.arrow_right_rounded,
              ),
              DrawerCustomListTile(
                Colors.white,
                Colors.black,
                "Emlak",
                "Konut, İşyeri, Arsa, Konut Projeleri",
                Icons.home_filled,
                Icons.arrow_right_rounded,
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: const Text("sahibinden.com"),
          backgroundColor: Color.fromRGBO(23, 95, 146, 1),
          actions: [
            IconButton(
              onPressed: () => {},
              icon: Icon(
                Icons.mail,
              ),
            ),
            IconButton(
              onPressed: () => {},
              icon: Icon(
                Icons.person,
              ),
            ),
            IconButton(
              onPressed: () => {},
              icon: Icon(
                Icons.car_rental,
              ),
            ),
          ],
        ),
        body: Container(
          color: Colors.grey.shade300,
          height: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  color: Colors.white,
                  height: 76,
                  padding: EdgeInsets.all(12),
                  child: TextField(
                    cursorColor: Colors.grey,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.grey,
                          width: 0.0,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 227, 226, 226),
                            width: 2.0),
                        borderRadius: BorderRadius.circular(2.0),
                      ),
                      focusColor: Colors.grey,
                      hoverColor: Colors.grey,
                      hintText: "Kelime veya ilan No. ile ara",
                      suffixIcon: Row(
                        mainAxisAlignment:
                            MainAxisAlignment.start, // added line
                        mainAxisSize: MainAxisSize.min, // added line
                        children: <Widget>[
                          IconButton(
                            onPressed: () => {},
                            icon: Icon(
                              Icons.mic_none_outlined,
                              color: Colors.grey,
                            ),
                          ),
                          IconButton(
                            onPressed: () => {},
                            icon: Icon(
                              Icons.qr_code,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      MenuCustomListItem(
                        Color.fromRGBO(248, 176, 16, 1),
                        Icons.home,
                        "Emlak",
                        "Konut, işyeri, arsa, konut projeleri",
                        Icons.arrow_forward_ios,
                      ),
                      MenuCustomListItem(
                        Color.fromRGBO(231, 46, 39, 1),
                        Icons.drive_eta_rounded,
                        "Vasıta",
                        "Otomobil, Arazi, SUV & Pickup, Motosiklet",
                        Icons.arrow_forward_ios,
                      ),
                      MenuCustomListItem(
                        Color.fromRGBO(7, 185, 191, 1),
                        Icons.construction,
                        "Yedek Parça, Aksesuar, Donanım...",
                        "Otomotiv ekipmanları, Motosiklet ekip..",
                        Icons.arrow_forward_ios,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

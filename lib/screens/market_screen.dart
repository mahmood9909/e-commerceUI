import 'package:flutter/material.dart';
import 'package:youtubetutorialapp1/provider/app_data.dart';
import 'package:youtubetutorialapp1/theme/colors.dart';

class MrketScreen extends StatefulWidget {
  const MrketScreen({Key? key}) : super(key: key);

  @override
  _MrketScreenState createState() => _MrketScreenState();
}

class _MrketScreenState extends State<MrketScreen> {
  @override
  Widget build(BuildContext context) {
    return getbody();
  }

  Widget getbody() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 20.0, left: 10, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Phenominal collection",
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.map,
                  size: 20,
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Find all",
                  style: TextStyle(fontSize: 30, height: 1.5),
                ),
                Text(
                  "Store here",
                  style: TextStyle(fontSize: 30, height: 1.5),
                ),
                SizedBox(height: 20),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 9),
                  child: Container(
                    width: MediaQuery.of(context).size.width - 100,
                    decoration: BoxDecoration(
                        color: grey.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(30)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: TextField(
                          cursorColor: primary,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              suffixIcon: Icon(
                                Icons.search,
                                size: 20,
                              ),
                              hintText: "Serach")),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: black,
                  ),
                  child: Center(
                    child: Icon(
                      Icons.map,
                      color: white,
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Divider(
                color: grey.withOpacity(0.8),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "All Stores",
              style: TextStyle(
                  fontSize: 22, color: black, fontWeight: FontWeight.bold),
            ),
            ...storeList.map((e) => Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: Stack(children: [
                    Container(
                      height: 200,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(e['img']), fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    Container(
                        height: 200,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: black.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(10))),
                    Positioned(
                        child: Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20, right: 15),
                        child: Container(
                          height: 40,
                          width: 100,
                          decoration: BoxDecoration(
                              color: white,
                              borderRadius: BorderRadius.circular(5)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              e['open'] == 0
                                  ? Text(
                                      "Close",
                                      style: TextStyle(
                                          color: black,
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold),
                                    )
                                  : Text(
                                      "Open",
                                      style: TextStyle(
                                          color: black,
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold),
                                    ),
                              Container(
                                decoration: BoxDecoration(
                                    color: e['open'] == 0
                                        ? Colors.redAccent
                                        : Colors.greenAccent,
                                    shape: BoxShape.circle),
                                height: 8,
                                width: 8,
                              )
                            ],
                          ),
                        ),
                      ),
                    ))
                  ]),
                ))
          ],
        ),
      ),
    );
  }
}

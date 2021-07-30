import 'package:flutter/material.dart';
import 'package:youtubetutorialapp1/provider/app_data.dart';
import 'package:youtubetutorialapp1/theme/colors.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return getBody(context);
  }

  Widget getBody(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10.0, right: 10, left: 10),
            child: Row(
              children: [
                Container(
                  height: 130,
                  width: 130,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage("assets/images/lastVersion.jpg"),
                          fit: BoxFit.fitHeight)),
                ),
                SizedBox(
                  width: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Container(
                    height: 130,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Mahmood Ahmed",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold)),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Computer Science",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold)),
                        SizedBox(
                          height: 10,
                        ),
                        ButtonTheme(
                            buttonColor: Colors.black,
                            child: RaisedButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5)),
                                onPressed: () {},
                                child: Text(
                                  "Edit",
                                  style: TextStyle(color: white),
                                )))
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Divider(
            color: black.withOpacity(0.2),
          ),
          Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ButtonTheme(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    height: 50,
                    minWidth: MediaQuery.of(context).size.width * 0.3,
                    buttonColor: black,
                    child: RaisedButton.icon(
                        onPressed: () {},
                        icon: Icon(
                          Icons.settings,
                          color: white,
                        ),
                        label: Text(
                          "Setting",
                          style: TextStyle(color: white),
                        )),
                  ),
                  ButtonTheme(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    height: 50,
                    minWidth: MediaQuery.of(context).size.width * 0.3,
                    buttonColor: black,
                    child: RaisedButton.icon(
                        onPressed: () {},
                        icon: Icon(
                          Icons.map,
                          color: white,
                        ),
                        label: Text(
                          "Location",
                          style: TextStyle(color: white),
                        )),
                  ),
                  ButtonTheme(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    height: 50,
                    minWidth: MediaQuery.of(context).size.width * 0.3,
                    buttonColor: black,
                    child: RaisedButton.icon(
                        onPressed: () {},
                        icon: Icon(
                          Icons.badge,
                          color: white,
                        ),
                        label: Text(
                          "Orders",
                          style: TextStyle(color: white),
                        )),
                  ),
                ],
              )),
          ...accountList.map((e) {
            return Container(
              width: double.infinity,
              height: 80,
              decoration:
                  BoxDecoration(border: Border(top: BorderSide(width: 0.1))),
              child: Center(
                child: ListTile(
                  trailing: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: 18,
                      )),
                  title: Text(
                    e.toString(),
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            );
          }).toList()
        ],
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../../../provider/suit_data_provider.dart';

class Note extends StatelessWidget {
  const Note({super.key});

  @override
  Widget build(BuildContext context) {
    SuitDataProvider suitInstance =
        Provider.of<SuitDataProvider>(context, listen: false);
    final TextEditingController controller =
        TextEditingController(text: suitInstance.qeyd);

    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.only(right: 550),
        child: AlertDialog(
          title: Container(
            margin: EdgeInsets.symmetric(
              horizontal: 15.w,
            ),
            child: Text(
              "Qeyd",
              style: TextStyle(color: Colors.black, fontSize: 40.sp),
            ),
          ),
          content: Container(
              width: 650,
              height: 300,
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    SizedBox(
                      height: 280, //     <-- TextField expands to this height.
                      child: TextField(
                        controller: controller,
                        style: TextStyle(color: Colors.black, fontSize: 40.sp),
                        keyboardType: TextInputType.multiline,
                        maxLines: 20,
                        onChanged: (value) {
                          suitInstance.qeyd = value;
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )),
          actions: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25),
              child: ElevatedButton(
                onPressed: () {
                  controller.text = suitInstance.qeyd;
                  suitInstance.noteSave();
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.white, // Background color
                  onPrimary: Colors.black, // Text color
                  elevation: 0, // No shadow
                  side: BorderSide(color: Colors.black54, width: 1), // Border
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Save',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

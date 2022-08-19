import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MessageTile extends StatelessWidget {
  String message;
  String imgPath;
  bool isLeft;
  MessageTile(
      {Key? key,
      required this.message,
      required this.imgPath,
      required this.isLeft})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment:
            isLeft ? MainAxisAlignment.start : MainAxisAlignment.end,
        children: [
          Visibility(
            visible: isLeft,
            child: Container(
              height: 60,
              width: 60,
              child: Image.asset(imgPath),
            ),
          ),
          Container(
            margin: EdgeInsets.all(5.0),
            padding: EdgeInsets.all(10),
            child: Flexible(
              fit: FlexFit.tight,
              child: Text(message,
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Avenir",
                      overflow: TextOverflow.visible)),
            ),
            decoration: BoxDecoration(
              color: isLeft ? Colors.blue : Colors.grey,
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
            ),
          ),
          Visibility(
            visible: !isLeft,
            child: Container(
              height: 60,
              width: 60,
              child: Image.asset(imgPath),
            ),
          ),
        ],
      ),
    );
  }
}

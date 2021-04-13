import 'package:flutter/material.dart';
import 'package:psel_shinier_2021/components/CustomButton.dart';

void useFirgerPrintPage(context) {
  Size size = MediaQuery.of(context).size;

  showModalBottomSheet(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
        topLeft: Radius.circular(15),
        topRight: Radius.circular(15),
      )),
      barrierColor: Colors.white38,
      elevation: 10,
      context: context,
      builder: (BuildContext bc) {
        return ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          child: Padding(
            padding: EdgeInsets.all(8),
            child: Container(
              color: Colors.white,
              height: MediaQuery.of(context).size.height * 0.4, //Height of the page
              child: Padding(
                padding: EdgeInsets.all(0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: size.width * 0.15,
                      height: 6,
                      decoration: BoxDecoration(
                          color: Color(0xffC4C4C4),
                          borderRadius: BorderRadius.circular(30)),
                    ),
                    SizedBox(
                        height: size.height *
                            0.05), //Space between Container and Icon
                    Icon(Icons.fingerprint, size: size.width * 0.2),
                    SizedBox(
                        height:
                            size.height * 0.02), //Space between Icon and Text
                    Text(
                      "Toque no sensor de digital para entrar",
                      style: TextStyle(fontSize: 15),
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    Spacer(),
                    CustomButton(
                        text: "Cancelar",
                        onPressed: () {
                          Navigator.pop(context);
                        }),
                    SizedBox(
                        height: size.height *
                            0.01), //Space between Text and Bottom border
                  ],
                ),
              ),
            ),
          ),
        );
      });
}

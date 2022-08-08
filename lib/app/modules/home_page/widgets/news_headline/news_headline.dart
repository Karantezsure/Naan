import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:naan_wallet/utils/colors/colors.dart';
import 'package:naan_wallet/utils/constants/path_const.dart';
import 'package:naan_wallet/utils/extensions/size_extension.dart';
import 'package:naan_wallet/utils/styles/styles.dart';

class Main_Headline extends StatefulWidget {
  const Main_Headline({Key? key}) : super(key: key);

  @override
  _Main_HeadlineState createState() => _Main_HeadlineState();
}

class _Main_HeadlineState extends State<Main_Headline> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Text(
          "Tezos Headlines",
          textAlign: TextAlign.start,
          style: TextStyle(
            color: Color.fromRGBO(123, 117, 127, 1.0),
            decoration: TextDecoration.none,
            fontFamily: 'Poppins',
            fontSize: 14.sp,
            letterSpacing: 0.1,
            fontWeight: FontWeight.w500,
            height: 20 / 14,
          ),
        ),
        SizedBox(
          height: 14,
        ),
        Container(
          width: 1.width,
          height: 0.87.height,
          color: Color.fromRGBO(30, 26, 34, 1.0),
          child: ListView.separated(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              padding: EdgeInsets.symmetric(horizontal: 0.045.width),
              itemBuilder: (_, index) => Gallary(),
              separatorBuilder: (_, index) => Divider(
                    height: 1,
                    thickness: 1,
                    color: Color.fromRGBO(74, 69, 78, 1.0),
                  ),
              itemCount: 3),
        ),
      ]),
    );
  }
}

Widget Gallary() {
  return Padding(
      padding: EdgeInsets.symmetric(vertical: 0.04.height),
      child: Container(
        child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          Container(
            width: 0.28.width,
            height: 0.28.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
          ),
          SizedBox(
            width: 0.03.width,
          ),
          Container(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              SizedBox(
                  width: 0.60.width,
                  height: 0.12.height,
                  child: Text(
                      "The Crunchy Aggregator – DEX Trade Routing For Optimal Text",
                      style: labelLarge,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis)),
              Container(
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Text(
                    "July, 31, 2022",
                    style: labelSmall,
                  ),
                  SizedBox(
                    width: 0.03.width,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: 0.008.width, vertical: 0.008.height),
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(98, 92, 102, 1.0),
                        borderRadius: BorderRadius.circular(10)),
                    child: Text(
                      "Defi",
                      style: labelSmall,
                    ),
                  ),
                  SizedBox(
                    width: 0.03.width,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: 0.008.width, vertical: 0.008.height),
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(98, 92, 102, 1.0),
                        borderRadius: BorderRadius.circular(10)),
                    child: Text(
                      "Adoption",
                      style: labelSmall,
                    ),
                  )
                ]),
              )
            ]),
          )
        ]),
      ));
}

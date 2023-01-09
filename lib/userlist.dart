import 'package:flutter/material.dart';
import 'package:flutter_application_1/aboutpage.dart';
import 'package:flutter_application_1/detail.dart';
import 'package:flutter_application_1/detailpage.dart';

final List<Map> details = [
  {
    "name": "Balder",
    "country": "Ultimate Goal",
    "mobile": "2020-2021",
    "text": "example",
    "poza": "images/balder.png"
  },
  {
    "name": "Loki",
    "country": "SkyStone",
    "mobile": "2019-2020",
    "text": "example",
    "poza": "images/loki.png"
  },
  {
    "name": "Thor",
    "country": "Rover Ruckus",
    "mobile": "2018-2019",
    "text": "example",
    "poza": "images/thor.png"
  },
  {
    "name": "Odin",
    "country": "Relic Recovery",
    "mobile": "2017-2018",
    "text": "example",
    "poza": "images/odin.png"
  },
  {
    "name": "IV-an",
    "country": "Freight Frenzy",
    "mobile": "2021-2022",
    "text": "example",
    "poza": "images/ivan.png"
  },
  {
    "name": "Zeus",
    "country": "Power Play",
    "mobile": "2022-2023",
    "text": "example",
    "poza": "images/Zeus.png"
  },
];

Widget userList(BuildContext context, int index) {
  return Container(
    decoration: const BoxDecoration(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
      color: Colors.black12,
    ),
    width: MediaQuery.of(context).size.width,
    height: 120,
    margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => murim(context, index)),
            );
          },
          child: Center(
            child: Container(
                width: 100,
                height: 100,
                margin: const EdgeInsets.only(right: 15),
                child: Image(image: AssetImage(details[index]['poza']))),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => murim(context, index)),
            );
          },
          child: Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  details[index]['name'],
                  style: const TextStyle(
                      color: Color.fromRGBO(4, 71, 28, 100),
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                // const SizedBox(
                //   height: 6,
                // ),
                Row(
                  children: <Widget>[
                    const Icon(
                      Icons.calendar_month_sharp,
                      color: Colors.black,
                      size: 18,
                    ),
                    // const SizedBox(
                    //   width: 2,
                    // ),
                    Text(details[index]['country'],
                        style:
                            const TextStyle(color: Colors.black, fontSize: 13)),
                    Container(
                      width: 105,
                      height: 65,
                    )
                  ],
                ),
                const SizedBox(
                  height: 6,
                ),
              ],
            ),
          ),
        )
      ],
    ),
  );
}

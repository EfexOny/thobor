import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/detail.dart';
import 'package:webview_flutter/webview_flutter.dart';

bool ok = false;

final List<Map> about = [
  {
    "name": "Odin",
    "country": "Relic Recovery",
    "mobile": "2017-2018",
    "poza": "images/odin.png",
    "path": "obiecte/Odin.glb"
  },
  {
    "name": "Thor",
    "country": "Rover Ruckus",
    "mobile": "2018-2019",
    "poza": "images/thor.png",
    "path": "obiecte/Thor.glb"
  },
  {
    "name": "Loki",
    "country": "SkyStone",
    "mobile": "2019-2020",
    "poza": "images/loki.png",
    "path": "obiecte/Loki.glb"
  },
  {
    "name": "Balder",
    "country": "Ultimate Goal",
    "mobile": "Sezon 2020-2021",
    "poza": "images/balder.png",
    "path": "obiecte/Balder.glb"
  },
  {
    "name": "IV-an",
    "country": "Freight Frenzy",
    "mobile": "2021-2022",
    "poza": "images/ivan.png",
    "path": "obiecte/IV-an.glb"
  },
  {
    "name": "Cronos",
    "country": "Power Play",
    "mobile": "2022-2023",
    "poza": "images/Zeus.png",
    "path": "obiecte/Zeus.glb"
  },
];

@override
Widget murim(BuildContext context, int index) {
  return SafeArea(
    child: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black54,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
        title: Text(
          'Details',
          style: Theme.of(context).textTheme.headline6?.copyWith(
                color: Colors.black54,
              ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
              height: 360,
              width: double.infinity,
              child: Image.asset(
                about[index]['poza'],
              )),
          Text(
            about[index]['name'],
            style: Theme.of(context).textTheme.headline5?.copyWith(
                  color: Colors.black87,
                ),
          ),
          const SizedBox(height: 4),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(width: 4),
              Text(
                '',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Colors.black54,
                    ),
              ),
            ],
          ),
          const Spacer(),
          Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Text(
                      'An',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: Colors.black54,
                          ),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Text(about[index]['mobile'])],
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Sezon',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: Colors.black54,
                          ),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Text(
                          about[index]['country'],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          const Spacer(),
        ],
      ),
      bottomNavigationBar: Row(
        children: [
          Expanded(
            child: Container(
              height: 70,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
              ),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Container(
              height: 70,
              color: const Color(0xff26B4D6),
              child: GestureDetector(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (ctx) => AlertDialog(
                            title: const Text("Warning!"),
                            content: const Text(
                                "Always ask a grown-up before using the app. Watch out out for other people when using this app and be aware of your surroundings.Parents and guardians please note: whilst using Augmented Reality there is a tendency for users to step backwards to view the robots."),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Container(
                                  padding: const EdgeInsets.all(14),
                                  child: const Text("Back"),
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => detalii(context, index)),    
                                      );
                                },
                                child: Container(
                                  padding: const EdgeInsets.all(14),
                                  child: const Text("Okay"),
                                ),
                              ),
                            ],
                          ));
                },
                child: Center(
                  child: Text(
                    'See 3D',
                    style: Theme.of(context).textTheme.headline5?.copyWith(
                          color: Colors.white,
                        ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';

class Home2View extends GetView<HomeController> {
  double heightDevice = Get.height;
  double widthDevice = Get.width;

  @override
  Widget build(BuildContext context) {
    //GETX Fitur
    double paddingTop = context.mediaQueryPadding.top;
    double paddingBottom = context.mediaQueryPadding.bottom;

    AppBar myAppBar() {
      return AppBar(
        title: Text("HOME"),
      );
    }

    double heightBody =
        context.height - myAppBar().preferredSize.height - paddingTop;

    return Scaffold(
      appBar: myAppBar(),
      body: Column(
            children: [
              ConstrainedBox(
                constraints: BoxConstraints(
                  maxHeight :100,
                  maxWidth  :500,
                  minHeight :100,
                  minWidth  :500,
                ),
                child: Container(
                  height: 10000,
                  color: Colors.blue,
                  child: Text(
                    'Pertama',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  ConstrainedBox(
                    constraints: BoxConstraints(
                    maxHeight :150,
                    maxWidth  :166,
                    minHeight :100,
                    minWidth  :166, 
                  ),
                  child: Container(
                     height: 10000,
                  color: Colors.green,
                  child: Text(
                    'Kedua',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                      ),
                    ),  
                  ),
                ),
                  ConstrainedBox(
                constraints: BoxConstraints(
                  maxHeight : 150,
                  maxWidth  : 166,
                  minHeight : 100,
                  minWidth  : 166,
                ),
                child: Container(
                  height: 10000,
                  color: Colors.red,
                  child: Text(
                    'Ketiga',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                    ),
                  ),
                ),
              ),
              ConstrainedBox(
                constraints: BoxConstraints(
                  maxHeight : 150,
                  maxWidth  : 168,
                  minHeight : 100,
                  minWidth  : 168,
                ),
                child: Container(
                  height: 10000,
                  color: Color.fromARGB(255, 68, 255, 246),
                  child: Text(
                    'Keempat',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

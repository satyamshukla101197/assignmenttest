import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../../utils/app_route.dart';
import 'order_medicine_controller.dart';

class OrderMedicineScreen extends GetView<OrderMedicineController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                child: Row(
                  children: <Widget>[
                    Icon(Icons.arrow_back,color: Colors.black,),
                    SizedBox(width: 5,),
                    Text("Order Medicibe",style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                    ),),
                  ],
                ),
              ),
              Container(

                child: Row(
                  children: <Widget>[
                    Text("Smita Gupta",style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                        fontWeight: FontWeight.normal
                    ),),
                    SizedBox(width: 5.0,),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Stack(
                        children: <Widget>[
                          Container(
                            height:30,
                            width: 30,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Colors.indigo
                            ),
                            child: Icon(Icons.person_remove_sharp,color: Colors.red,size:20),
                          ),
                          Positioned(
                            top: 0,
                            right:-3,
                            child: Container(
                              height: 10,
                              width: 10,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Colors.red
                              ),
                              child: Text("2",style: TextStyle(
                                  fontSize: 10
                              ),),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              _selectPrescription(),
              SizedBox(height: 20,),
              _getContinurButton()
            ],
          ),
        ),
      ),
    );
  }

 Widget _selectPrescription() {
    return ListView.separated(
      shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        separatorBuilder: (BuildContext context, int index){
          return SizedBox(height: 5,);
        },
        itemCount: 2,
      itemBuilder: (BuildContext context, int index){
          return Card(
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.blueGrey
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Flat\n 20% off\n on all Medicine",style: TextStyle(
                    fontSize: 10,
                    color: Colors.black
                  ),)
                ],
              ),
            ),
          );
      },
    );
 }

 Widget _getContinurButton() {
   return GestureDetector(
     onTap: (){
       Get.offAllNamed(AppRoutes.plan);
     },
     child: Container(
       alignment: Alignment.center,
       margin: EdgeInsets.only(left:20,right: 20),
       decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(10),
           gradient: LinearGradient(
               colors: [
                 Colors.blueAccent,
                 Colors.lightBlueAccent
               ]
           )
       ),
       height: 50,
       child: Text("CONTINUE",style: TextStyle(
           color: Colors.white
       ),),
     ),
   );
 }
 }
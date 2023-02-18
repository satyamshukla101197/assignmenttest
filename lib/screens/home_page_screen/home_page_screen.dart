import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:interview/utils/app_route.dart';

import '../../utils/res.dart';
import 'home_page_controller.dart';

class HomePageScreen extends GetView<HomePageController> {  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Home",style: TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.bold
              ),),
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
      body: SingleChildScrollView(
        child: Container(
          child:Column(
            children: <Widget>[
              Divider(color: Colors.grey,thickness: 0.5,),
              SizedBox(height: 20,),
              _getMedicileOptionWidget(),
              SizedBox(height: 20,),
              _getDishaWidget(),
              SizedBox(height: 20,),
              _getMyDoctorSection(),
              SizedBox(height: 20,),
              _getUpcomingAppointment()
            ],
          )
        ),
      ),
    );
  }

 Widget _getMedicileOptionWidget() {
  return Container(
    margin: EdgeInsets.only(left: 20,right: 20),
    height: 100,
    child: ListView.separated(
      shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        separatorBuilder: (BuildContext context,int index){
          return SizedBox(width: 10,);
        },
        itemCount: 20,
      itemBuilder: (BuildContext context, int index){
          return Card(
            child: Container(
              width: 70,
              child: Column(
                children: <Widget>[
                  Container(
                    height: 50,
                    width: 70,
                    child: Image.asset(Res.image,height: 50,width: 50,),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  GestureDetector(
                    onTap: (){
                      Get.offAllNamed(AppRoutes.order);
                    },
                    child: Container(
                      padding: EdgeInsets.only(bottom: 5),
                      child: Text("Order Medicine",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.w300
                      ),),
                    ),
                  ),
                ],
              ),
            ),
          );
      },
    ),
  );
 }

 Widget _getDishaWidget() {
  return Container(
    margin: EdgeInsets.only(left: 20,right: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text("D.I.S.H.A",style: TextStyle(
          fontSize: 18,
          color: Colors.black
        ),),
        SizedBox(height: 20,),
        Container(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  height: 70,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.amber
                  ),
                  child: Image.asset(Res.image,height: 70,width: 50,fit: BoxFit.cover,),
                ),
              ),
              SizedBox(width: 20,),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: 280,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("Personal Care",style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black
                                ),),
                                SizedBox(height: 2.0,),
                                Text("Dr. D.k. Singh",style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.black
                                ),),
                              ],
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.blue,
                              border: Border.all(width: 1.0)
                            ),
                            child: Text("5/10",style: TextStyle(
                              fontSize: 10,
                              color: Colors.black
                            ),),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      child: Text("Lorem ipsum, or lipsum as it is sometimes known, is dummy \ntext used in laying out print, graphic or web designs. ",style: TextStyle(
                        fontSize: 10,
                        color: Colors.black
                      ),),
                    ),
                    SizedBox(height: 5,),
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        alignment: Alignment.topRight,
                        child: Text("Click here to pay",
                          textAlign: TextAlign.end,
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.blue
                        ),),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    ),
  );
 }

 Widget _getMyDoctorSection() {
   return Container(
     margin: EdgeInsets.only(left: 20,right: 20),
     child:Column(
       crossAxisAlignment: CrossAxisAlignment.start,
       children: <Widget>[
         Text("MY DOCTORS",style: TextStyle(
             fontSize: 16,
             color: Colors.black
         ),),
         SizedBox(height: 10,),
         Container(
           height: 100,
           child: ListView.separated(
             shrinkWrap: true,
             scrollDirection: Axis.horizontal,
             separatorBuilder: (BuildContext context,int index){
               return SizedBox(width: 10,);
             },
             itemCount: 20,
             itemBuilder: (BuildContext context, int index){
               return Card(
                 child: Container(
                   child: Column(
                     children: <Widget>[
                       ClipRRect(
                         borderRadius: BorderRadius.circular(100),
                         child: Container(
                           height: 35,
                           width: 35,
                           color: Colors.deepOrange,
                           child:  Image.asset(Res.image,height: 70,width: 50,fit: BoxFit.cover,),
                         ),
                       ),
                       SizedBox(
                         height: 10,
                       ),
                       Container(
                           padding: EdgeInsets.all(5),
                           child: Column(
                             children: <Widget>[
                               Text("Dr. S.P. Gupta",style: TextStyle(
                                   fontSize: 14,
                                   color: Colors.black,
                                   fontWeight: FontWeight.w300
                               ),),
                               SizedBox(height: 5.0,),
                               Text("Dentist",style: TextStyle(
                                   fontSize: 10,
                                   color: Colors.black,
                                   fontWeight: FontWeight.w300
                               ),),
                             ],
                           )
                       ),
                     ],
                   ),
                 ),
               );
             },
           ),
         )
       ],
     )
   );
 }

 Widget _getUpcomingAppointment() {
  return Container(
    margin: EdgeInsets.only(left: 20,right: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text("UPCOMING APPOINMENTS",style: TextStyle(
          fontSize: 16,
          color: Colors.black
        ),),
        SizedBox(height: 10,),
        Container(height: 80,
        child: ListView.separated(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          separatorBuilder: (BuildContext context, int index){
            return SizedBox(width: 10,);
          },
          itemCount: 10,
          itemBuilder: (BuildContext context, int index){
            return GestureDetector(
              onTap: (){
                Get.offAllNamed(AppRoutes.plan);
              },
              child: Card(
                child: Container(
                  padding: EdgeInsets.all(10),
                  width: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Container(
                          height: 30,
                          width: 30,
                          color: Colors.black26,
                          child: Image.asset(Res.image,height: 70,width: 50,fit: BoxFit.cover,),
                        ),
                      ),
                      SizedBox(width: 10,),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Dr. S.P Gupta",style: TextStyle(
                                fontSize: 14,
                                color: Colors.black
                            ),),
                            Text("10 May 2:30PM",style: TextStyle(
                                fontSize: 10,
                                color: Colors.black
                            ),),Text("Confirmed",style: TextStyle(
                                fontSize: 10,
                                color: Colors.green
                            ),),

                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ),
        )
      ],
    ),
  );
 }
}

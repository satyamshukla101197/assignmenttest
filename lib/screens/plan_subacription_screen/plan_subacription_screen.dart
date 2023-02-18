import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:interview/utils/app_route.dart';

import '../../utils/res.dart';

class PlanSubScreen extends GetView<GetxController> {
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
                    GestureDetector(
                      onTap: (){
                        Get.back();
                      },
                    child: Icon(Icons.arrow_back,color: Colors.black,),
                    ),
                    SizedBox(width: 5,),
                    Text("Plan Subscription",style: TextStyle(
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
              _getBannerWidget(),
              SizedBox(height: 20,),
              _getPlanWidget(),
              SizedBox(height: 20,),
              _getPlanBeneFeits(),
              SizedBox(height: 20,),
              _getPayHereButton()
            ],
          ),
        ),
      ),
    );
  }

 Widget _getBannerWidget() {
    return Stack(
      children: <Widget>[
        Container(
          height: 200,
          color: Colors.green,
          child: Image.asset(Res.image,height: 200,width:double.infinity,fit: BoxFit.cover,),
        ),
        Positioned(
          top: 90,
          left: 10,
          child: Text("Healty yoy & A Healthy\n baby right",style: TextStyle(
            fontSize: 14,
            color: Colors.blueAccent
          ),),
        )
      ],
    );
 }

 Widget _getPlanWidget() {
    return Container(
      margin: EdgeInsets.only(left: 20,right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("Plan",style: TextStyle(
            fontSize: 16,
            color: Colors.black
          ),),
          SizedBox(height: 10,),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(top: 10),
                  width: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(
                          colors: [
                            Colors.blueAccent,
                            Colors.lightBlueAccent
                          ]
                      )
                  ),
                  height: 100,
                  child: Column(
                    children: <Widget>[
                      Text("Monthly Plan",style: TextStyle(
                          fontSize: 18,
                          color: Colors.white
                      ),),
                      SizedBox(height: 5,),
                      Text("Lorem Ispam",style: TextStyle(
                          fontSize: 7,
                          color: Colors.white
                      ),),
                      SizedBox(height: 30,),
                      Text("Rs. 2400",style: TextStyle(
                          fontSize: 18,
                          color: Colors.white
                      ),),
                    ],
                  ),
                ),
                SizedBox(width: 10,),
                Container(
                  padding: EdgeInsets.only(top: 10),
                  width: 180,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.blue),
                      color: Colors.white
                  ),
                  height: 100,
                  child: Column(
                    children: <Widget>[
                      Text("Monthly Plan",style: TextStyle(
                          fontSize: 18,
                          color: Colors.blue
                      ),),
                      SizedBox(height: 5,),
                      Text("Lorem Ispam",style: TextStyle(
                          fontSize: 7,
                          color: Colors.blue
                      ),),
                      SizedBox(height: 30,),
                      Text("Rs. 2400",style: TextStyle(
                          fontSize: 18,
                          color: Colors.blue
                      ),),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
 }

 Widget _getPlanBeneFeits() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 20,right: 20),
            child: Text("PLAN BENEFITS",style: TextStyle(
                fontSize: 18,
                color: Colors.black
            ),),
          ),
          SizedBox(height: 10,),
          Divider(color: Colors.grey,thickness: 0.5,),
          ListView.separated(
            shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              separatorBuilder: (BuildContext context, int index){
                return Divider(color: Colors.grey,thickness: 0.5,);
              },
              itemCount: 2,
            itemBuilder: (BuildContext context, int index){
                return Container(
                  margin: EdgeInsets.only(left: 20,right: 20),
                  child: Row(
                    children: <Widget>[
                      Container(height: 30,width: 20,
                      color: Colors.grey,
                        child: Image.asset(Res.image,height: 300,width:20,fit: BoxFit.cover,),
                      ),
                      SizedBox(width: 10,),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Diet, Exercise &Fitness",style: TextStyle(
                                fontSize: 18,
                                color: Colors.black
                            ),),
                            Text("Best for you",style: TextStyle(
                                fontSize: 10,
                                color: Colors.black
                            ),),
                          ],
                        ),
                      )
                    ],
                  ),
                );
            },
          )
        ],
      ),
    );
 }

 Widget _getPayHereButton() {
    return GestureDetector(
      onTap: (){
        //Get.offAllNamed(AppRoutes())
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
        child: Text("Pay Here(RS 3000)",style: TextStyle(
          color: Colors.white
        ),),
      ),
    );
 }

}
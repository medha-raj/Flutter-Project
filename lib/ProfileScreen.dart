import 'package:flutter/material.dart';


class ProfilePage extends StatelessWidget {
  static String tag = 'profile-screen';
  String bacon="Loream ipsum is simply dummy text of the printing and typesetting industry, venison brisket cow shoulder chicken salami pancetta strip steak tongue. Biltong meatball t-bone rump meatloaf cupim. Cupim frankfurter biltong andouille drumstick swine corned beef meatloaf brisket pig.";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            iconTheme: IconThemeData(color: Colors.white),
            backgroundColor: Colors.teal,
            centerTitle: true,
            title: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Profile',
                    style: TextStyle(fontSize: 22.5, color: Colors.white),),
                ],
              ),
            )
        ),

        body:
        Container(
          child: Column(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height*0.308,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset('images.jpeg',
                      height: 180.0,
                      width: 200.0,),
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height*0.5628,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Colors.teal,Colors.tealAccent],
                  ),
                ),
                child: Row(
                  children: <Widget>[
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          //height: MediaQuery.of(context).size.height*0.187,
                            width: MediaQuery.of(context).size.width*0.29,
                            child: Column(
                              children: <Widget>[
                                Text('12',style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.w600,color: Colors.white),textAlign: TextAlign.center),
                                Text('Posts',style: TextStyle(fontSize: 18.6,fontWeight: FontWeight.w600,color: Colors.white),textAlign: TextAlign.center),
                              ],
                            )
                        ),
                        Container(
                          //height: MediaQuery.of(context).size.height*0.187,
                            width: MediaQuery.of(context).size.width*0.29,
                            child: Column(
                              children: <Widget>[
                                Text('23',style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.w600,color: Colors.white),textAlign: TextAlign.center),
                                Text('Followers',style: TextStyle(fontSize: 18.6,fontWeight: FontWeight.w600,color: Colors.white),textAlign: TextAlign.center),
                              ],
                            )
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height*0.100,
                            width: MediaQuery.of(context).size.width*0.29,
                            child: Column(
                              children: <Widget>[
                                Text('56',style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.w600,color: Colors.white),textAlign: TextAlign.center),
                                Text('Following',style: TextStyle(fontSize: 18.6,fontWeight: FontWeight.w600,color: Colors.white),textAlign: TextAlign.center),
                              ],
                            )
                        ),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(top: 35.0,right: 90.0),
                          width: MediaQuery.of(context).size.width*0.71,
                          height: MediaQuery.of(context).size.height*0.1857,
                          child: Column(
                            children: <Widget>[
                              Text('Scott Colon',style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold,color: Colors.white),textAlign: TextAlign.left),
                              Text('Photographer',style: TextStyle(fontSize: 25.0,color: Colors.white),textAlign: TextAlign.left),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(right: 18.0,bottom: 19.0),
                          width: MediaQuery.of(context).size.width*0.71,
                          height: MediaQuery.of(context).size.height*0.3714,
                          child: Center(
                            child: Text(bacon,style: TextStyle(fontSize: 19.5,color: Colors.white),textAlign: TextAlign.left),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        )
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_app2/ProfileScreen.dart';

class HomeScreen extends StatefulWidget{
  static String tag = "home-screen";

  @override
  HomeScreenState createState() => HomeScreenState();

}

class RaisedGradientButton extends StatelessWidget {
  final Widget child;
  final Gradient gradient;
  final double width;
  final double height;
  final Function onPressed;
  final RoundedRectangleBorder shape;
  
  const RaisedGradientButton({
    Key key,
    // ignore: field_initializer_outside_constructor
    @required this.child,
    this.gradient,
    this.width = double.infinity,
    this.height = 50.0,
    this.shape,
    this.onPressed,
    
    
    
}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 50.0,
      decoration: BoxDecoration(
        gradient: gradient,
        boxShadow: [
          BoxShadow(
            color: Colors.grey[800],
            offset: Offset(0.0, 11.5),
            blurRadius: 155.5,
          ),
        ],
         borderRadius: BorderRadius.circular(7.5) ,
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onPressed,
          child: Center(
            child: child,
          ),
        ),
      ),
    );
  }
}

class HomeScreenState extends State<HomeScreen>{
  GlobalKey<FormState> _key = new GlobalKey();
  bool _validate = false;
  
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height * 1.0,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.teal,Colors.tealAccent],
                
              ),
          ),
          child: ListView(
            padding: EdgeInsets.only(top: 68.0),
            shrinkWrap: true,
            children: <Widget>[
              Image.asset('images.jpeg',
              height: 255.0,
                  width: 200.0,),
              Container(
                height: MediaQuery.of(context).size.height*0.5,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 80.0, top: 60.0),
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Container(
                        height: 195.0,
                        width: 328.0,
                        padding: EdgeInsets.only(left: 20.0,right: 20.0,bottom: 10.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.5),

                        ),
                        child: new Form(
                          key: _key,
                          autovalidate: _validate,
                          child: FormUI(),
                        )
                      ),
                      Positioned(
                        bottom: 0.0,
                        height: 30.0,
                        width: 187.0,
                        child: RaisedGradientButton(
                          child: Text(
                            'LOGIN',
                            style: TextStyle(color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 25.0),

                          ),
                          gradient: LinearGradient(colors: [Colors.teal, Colors.tealAccent]),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40.0)
                          ),
                          onPressed: _sendToProfile,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
    );
  }

  Widget FormUI(){
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
         children: <Widget>[
          Flexible(
           child: TextFormField(
            decoration: InputDecoration(
              enabledBorder: InputBorder.none,
              prefixIcon: Icon(Icons.mail_outline,size: 30.0,color: Colors.black,),
              hintText: 'Enter a username',

            ),
            keyboardType: TextInputType.text,
            autovalidate: _validate,
            validator: validateUsername,
            autofocus: false,
          )
        ),
      ],
    ),
    Row(
    children: <Widget>[
      Container(
       height: 1.0,
       width: 248.0,
       color: Colors.grey[500],
       margin: const EdgeInsets.only(left: 20.0,right: 20.0),
      )
    ],
    ),
        Row(
          children: <Widget>[
            Flexible(
              child: TextFormField(
                decoration: InputDecoration(
                  enabledBorder: InputBorder.none,
                  prefixIcon: Icon(Icons.mail_outline,size: 30.0,color: Colors.black,),
                  suffixIcon: Icon(Icons.remove_red_eye,size: 30.0,color: Colors.black,),
                  hintText: 'Password',
                ),
                autovalidate: _validate,
                validator: validatePassword,
                autofocus: false,
                obscureText: true,
              ),
            ),
            SizedBox(height: 3.0,width: 14.0,),
          ],
        ),
      ],
    );
  }
  _sendToProfile(){
   if(_key.currentState.validate()){
     Navigator.push(context, MaterialPageRoute(
       builder: (context) => ProfilePage()
     ));
   }
   else {
     setState(() {
       _validate = true;
     });
   }
  }

  String validateUsername(String uname){
    if (uname.length<6 || uname.length > 14)
      return "Username must be between 6 and 14 characters.";
    else
      return null;
  }

  String validatePassword(String pword){
    if (pword.length < 8)
      return "Password must be atleast 8 characters in length.";
    else
      return null;
  }
}

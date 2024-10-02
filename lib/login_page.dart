
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget{
  const LoginPage({super.key});
  @override
  State<LoginPage> createState()=>_LoginPageState();



}
class _LoginPageState extends State<LoginPage>{
  bool _visible = true;
  bool _isObscured=true;
  void _togglePasswordVisibilty(){
    setState(() {
      _isObscured=!_isObscured;
    });
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor:Colors.white ,
      appBar: AppBar(
        title: const Text("Login Page"),
      ),
      body:SingleChildScrollView(
    child:

      Column(
        children: [
         Column(
           children:<Widget> [

             Container(
               height: 400,
               decoration: const BoxDecoration(
                 image: DecorationImage(
                     image:AssetImage('assets/images/background.png'),
                   fit: BoxFit.fill
                 )
               ),
               child:Stack(
                 children:<Widget> [
                   Positioned(
                     left: 30,
                     width: 80,
                       height: 200,
                       child:GestureDetector(
                         onTap: (){
                           setState(() {
                             _visible = !_visible;
                           });

                         },
                         child:AnimatedOpacity(
                           opacity: _visible ? 1.0 : 0.0,
                           duration: Duration(seconds: 4),
                           child: Image.asset('assets/images/light-1.png'), // Change the image as needed
                         ) ,

                       )
                   ),
                    ///this button can be used as a toggle switch to show images and hide by changing there opacity
                   // Positioned(
                   //     left: 200,
                   //     width: 30,
                   //     height: 50,
                   //     child:  FloatingActionButton(
                   //     onPressed: () {
                   //   setState(() {
                   //         _visible = !_visible;
                   //      });
                   //                 },
                   // ),
                   // ),
                   Positioned(
                       left: 140,
                       width: 80,
                       height: 150,
                       child: AnimatedOpacity(
                         opacity: _visible ? 1.0 : 0.0,
                         duration: Duration(seconds: 4),
                         child: Image.asset('assets/images/light-1.png'), // Change the image as needed
                       ),
                   ),
                   Positioned(
                       right: 40,
                       top: 40,
                       width: 80,
                       height: 150,
                       child: Container(
                         decoration: BoxDecoration(
                           image: DecorationImage(
                             image: AssetImage('assets/images/clock.png'),
                           ),
                         ),
                       )
                   ),
                   Positioned(
                       child:Container(
                         margin: EdgeInsets.only(top:50),
                         child:Center(
                           child: Text("Login",
                             style: TextStyle(
                                   color: Colors.white,fontSize:40,fontWeight:FontWeight.bold
                           ),),
                         ) ,
                       ) )
                 ],
               ),
             ),
             Padding(padding: EdgeInsets.all(30.0),
                 child:Column(
                   children:<Widget> [
                     Container(
                       padding: EdgeInsets.all(5),
                       decoration: BoxDecoration(
                         color:Colors.white,
                             borderRadius: BorderRadius.circular(10),
                         boxShadow: [
                           BoxShadow(
                           color: Color.fromRGBO(143, 148, 251, .2),
                             blurRadius: 20.0,
                             offset: Offset(0, 10)
                         ),
                         ]
                       ),
                       child: Column(
                         children: <Widget>[
                           Container(
                             padding: EdgeInsets.all(8.0),
                             decoration: BoxDecoration(
                             border: Border(bottom: BorderSide(color: Colors.grey))
                             ),
                             child:TextFormField(

                               style: TextStyle(color: Colors.green),
                               decoration: const InputDecoration(
                                 border: OutlineInputBorder(),
                                 labelText: 'Email or Phone number',
                                 labelStyle: TextStyle(color: Color(0xFF0C66CC)),
                               ),
                             ),

                             // TextField(
                             //   decoration: InputDecoration(
                             //     border: InputBorder.none,
                             //     hintText: "Email or Phone number",
                             //     hintStyle: TextStyle(color:Colors.grey[400])
                             //   ),
                             // ),
                           ),
                           Container(
                             padding: EdgeInsets.all(8.0),
                             decoration: BoxDecoration(
                                 border: Border(bottom: BorderSide(color: Colors.grey))
                             ),
                             child: TextFormField(
                               obscureText: _isObscured,
                               style: TextStyle(color: Colors.green),
                               decoration: InputDecoration(
                                 border: const OutlineInputBorder(),
                                 labelText: 'Password ',
                                 labelStyle: const TextStyle(color: Color(0xFF0C66CC)),
                                 suffixIcon: IconButton( icon:
                                 Icon(_isObscured ?Icons.visibility:Icons.visibility_off,),
                                   onPressed: _togglePasswordVisibilty,

                                 )
                                 )
                               ),
                             ),



                         ],
                       ),
                       ),
                     SizedBox(height:30 ,),
                     Container(
                       height: 50,
                       decoration: BoxDecoration(
                         gradient: LinearGradient(
                             colors:[
                               Color.fromRGBO(143, 148, 251, 1),
                               Color.fromRGBO(143, 148, 251, .6),

                             ])
                       ),
                       child: Center(
                         child: Text("Login",
                             style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                       ),

                     ),
                     SizedBox(height: 70,),
                     Text("Forgot Password?",
                         style: TextStyle(color: Color.fromRGBO(143, 148, 251, 1), fontWeight: FontWeight.bold)),


                   ],
                 )
             ),
           ],
         ),
        ],
      ),
      )
    );
  }
}


// Container(
// decoration: BoxDecoration(
// image: DecorationImage(image: AssetImage('assets/images/light-1.png'),
// ),
// ),
// )



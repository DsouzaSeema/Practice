import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class textInput extends StatelessWidget{
  var emailText=TextEditingController();
  var passText=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("text input"),
      ),
      body:Center(
          child: Container(
            width: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    controller: emailText,
                    enabled: true,
                    decoration: InputDecoration(
                        hintText:"enter email",
                        focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(21),
                        borderSide: BorderSide(
                          color: Colors.deepPurpleAccent,
                          width: 3
                        )
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(21),
                          borderSide: BorderSide(
                              color: Colors.black,
                              width: 3
                          )
                      ),
                      disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(21),
                          borderSide: BorderSide(
                              color: Colors.blueGrey,
                              width: 3
                          )
                      ),
                  //    suffixText: "Username exists",
                      suffixIcon: IconButton(onPressed: (){},
                          icon: Icon(Icons.remove_red_eye,color:Colors.deepOrange)),
                      prefixIcon: Icon(Icons.email,color:Colors.deepOrangeAccent)
                    ),
                  ),
                  Container(height: 11,),
                  TextField(
                    keyboardType: TextInputType.number,
                    controller: passText,
                    obscureText: true,
                    obscuringCharacter: "*",
                    decoration: InputDecoration(
                      hintText: "enter password",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(21),
                            borderSide: BorderSide(
                                color: Colors.deepOrangeAccent,
                              width: 7
                            )
                        )
                    ),
                  ),
                  ElevatedButton(onPressed: (){
                    String uEmail=emailText.text.toString();
                    String uPass=passText.text.toString();

                    print("Email:$uEmail, Password:$uPass");
                  },
                      child: Text("Login")
                  )
                ],
              )
          )
      ) ,
    );
  }

}
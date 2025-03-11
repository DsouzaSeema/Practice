import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
class dio extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=>_dio();

}

class _dio extends State<dio>{
  var jsonList;
  @override
  void initState() {
    getData();
  }

  void getData() async {
    try{
      var response=await Dio().get("https://www.googleapis.com/books/v1/volumes?q=%22flutter%22");
      if(response.statusCode==200){
        setState(() {
          jsonList=response.data['items'] as List;
        });

      }else{
        print(response.statusCode);
      }
    }
    catch(e){
      print(e);
    }
  }
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Dio "),
          backgroundColor: Colors.blueGrey,
        ),
        body: ListView.builder(
          itemCount: jsonList==null?0:jsonList.length,
            itemBuilder: (BuildContext context,int index)
            {
              var book = jsonList[index]['volumeInfo'];
              String title = book['title'] ?? "No Title";
              String subtitle = book['subtitle'] ?? "No Subtitle";
              String imageUrl = book['imageLinks'] != null ? book['imageLinks']['thumbnail'] : 'https://via.placeholder.com/150';

              return 
                Card(
                child: ListTile(
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(21),
                    child: Image.network(
                      imageUrl,
                      fit: BoxFit.fill,
                      height: 50,
                      width: 50,
                    ),
                  ),
                  title:Text(title) ,
                  subtitle: Text(subtitle),
                ),
              );
            }),
      );
  }

}
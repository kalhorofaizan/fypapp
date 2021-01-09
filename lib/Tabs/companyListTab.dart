import 'package:flutter/material.dart';
class CompanyListTab extends StatefulWidget {
  @override
  _CompanyListTabState createState() => _CompanyListTabState();
}

class _CompanyListTabState extends State<CompanyListTab> {

   Widget _CompanyListItem(String logo,String title, String location){
      return ListTile(
        leading: Image.asset(logo,height: 100,),
        title: Text(title),
        trailing: Text(location),
      );
   }



  @override
  Widget build(BuildContext context) {
    return Container(child: ListView(
        children: [
          Card(
           elevation: 1,
            child: ListTile(
              leading: Icon(Icons.search),
              title: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                    hintText: "Search Company Name"
                  )) ,
            ),
          ),
          _CompanyListItem('assets/images/logos.png', "Nature", "Karachi"),
          Divider(height: 3,color: Colors.blue,),
          _CompanyListItem('assets/images/logos.png', "Nature", "Karachi"),
          Divider(height: 3,color: Colors.blue,),
          _CompanyListItem('assets/images/logos.png', "Nature", "Karachi"),
          Divider(height: 3,color: Colors.blue,),
          _CompanyListItem('assets/images/logos.png', "Nature", "Karachi"),
          Divider(height: 3,color: Colors.blue,),
        ],
      ),
    );
  }
}

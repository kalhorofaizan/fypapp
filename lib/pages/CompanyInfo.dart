import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:fypapp/models/commitModel.dart';
import 'package:fypapp/pages/complaintPage.dart';
class CompanyInfo extends StatefulWidget {
  static String ROUTE='CompanyInfo';
  @override
  _CompanyInfoState createState() => _CompanyInfoState();
}

class _CompanyInfoState extends State<CompanyInfo> {

  CommitModel myCommit=new CommitModel(name: "",rating: 0.0,commit: "");
  List<CommitModel> listCommit= [CommitModel(name: "farhan",rating: 1,commit: "asdasasdsaddasdasaaaaaaaaaaaaaaaaaaaaadadasdasasdassjjsaa"),CommitModel(name: "farhan",rating: 1,commit: "asdasdasdasdadasdasasdassjjsaa"),CommitModel(name: "farhan",rating: 1,commit: "asdasdasdasdadasdasasdassjjsaa")];

  @override
  Widget build(BuildContext context) {
     double height=MediaQuery.of(context).size.height;
     print(MediaQuery.of(context).viewInsets.bottom);

    return Scaffold(
      body: Column(
        children: [
          Expanded(child: ListView(
            children: [
              Container(
                decoration: BoxDecoration(
                    border:Border(
                        bottom: BorderSide(color: Colors.grey,)
                    ),
                    image: DecorationImage(image: AssetImage('assets/images/companybg.jpg'),fit: BoxFit.fill)
                ),
                height: height*0.25,
                child: Column(
                  children: [
                   ListTile(leading:  IconButton(icon: Icon(Icons.arrow_back_sharp),onPressed: (){
                     Navigator.pop(context);
                   },),),
                    Center(
                      child: CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.white,
                        child: Image.network('https://cdn.freebiesupply.com/logos/thumbs/2x/fast-company-logo.png'),
                      ),
                    ),
                  ],
                )
              ),
              ListTile(
                  title: Center(child: Column(
                    children: [
                      Text("XYZ Company",style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18
                      ),),
                      Text("XYZ services"),
                    ],
                  ))
              ),
              Divider(thickness: 2,),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Text("aaaaaaaadsasdsaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"),
              ),
              Divider(thickness: 2,),
              Padding(padding: EdgeInsets.symmetric(horizontal: 10),child: Text("Address: xyzasdasdasdasdasddasas"),),
              Padding(padding: EdgeInsets.symmetric(horizontal: 10),child: Text("Area: karachi"),),
              Divider(thickness: 2,),
              Center(
                child: Text("Rating",style: TextStyle(
                  fontSize: 25
                ),),
              ),
              Center(
                child:   RatingBar(initialRating: 1,minRating: 1,direction: Axis.horizontal,allowHalfRating: true,itemCount: 5,
                  itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                  maxRating: 5,
                  glowColor: Colors.amber,
                  ratingWidget: RatingWidget(full: Icon(Icons.star,color: Colors.amber,),empty: Icon(Icons.star_border,color: Colors.amber,),half: Icon(Icons.star_half,color: Colors.amber,)),
                  onRatingUpdate: (rating){
                    print(rating);
                  },
                ),
              ),
             Container(
               margin: EdgeInsets.symmetric(horizontal: 10),
               child:  TextField(
                 keyboardType: TextInputType.multiline,
                 minLines: 4,
                 maxLines: 20,
                 onChanged: (e){
                   setState(() {
                     myCommit.commit=e;
                   });
                 },
                 decoration: InputDecoration(
                   hintText: "Comment",
                   border: InputBorder.none
                 ),
               ),
             ),
             myCommit.commit.length>0?  Container(
               margin: EdgeInsets.symmetric(horizontal: 100),
               child:RaisedButton(child: Text("submit",style: TextStyle(color: Colors.white),),color: Colors.blue,onPressed: (){},),
             ):Container() ,
              Divider(thickness: 2,),
              Container(
                margin: EdgeInsets.only(left: 10,bottom: 10),
                child: Text("User Commits",style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),),
              ),
              for (var commit in listCommit)  Container(
                margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(commit.name,style: TextStyle(fontWeight: FontWeight.bold),),
                        Spacer(),
                        RatingBarIndicator(
                          rating: commit.rating,
                          itemBuilder: (context, index) => Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          itemCount: 5,
                          itemSize: 25.0,
                        ),
                      ],
                    ),
                    Text(commit.commit)
                  ],
                ),
              )
            ],
          )),
          MediaQuery.of(context).viewInsets.bottom==0 ? Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: RaisedButton(child: Text("Report Complaint",style: TextStyle(color: Colors.white),),color: Colors.blue,onPressed: (){
              Navigator.pushNamed(context,ComplaintPage.ROUTE);
            },),
            width: double.infinity,
          ):Container()
        ],
      ),
    );
  }
}

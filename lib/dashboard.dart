import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
     Dashboard ({super.key});
var height, width;

List imgData =[
  "images/mcqs.png",
  "images/quiz.png",
  "images/pastpapers.png",
  "images/pdf.png",
  "images/job.png",
  "images/about.png",
];
List titles=[
  "MCQs",
  "QUIZ",
  "Past Papers",
  "PDF",
  "JOBS",
  "About"

];
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.indigo,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.indigo,
              ),
             width: width,
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 35,
                    left: 15
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: (){},
                        child: Icon(Icons.safety_check,size: 40,),

                      ),
                      ClipRect(
                        child: Image.asset("images/woman.png",height: 50,width:
                        40,),
                      )
                    ],
                  ),

                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 5,
                      left: 5,
                     right: 5,
                  ),
                  child: Column(
                    children: [
                      Text("Dashboard",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1
                      ) ,)
                    ],
                  ),
                )
              ],),
            ),
            SingleChildScrollView(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50)
                  )
                ),
                // height: height * 0.75,
                width: width,
                child:GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1.1,
                  mainAxisSpacing: 10,
                ),
                shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 6,
                  itemBuilder: (context,index){
                  return InkWell(
                      onTap: (){},
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          spreadRadius: 1,
                          blurRadius: 6
                        )
                      ]
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(imgData[index],
                        width: 120,),
                        Text(titles[index],style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                        ),)
                      ],
                    ),
                  ));

                  }
                    ) ,
              ),
            )
          ],
        ),
        ),
      ),
    );
  }
}

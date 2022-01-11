
import 'package:counter/info.dart';
import 'package:flutter/material.dart';
class UserProfile extends StatelessWidget{
  final List<MenuRowData> MenuRow = [
    MenuRowData(Icons.favorite, "Избранное"),
    MenuRowData(Icons.call, "Звонки"),
    MenuRowData(Icons.computer, "Устройства"),
    MenuRowData(Icons.folder, "Папка с чатами"),
  ];
  final List<MenuRowData> SecondMenuRow = [
    MenuRowData(Icons.notifications,"Уведомления и звуки"),
    MenuRowData(Icons.privacy_tip,"Конфиденциальность"),
    MenuRowData(Icons.date_range,"Данные и память"),
    MenuRowData(Icons.brush,"Оформление"),
    MenuRowData(Icons.language,"Язык"),
    MenuRowData(Icons.sticky_note_2,"Стикеры"),
  ];
  final List<MenuRowData> ThirdMenuRow = [
    MenuRowData(Icons.watch,"Apple Watch"),
  ];
  final List<MenuRowData> FourMenuRow = [
    MenuRowData(Icons.help,"Помощь"),
    MenuRowData(Icons.question_answer,"Вопросы о Telegram"),
  ];



  @override
  Widget build(BuildContext context) {
      return(MaterialApp(
       home: Scaffold(
         backgroundColor: Colors.grey,
         appBar: AppBar(
           title:  Text("Настройки"),
           centerTitle: true,
         ),
         body: Container(
           margin: EdgeInsets.symmetric(vertical: 5.0,horizontal: 15.0),
           width: double.infinity,
           child: ListView(
            children: [
              info(),
              SizedBox(height: 30),
              MenuWidget(menuRow: MenuRow),
              SizedBox(height: 30),
              MenuWidget(menuRow: SecondMenuRow),
              SizedBox(height: 30),
              MenuWidget(menuRow: ThirdMenuRow),
              SizedBox(height: 30),
              MenuWidget(menuRow: FourMenuRow),



            ],
         ),
       ),
       ),
      ));
  }
}

class MenuRowData{
  final IconData icon;
  final String text;

  MenuRowData(this.icon, this.text);
}
class MenuWidget extends StatelessWidget {
  final List<MenuRowData> menuRow;
  const MenuWidget({Key? key, required this.menuRow}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      child: Column(
        children: menuRow.map((data) => _MenuWidgetRow(data: data)).toList(),



      ),
    );
  }
}

class _MenuWidgetRow extends StatelessWidget{
  final MenuRowData data;


  const _MenuWidgetRow ({Key? key,required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(


        width: double.infinity,
        child:Padding(
            padding: EdgeInsets.symmetric(horizontal: 16,vertical: 10),
            child:OutlinedButton(
              //style:ButtonStyle(backgroundColor:MaterialStateProperty.all(Colors.white),),
              onPressed: () {

                Route route = MaterialPageRoute(builder: (context) =>Page());
                Navigator.push(context,route);
              },
              child:Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                      Icon(data.icon,color: Colors.black),
                      SizedBox(width: 15,),
                      Expanded(child:Text(data.text,style: TextStyle(color: Colors.black),)),
                      Icon(Icons.chevron_right,color: Colors.black),
              ]),
            ),
        ));
  }

}
class Page extends StatelessWidget {
  const Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Что то там"),
        )

    );
  }
}





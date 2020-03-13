import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "Profil",
    home: new HalamanSatu(),
  ));
}

class HalamanSatu extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: new AppBar(
        backgroundColor: Colors.blue,
        title: new Center(
          child: new Text("Profil"),
        )
      ),

      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
        ClipRRect(
        borderRadius: BorderRadius.circular(100.0),
        child: Image.network(
          'https://scontent.fsub3-1.fna.fbcdn.net/v/t1.0-1/p240x240/60769940_2030093280626971_2440843074096594944_o.jpg?_nc_cat=104&_nc_sid=dbb9e7&_nc_eui2=AeG-lNZ3Yz7bJp6n5i8PdPUZhHXFiQysCu43LngxHbIbQTYcotP_-WEMWie2DKb4UDhDPOlBeeXoaiU0AEpBwLpLxoTcR_yFSigFhf-luuLtdA&_nc_ohc=U85hc_vAzVYAX_g_8OS&_nc_ht=scontent.fsub3-1.fna&_nc_tp=6&oh=a77c1a810efa77111096b6e25655551c&oe=5E8FBB1B',
          width: 150.0,
          height: 150.0,
          fit: BoxFit.cover,
        ),
      ),
              Text(
                  "I Putu Bagus Aryanto Arka Putra", style: TextStyle(color: Colors.white, fontSize: 20.0, height: 2.0, fontWeight: FontWeight.bold,),),
              Text(
                "Pendidikan Teknik Informatika",style: TextStyle(color: Colors.white, fontSize: 15.0, height: 1.0,),),

              Container(
                margin: EdgeInsets.only(top:10),
                padding: EdgeInsets.all(40),
                width: 400,
                child: Row(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        ContainIcon(0,"Singaraja",Icons.my_location),
                        ContainIcon(12,"All Genre",Icons.music_note),
                      ],),
                    Column(
                      children: <Widget>[
                        ContainIcon(0,"Badung",Icons.home),
                        ContainIcon(12,"Undiksha",Icons.location_city),
                      ], ),],  ), ),   ],),  ));
  }
}

//container dari kotak yang berisi icon
class ContainIcon extends StatelessWidget {
  final double atas;
  final String isi;
  final IconData icon;
  const ContainIcon(this.atas,this.isi,this.icon);
  @override
  Widget build(BuildContext context) {
    return    Container(
        margin: EdgeInsets.only(left: 20,top: atas),
        padding: EdgeInsets.only(top: 20),
        width: 130,
        height: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
          border: Border.all(width:3,color:Colors.blue,),
        ),
        child: Column(
          children: <Widget>[
            Icon(
              icon,
              size: 40,
            ),
            Container(
              color: Colors.blue,
              margin: EdgeInsets.only(top:24),
              width: 125,
              height: 30,
              child:TextBox(isi),
            ),
          ],
        )

    );
  }
}

//untuk text di dalam kotak
class TextBox extends StatelessWidget {
  final String isi;
  const TextBox(this.isi);

  @override
  Widget build(BuildContext context) {
    return Center(
      child:Text(isi,style: TextStyle(
          height: 1.3,
          fontSize: 18,
          color: Colors.white
      ),
      ),
    );
  }
}
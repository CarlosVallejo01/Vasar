import 'package:flutter/material.dart';
import 'package:login_signup/utils/exports.dart';


class Comercios extends StatelessWidget
{


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white
        ),
        title: Text("Comercios en Vasar"),
        centerTitle: true
      ),
      body: ListView(
        children: [
          Producto("mochila bob esponja", "mochila bob esponja, \nbuenas condiciones, para niños, \naún tiene etiqueta", "bob_esponja.jpeg", 4),
          Producto("waffles con amor", "waffles recién hechos, \npunto de reunión por DM", "waffles.jpeg", 4),
          Producto("set pesas", "seminuevo, excelentes condiciones, \núnico dueño", "set_pesas.jpeg", 4),
          Producto("Star wars en blu-ray", "Colección completa de dvd en \nblue-ray de star wars, \nexcelente condición", "star_wars.jpeg", 4),
          Producto("Antojitos Anguiano", "los antojitos más ricos caseros, \nprobar para creer", "antojitos.jpeg", 4),

        ],
      ),
    );
  }

}

class Producto extends StatelessWidget
{

  String titulo = "";
  String descripcion = "";
  String image = "";
  int numeroEstrellas = 0;

  Producto(this.titulo, this.descripcion, this.image, this.numeroEstrellas);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(10),
      ),
      width: 150,
      height: 200,

      child: Row(
        children: [
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 30, left: 25),

                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage("image/"+image),
                        fit: BoxFit.fill
                    )
                ),
                width: 150,
                height: 100,
              ),
              Row(
                children: [
                  Icon(Icons.star, size: 30,color: Colors.amber,),
                  Icon(Icons.star, size: 30,color: Colors.amber,),
                  Icon(Icons.star, size: 30,color: Colors.amber,),
                  Icon(Icons.star, size: 30,color: Colors.amber,),
                  Icon(Icons.star, size: 30,color: Colors.grey,),
                ],
              )
            ],
          ),
          Column(
            children: [
              Container(

                margin: EdgeInsets.only(top: 80, left: 20),
                child: Text(this.titulo, textAlign: TextAlign.left, style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
              ),
              Container(
                child: Text(this.descripcion, textAlign: TextAlign.left, overflow: TextOverflow.ellipsis, style: TextStyle(color: Colors.white),),
              ),
            ],
          )
        ],
      ),
    );
  }

}
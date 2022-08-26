import 'package:flutter/material.dart';

//
//// Classe para TROCA DE DADOS
//
class Ofertas {
 final String gasolinaComum;
 final String gasolinaAd;
 final String etanol;
 final String dieselS500;
 final String diesels10;
 final String gnv;
 final String horarioFunc;
 

  Ofertas(this.gasolinaComum, this.gasolinaAd, this.etanol, this.dieselS500, this.diesels10, this.gnv, 
          this.horarioFunc);
}

class ofertasCombustiveis extends StatefulWidget {
  @override
  _ofertasCombustiveisState createState() => _ofertasCombustiveisState();
}


class _ofertasCombustiveisState extends State<ofertasCombustiveis> {
  
  var txtgasolinaComum = TextEditingController();
  var txtgasolinaAd = TextEditingController();
  var txtetanol = TextEditingController();
  var txtdieselS500 = TextEditingController();
  var txtdieselS10 = TextEditingController();
  var txtgnv = TextEditingController();
  var txthorarioFunc = TextEditingController();  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            size: 20,
            color: Colors.black
          ),
        ),
      ),


      body:  SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(40),
          child: Column(
            children:[
              Column(
                children: <Widget>[
                  Text("Por quanto você quer vender?",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,

                    ),
                  ),
                  SizedBox(height: 20),                
                ],
              ),

              Column(
                children: [

                  // Textfield GASOLINA COMUM
                  TextField(
                    controller: txtgasolinaComum,
                      decoration: InputDecoration(
                      labelText: 'Preço Gasolina Comum',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 10),

                  // Textfield GASOLINA ADITIVADA
                  TextField(
                    controller: txtgasolinaAd,
                    decoration: InputDecoration(
                      labelText: 'Preço Gasolina Aditivada',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 10),

                  // Textfield ETANOL
                  TextField(
                    controller: txtetanol,
                    decoration: InputDecoration(
                      labelText: 'Preço Etanol',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 10),

                  // Textfield DIESEL S 500
                  TextField(
                    controller: txtdieselS500,
                    decoration: InputDecoration(
                      labelText: 'Preço Diesel S 500',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 10),

                  // Textfield DIESEL S10
                  TextField(
                    controller: txtdieselS10,
                    decoration: InputDecoration(
                      labelText: 'Preço Diesel S 10',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 10),

                  // Textfield GNV
                  TextField(
                    controller: txtgnv,
                    decoration: InputDecoration(
                      labelText: 'Preço GNV',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 10),

                  // Textfield Horario de funcionamento
                  /* TextField(
                    controller: txthorarioFunc,
                    decoration: InputDecoration(
                      labelText: 'Horário de Funcionamento',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 10), */

                  ElevatedButton(
                    child: Text('Salvar'),
                    onPressed: (){
                      setState((){
                        var msg = Ofertas(
                          txtgasolinaComum.text,
                          txtgasolinaAd.text,
                          txtetanol.text,
                          txtdieselS500.text,
                          txtdieselS10.text,
                          txtgnv.text,
                          txthorarioFunc.text,
                        );

                        Navigator.pushNamed(
                          context,
                          '/tela4',
                          arguments: msg
                        );
                      });
                    },
                  ),
                ],                  
              ), 
            ],
          ),
        ),      
      ),
    );
  }
}
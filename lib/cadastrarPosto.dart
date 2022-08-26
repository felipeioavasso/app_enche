import 'package:flutter/material.dart';

class cadastrarPosto extends StatelessWidget {
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
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 40),
          height: MediaQuery.of(context).size.height - 50,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text("Cadastre o seu Posto",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),                 
                ],
              ),
              Column(
                children: <Widget>[
                  inputFile(label: "Nome do Posto:"),                 // VALIDAR AS INFORMAÇÕES
                  inputFile(label: "CNPJ:"),
                  inputFile(label: "Estado:"),
                  inputFile(label: "Cidade:"),
                  inputFile(label: "Endereço:"),
                  inputFile(label: "Número:"),
                  inputFile(label: "Horário de funcionamento"),
                  inputFile(label: "Inserir foto:"),
                ],
              ),
              Container(
                child: 
                MaterialButton(
                  minWidth: double.infinity,
                  height: 60,
                  onPressed: (){ 

                  },
                  color: Color(0xFF6A1B9A),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  
                  child: Text(
                    "Cadastrar",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),              
            ],
          ),
        ),
      ),
    );
  }
}



// Widget para o text field
// 
// 
Widget inputFile({label, obscureText = false})
{
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        label,
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w400,
          color: Colors.black87,
        ),
      ),
      SizedBox(
        height: 5,
      ),
      TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(
            vertical: 0,
            horizontal: 10
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey[400]
            ),
          ),
          //border: OutLineInputBorder(
          //  borderSide: BorderSide(color: Colors.grey[400]),
          //),
        ),
      ),
    ],
  );
}
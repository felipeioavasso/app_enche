import 'package:app_enche/signupEnche.dart';
import 'package:flutter/material.dart';
//import 'lista.dart';
//import 'cadastrarPosto.dart';
import 'loginEnche.dart';
import 'menuPrincipal.dart';



void main() {
  runApp(MaterialApp
    (
      debugShowCheckedModeBanner: false,
      title: 'Enche',
      
      
       // TEMA 

      theme: ThemeData(
        primaryColor: Color(0xFF6A1B9A),
        backgroundColor: Colors.white,
        fontFamily: 'Roboto',
        textTheme: TextTheme(
          headline1: TextStyle(
            fontSize:18,
            color: Colors.white
          ),
        ),  
      ),

      // ROTAS  DO  APP
      initialRoute: '/tela1',
      routes: {
        '/tela1': (context) => HomePage(),
        '/tela2': (context) => LoginEnche(),
        '/tela3': (context) => SignUpEnche(),
        '/tela4': (context) => MenuPrincipal(),
      }, 
      //home: HomePage(),
    )
  );
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          // double.infinity make it big as my parent allows
          // while MediaQuery make it big as per the screen

          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
          child: Column(
            // even space distribuition
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                children: 
                  <Widget>[
                    Text(
                      "Enche",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,

                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text("Seja bem-vindo(a) ao Enche. Ficamos felizes por você estar aqui.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                       color: Colors.grey[700],
                        fontSize: 15,                   
                      ),
                    ),
                  ],
              ),

              //
              // FIGURA DO DISPERSOR DE COMBUSTÍVEL
              //
              Container(
                height: MediaQuery.of(context).size.height / 3,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("imagens/enche bem vindo.jpg")
                  ),
                ),
              ),

              //
              // BOTÃO LOGIN
              // 
              Column(
                children: <Widget>[
                  MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: () {                      
                      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginEnche()));
                    },
                    // Definindo o formato
                    
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.black
                      ),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  //
                  // BOTÃO DE CADASTRO
                  // 
                  
                  SizedBox(height: 20),
                  MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpEnche()));
                      //Navigator.push(context, MaterialPageRoute(builder: (context) => cadastrarPosto()));
                    },
                    color: Color(0xFF6A1B9A),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)
                    ),
                    child: Text(
                      "Cadastrar",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
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

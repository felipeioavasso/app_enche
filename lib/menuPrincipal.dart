import 'package:flutter/material.dart';
//import 'cadastrarPosto.dart';

//
// MENU PRINCIPAL  com LISTVIEW.BUILDER
//

class MenuPrincipal extends StatefulWidget {
 const MenuPrincipal({key}) : super(key: key);
 @override
  _MenuPrincipalState createState() => _MenuPrincipalState();
}

class _MenuPrincipalState extends State<MenuPrincipal> {
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: account_circle_outlined',
      style: optionStyle,
    ),
    Text(
      'Index 1: apps_sharp',
      style: optionStyle,
    ),
    Text(
      'Index 2: local_gas_station_outlined',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(      
              
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem> [

          BottomNavigationBarItem(                                
            icon: Icon(Icons.home),
            label: 'Inicial',
            backgroundColor: Color(0xFF6A1B9A),
          ), 
          
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: 'Conta',
            backgroundColor: Color(0xFF6A1B9A),
          ),

           BottomNavigationBarItem(
            icon: Icon(Icons.apps_sharp),
            label: 'Quero vender',
            backgroundColor: Color(0xFF6A1B9A),
            
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.local_gas_station_outlined),
            label: 'Combustível',
            backgroundColor: Color(0xFF6A1B9A),
          ),

          //  <---------------------------------------------------------------------------------------------------------------------------->

           /* BottomNavigationBarItem(                                 
            icon: Icon(Icons.local_drink_outlined),                  
            label: 'Convêniencia',
            backgroundColor: Color(0xFF6A1B9A),
          ),  */
          //                                                          FUNCIONALIDADES   A   SEREM   LIBERADAS
          //                                                          NAS   PRÓXIMAS    ATUALIZAÇÕES    DO   APP
            
           /* BottomNavigationBarItem(
            icon: Icon(Icons.car_repair),
            label: 'Serviços',
            backgroundColor: Color(0xFF6A1B9A),
          ),  */

          //  <---------------------------------------------------------------------------------------------------------------------------->

          
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        onTap: _onItemTapped,
                      
       
      ),    
    );   
  }
}
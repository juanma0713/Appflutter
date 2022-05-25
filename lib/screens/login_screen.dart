import 'package:flutter/material.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width:double.infinity,
        height: double.infinity,
        child: Stack(// el stack per,ite agregar varios widget en un solo div pudiendo superponerlos
          children: [
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
                  
                  Color.fromRGBO(110, 218, 200, 0.7),
                  Color.fromRGBO(140, 230, 210, 0.5),
                  
                  //Color.fromRGBO(310, 410, 510, 0.7),
                   //Color.fromRGBO(178, 218, 250, 1),
                ])
              ),
              width: double.infinity,//el infinity permite tomar todo el viewport de la pantalla en la direccion indicada
              height: size.height * 0.4,
            ),

            SafeArea(//el safe area es el nombre del widget solamnte pero asi se llama cuando se quiere tomar toda la apnatall ahats acon la camara frontal
              child: Container(
                margin: const EdgeInsets.only(top:30),
                width: double.infinity,
                child: const Icon(
                  Icons.person_pin,
                  color:Colors.white,
                  size:100,
                ),
              ),
            ),

            Column(
              children: [
                const SizedBox(height: 300),
                Container(
                  padding: const EdgeInsets.all(20),
                  margin: const EdgeInsets.symmetric(horizontal: 30), 
                  width: double.infinity,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 15,
                        offset: Offset(1 , 5),
                      ),
                    ]),
                    child: Column(
                      children: [
                        SizedBox(height: 10),
                        Text(
                          'Login', 
                        style: Theme.of(context).textTheme.headline4),
                        SizedBox(height: 30),
                      ],
                    ),
                ),
              ],
            
              ),
          
          ] ,
        ),
      ), 
    );
  }
}
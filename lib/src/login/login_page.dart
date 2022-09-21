import 'package:flutter/material.dart';
import 'package:flutter_delivery/src/utils/my_colors.dart';
import 'package:lottie/lottie.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  String _Name; // privada
  String Name;// publica

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Stack(

          children: [
            Positioned(
              top:-80,
            left:-100,
            child:_CirculoLogin(),
            ),
            Positioned(child: _textLogin(),
              top: 60,
              left: 25,
            ),
            Column(
              children: [
                _lottieAnimation(),
               //_imageBanner(),
                _TextFieldEmail(),
                _TextFielPassword(),//metodos en flutter no esta fuera del otro mundo xd
                _ButtonLogin(),
                _textDonthaveAccount(),


               ],
            ),
          ],
        ),
      ),
    );
  }

 Widget _lottieAnimation(){
    return Container(
      margin:EdgeInsets.only(
        top:150 ,
        bottom:MediaQuery.of(context).size.height * 0.17
      ),
      child: Lottie.asset(
          'assets/json/delivery.json',
        width:350,
        height: 250,
        fit: BoxFit.fill
      ),
    );
 }


  Widget _textLogin(){
    return Text(
      'Login',
      style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 22,
          fontFamily: 'NimbusSans'
    ),
    );
  }

  Widget _CirculoLogin(){
    return Container(
      width: 240,
      height: 230,
      decoration: BoxDecoration(
        borderRadius:BorderRadius.circular(100),
        color: Mycolors.primaryColor
      ),
    );
  }

  Widget _imageBanner(){
  return  Container(
    margin:EdgeInsets.only(
        top: 100 , 
        bottom: MediaQuery.of(context).size.height) * 0.22,
    child: Image.asset(
    'assets/img/delivery.png',
    width: 200,
    height: 200,
    ),
  );
  }

  Widget _TextFieldEmail(){
  return  Container(
    margin: EdgeInsets.symmetric(horizontal: 50, vertical: 5),
    decoration: BoxDecoration(
      color: Mycolors.primaryOpacityColor,
      borderRadius: BorderRadius.circular(30)
    ),
    child: TextField(
        decoration: InputDecoration(
            hintText: 'Correo Electronico',
            border: InputBorder.none,
            contentPadding: EdgeInsets.all(15),
            hintStyle: TextStyle(
              color:Mycolors.primaryColorDark
            ),
            prefixIcon: Icon(
                Icons.email,
                color:Mycolors.primaryColor
            )
        ),
      ),
  );
  }

  Widget _TextFielPassword(){
    return  Container(
      margin: EdgeInsets.symmetric(horizontal: 50, vertical:5),
      decoration: BoxDecoration(
          color: Mycolors.primaryOpacityColor,
          borderRadius: BorderRadius.circular(30)
      ),
      child: TextField(
        decoration: InputDecoration(
            hintText: 'Contraseña',
            border: InputBorder.none,
            contentPadding: EdgeInsets.all(15),
            hintStyle: TextStyle(
                color:Mycolors.primaryColorDark
            ),
            prefixIcon: Icon(
                Icons.lock,
                color:Mycolors.primaryColor
            )
        ),
      ),
    );
  }

  Widget _ButtonLogin(){
    return Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 50 ,  vertical: 30),
        child: ElevatedButton(
        onPressed: () {} ,
        child: Text('Ingresar'),
        style: ElevatedButton.styleFrom(
          primary: Mycolors.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          padding: EdgeInsets.symmetric(vertical:15)
        ),
    ),
    );
  }

  Widget _textDonthaveAccount(){
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'No tienes Cuenta?',
          style: TextStyle(color: Mycolors.primaryColor),
        ),
        SizedBox(width: 7),
        GestureDetector(
          onTap:() {
            Navigator.pushNamed(context, 'register');
          },
          child: Text(
            'Registrate',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Mycolors.primaryColor),
          ),
        ),
      ],
    );
  }
}

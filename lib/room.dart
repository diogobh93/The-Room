import 'package:TheRoom/exposure.dart';
import 'package:TheRoom/models/equipments.dart';
import 'package:flutter/material.dart';

class Room extends StatefulWidget {
  const Room({Key key}) : super(key: key);

  @override
  _RoomState createState() => _RoomState();
}

class _RoomState extends State<Room> {
  navigatorExposure(Equipments element) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => Exposure(equipment: element)));
  }

  List<Equipments> userProfile = [
    Equipments(
        tag: 'flutterAnimation1',
        title: 'Rack Linea Retrô Preto',
        price: 'R\$ 237,58',
        description:
            "O Rack é uma peça chave de qualquer sala de estar e continua em alta para casas e apartamentos, o móvel ideal para você instalar sua TV, colocar seu Home Theater, DVD, videogame e outros aparelhos eletrônicos. \n\n COR DO PRODUTO: Preto ALTURA (CM): 64 LARGURA (CM): 180 PROFUNDIDADE (CM): 38 MATERIAL: 100% MDP / Pés em Madeira TIPO DE PINTURA: Texturizado ( Fosco ).",
        image: 'assets/images/rack.png'),
    Equipments(
        tag: 'flutterAnimation2',
        title: 'Smart TV LED 32',
        price: 'R\$ 1.299,00',
        description:
            "Tela LED de 32 e resolução HD, ela oferece uma quantidade muito maior de detalhes, mais nitidez e cores vibrantes que vão surpreender você e todos seus amigos e familiares. A conectividade Wi-Fi Direct e as diversas entradas HDMI, USB e ethernet vão manter você sempre conectado e por dentro de tudo. Além disso, ela também conta com sistema operacional Tizen, processador Hyper Real, HDR e sistema de espelhamento de smartphone para TV.",
        image: 'assets/images/tv.png'),
    Equipments(
        tag: 'flutterAnimation3',
        title: 'Planta Decoração',
        price: 'R\$ 30,00',
        description:
            "Se você gosta ou aprecia plantas, mais não tem tempo, costume ou anda distante da natureza? Nós temos a solução!! Decore sua casa, energize ao seu redor com aquela sensação de tranquilidade, relaxamento e aquele aconchego, aposte nas plantas artificiais realistas, acertando em cheio na decoração do seu lar, local de trabalho, aquele cantinho especial só seu, embelezando o seu ambiente.",
        image: 'assets/images/planta.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/background.jpg'),
              fit: BoxFit.fill,
            ),
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [elementRack(), elementTV(), elementPlant()],
          ),
        ),
      ),
    );
  }

  Widget elementRack() {
    return Positioned(
      bottom: 55,
      child: Container(
        child: Hero(
          tag: userProfile[0].tag,
          child: GestureDetector(
            onTap: () => {navigatorExposure(userProfile[0])},
            child: Image.asset(userProfile[0].image,
                width: MediaQuery.of(context).size.width * 0.95,
                height: MediaQuery.of(context).size.height * 0.20),
          ),
        ),
      ),
    );
  }

  Widget elementTV() {
    return Positioned(
      top: 220,
      child: Hero(
        tag: userProfile[1].tag,
        child: GestureDetector(
          onTap: () => {navigatorExposure(userProfile[1])},
          child: PhysicalModel(
            color: Colors.black,
            elevation: 9.0,
            child: Image.asset(userProfile[1].image,
                height: MediaQuery.of(context).size.height * 0.20),
          ),
        ),
      ),
    );
  }

  Widget elementPlant() {
    return Positioned(
      right: 30,
      bottom: 170,
      child: Hero(
        tag: userProfile[2].tag,
        child: GestureDetector(
          onTap: () => {navigatorExposure(userProfile[2])},
          child: Image.asset(userProfile[2].image,
              width: MediaQuery.of(context).size.width * 0.20,
              height: MediaQuery.of(context).size.height * 0.15),
        ),
      ),
    );
  }
}

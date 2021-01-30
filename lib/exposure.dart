import 'package:TheRoom/models/equipments.dart';
import 'package:flutter/material.dart';

class Exposure extends StatefulWidget {
  final Equipments equipment;

  const Exposure({Key key, this.equipment}) : super(key: key);

  @override
  _ExposureState createState() => _ExposureState();
}

class _ExposureState extends State<Exposure> {
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
            children: [
              arrowBack(),
              elementImage(),
              cardBody(),
            ],
          ),
        ),
      ),
    );
  }

  Widget arrowBack() {
    return Positioned(
      top: 3,
      child: InkWell(
        onTap: () => Navigator.pop(context),
        child: Padding(
            padding: const EdgeInsets.all(10),
            child: Icon(Icons.arrow_back_ios_outlined,
                size: 20, color: Theme.of(context).accentColor)),
      ),
    );
  }

  Widget elementImage() {
    final sizeDevice = MediaQuery.of(context).size;
    return Positioned(
      top: 1,
      child: Container(
        width: sizeDevice.width,
        height: sizeDevice.height * 0.35,
        alignment: Alignment.center,
        child: Hero(
          tag: widget.equipment.tag,
          child: Image.asset('${widget.equipment.image}',
              height: MediaQuery.of(context).size.height * 0.20),
        ),
      ),
    );
  }

  Widget cardBody() {
    final sizeDevice = MediaQuery.of(context).size;
    final textScale = MediaQuery.of(context).textScaleFactor;
    Equipments item = widget.equipment;
    return Positioned(
      bottom: -10,
      child: Container(
        height: sizeDevice.height * 0.65,
        width: sizeDevice.width,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 6,
              blurRadius: 7,
              offset: Offset(0, 8), // changes position of shadow
            ),
          ],
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30), topLeft: Radius.circular(30)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(right: 25, bottom: 5),
                    child: Text(
                      item.title,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 20 * textScale,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.pink[50],
                        borderRadius: BorderRadius.circular(50)),
                    child: Icon(Icons.shopping_bag_outlined,
                        size: 25, color: Theme.of(context).accentColor)),
              ],
            ),
            Text(
              item.price,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Theme.of(context).accentColor,
                fontSize: 20 * textScale,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 25),
            Divider(),
            SizedBox(height: 10),
            Container(
              height: sizeDevice.height * 0.30,
              child: SingleChildScrollView(
                child: Text(
                  item.description,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 14 * textScale,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            Spacer(),
            Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(bottom: 20),
                width: double.infinity,
                child: Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Theme.of(context).accentColor,
                      borderRadius: BorderRadius.circular(25)),
                  child: Text("Adicionar no carrinho",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14 * textScale,
                        fontWeight: FontWeight.w500,
                      )),
                ))
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CartApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class CartApp extends StatefulWidget {
  const CartApp({super.key});

  @override
  State<CartApp> createState() => _CartAppState();
}

class _CartAppState extends State<CartApp> {
  int orangeAmount = 0;
  int berryAmount = 0;
  int grapeAmount = 0;
  int carrotAmount = 0;
  int totalItems = 0;
  int subTotal = 0;
  int taxes = 0;
  int cartTotal = 0;

  void addSubTotal(int amount) {
    setState(() {
      subTotal += amount;
      calcTax(subTotal);
      calcCartTotal();
      calcTotalItems();
    });
  }

  void removeSubTotal(int amount) {
    setState(() {
      subTotal -= amount;
      calcTax(subTotal);
      calcCartTotal();
      calcTotalItems();
    });
  }

  void calcTotalItems() {
    totalItems = orangeAmount + berryAmount + grapeAmount + carrotAmount;
  }

  void calcTax(int amount) {
    setState(() {
      taxes = (amount * 0.15) as int;
    });
  }

  void calcCartTotal() {
    setState(() {
      cartTotal = subTotal + taxes;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Cart', style: TextStyle(color: Colors.red),),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(8),
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(8)
                  ),
                  child: Image(image: AssetImage('assets/orange.jpg'), fit: BoxFit.cover, height: 100, width: 100,),
                ),
                SizedBox(width: 15,),
                Column(
                  children: [
                    Text('Orange - XX Traders', style: TextStyle(color: Colors.red, fontSize: 20),),
                    Text('Rs.300/2KG', style: TextStyle(color: Colors.grey, fontSize: 12),),
                    SizedBox(height: 20,),
                    Row(
                      children: [
                        ElevatedButton(onPressed: () {
                          if (orangeAmount > 0) {
                            orangeAmount--;
                            removeSubTotal(900);
                          }
                        }, child: Text('-', style: TextStyle(color: Colors.red, fontSize: 25)), style: 
                          ButtonStyle(
                            shape: WidgetStatePropertyAll(CircleBorder()),
                            side: WidgetStatePropertyAll(BorderSide(color: Colors.red, width: 3))
                          ),),
                        SizedBox(width: 10,),
                        Text(orangeAmount.toString(), style: TextStyle(color: Colors.red),),
                        SizedBox(width: 10,),
                        ElevatedButton(onPressed: () {
                          orangeAmount++;
                          addSubTotal(900);
                        }, child: Icon(Icons.add, color: Colors.red,),style:
                        ButtonStyle(
                            shape: WidgetStatePropertyAll(CircleBorder()),
                            side: WidgetStatePropertyAll(BorderSide(color: Colors.red, width: 3))
                        ),),
                      ],
                    )
                  ],
                )
              ],
            ),
            SizedBox(height: 30,),
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(8),
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(8)
                  ),
                  child: Image(image: AssetImage('assets/berry.jpg'), fit: BoxFit.cover, height: 100, width: 100,),
                ),
                SizedBox(width: 15,),
                Column(
                  children: [
                    Text('Berry - WXY Traders', style: TextStyle(color: Colors.red, fontSize: 20),),
                    Text('Rs.300/2KG', style: TextStyle(color: Colors.grey, fontSize: 12),),
                    SizedBox(height: 20,),
                    Row(
                      children: [
                        ElevatedButton(onPressed: () {
                          if (berryAmount > 0) {
                            berryAmount--;
                            removeSubTotal(900);
                          }
                        }, child: Text('-', style: TextStyle(color: Colors.red, fontSize: 25)),style:
                        ButtonStyle(
                            shape: WidgetStatePropertyAll(CircleBorder()),
                            side: WidgetStatePropertyAll(BorderSide(color: Colors.red, width: 3))
                        ),),
                        SizedBox(width: 10,),
                        Text(berryAmount.toString(), style: TextStyle(color: Colors.red),),
                        SizedBox(width: 10,),
                        ElevatedButton(onPressed: () {
                          berryAmount++;
                          addSubTotal(900);
                        }, child: Icon(Icons.add, color: Colors.red,),style:
                        ButtonStyle(
                            shape: WidgetStatePropertyAll(CircleBorder()),
                            side: WidgetStatePropertyAll(BorderSide(color: Colors.red, width: 3))
                        ),),
                      ],
                    )
                  ],
                )
              ],
            ),
            SizedBox(height: 30,),
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(8),
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(8)
                  ),
                  child: Image(image: AssetImage('assets/grape.jpg'), fit: BoxFit.cover, height: 100, width: 100,),
                ),
                SizedBox(width: 15,),
                Column(
                  children: [
                    Text('Grapes - AGR Traders', style: TextStyle(color: Colors.red, fontSize: 20),),
                    Text('Rs.50/2KG', style: TextStyle(color: Colors.grey, fontSize: 12),),
                    SizedBox(height: 20,),
                    Row(
                      children: [
                        ElevatedButton(onPressed: () {
                          if (grapeAmount > 0) {
                            grapeAmount--;
                            removeSubTotal(100);
                          }
                        }, child: Text('-', style: TextStyle(color: Colors.red, fontSize: 25)),style:
                        ButtonStyle(
                            shape: WidgetStatePropertyAll(CircleBorder()),
                            side: WidgetStatePropertyAll(BorderSide(color: Colors.red, width: 3))
                        ),),
                        SizedBox(width: 10,),
                        Text(grapeAmount.toString(), style: TextStyle(color: Colors.red),),
                        SizedBox(width: 10,),
                        ElevatedButton(onPressed: () {
                          grapeAmount++;
                          addSubTotal(100);
                        }, child: Icon(Icons.add, color: Colors.red,),style:
                        ButtonStyle(
                            shape: WidgetStatePropertyAll(CircleBorder()),
                            side: WidgetStatePropertyAll(BorderSide(color: Colors.red, width: 3))
                        ),),
                      ],
                    )
                  ],
                )
              ],
            ),
            SizedBox(height: 30,),
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(8),
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(8)
                  ),
                  child: Image(image: AssetImage('assets/carrot.jpg'), fit: BoxFit.cover, height: 100, width: 100,),
                ),
                SizedBox(width: 15,),
                Column(
                  children: [
                    Text('Carrot - GAD Traders', style: TextStyle(color: Colors.red, fontSize: 20),),
                    Text('Rs.250/2KG', style: TextStyle(color: Colors.grey, fontSize: 12),),
                    SizedBox(height: 20,),
                    Row(
                      children: [
                        ElevatedButton(onPressed: () {
                          if (carrotAmount > 0) {
                            carrotAmount--;
                            removeSubTotal(500);
                          }
                        }, child: Text('-', style: TextStyle(color: Colors.red, fontSize: 25)),style:
                        ButtonStyle(
                            shape: WidgetStatePropertyAll(CircleBorder()),
                            side: WidgetStatePropertyAll(BorderSide(color: Colors.red, width: 3))
                        ),),
                        SizedBox(width: 10,),
                        Text(carrotAmount.toString(), style: TextStyle(color: Colors.red),),
                        SizedBox(width: 10,),
                        ElevatedButton(onPressed: () {
                          carrotAmount++;
                          addSubTotal(500);
                        }, child: Icon(Icons.add, color: Colors.red,),style:
                        ButtonStyle(
                            shape: WidgetStatePropertyAll(CircleBorder()),
                            side: WidgetStatePropertyAll(BorderSide(color: Colors.red, width: 3))
                        ),),
                      ],
                    )
                  ],
                )
              ],
            ),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text('Subtotal(${totalItems} Items)', style: TextStyle(color: Colors.grey, fontSize: 25),),
                    SizedBox(height: 25,),
                    Text('Tax', style: TextStyle(color: Colors.grey, fontSize: 25),),
                    SizedBox(height: 25,),
                    Text('Cart Total', style: TextStyle(color: Colors.red, fontSize: 25),),
                  ],
                ),
                SizedBox(width: 30,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text('RS.${subTotal}', style: TextStyle(color: Colors.grey, fontSize: 25),),
                    SizedBox(height: 25,),
                    Text('RS.${taxes}', style: TextStyle(color: Colors.grey, fontSize: 25),),
                    SizedBox(height: 25,),
                    Text('RS.${cartTotal}', style: TextStyle(color: Colors.red, fontSize: 25),)
                  ],
                )
              ]
            ),
            SizedBox(height: 40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Your total is RS.${cartTotal}')));
                }, child: Text('Secure Checkout', style: TextStyle(color: Colors.white),), style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.red),
                  shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.zero))),
                ),),
              ],
            )
          ],
        ),
      ),
    );
  }
}

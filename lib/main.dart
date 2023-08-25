import 'package:flutter/material.dart';

void main() {
  runApp(const Contador());
}

class Contador extends StatefulWidget {
  const Contador({ Key? key }) : super(key: key);

  @override
  _ContadorState createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {

  int count = 0;

    void increment(){
      setState(() {
        count++;
      });
    print(count);
  }

  void decrement(){
    setState(() {
      count--;
    });  
    print(count);
  }
   @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 221, 5, 5),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("asset/restaurant.png"),
            fit: BoxFit.cover
            )
          ),
        
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            const Text("Pode entrar!", 
            style: TextStyle(fontSize: 30, color: Colors.white),
            ),
            Padding(padding: const EdgeInsets.all(40),
            child: Text(count.toString(),
             style: TextStyle(fontSize: 100, color: Colors.white))),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: decrement,
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    fixedSize: Size(100, 100),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24)
                    )
                  ), 
                  child: Text("Saiu", style: TextStyle(fontSize: 16, color: Colors.black)),
                ),

                SizedBox(width: 64,),

                TextButton(onPressed: increment,
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                  fixedSize: Size(100, 100),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)
                  )
                ), 
                child: Text("Entrou", style: TextStyle(fontSize: 16, color: Colors.black)),
                )
              ],
            )
          ],
        ),
      ),
    ));
  }
}
  
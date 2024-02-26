import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var num1=0,num2=0,sum=0;

  final TextEditingController t1= TextEditingController(text: "");
  final TextEditingController t2= TextEditingController(text: "");

  void doAdd(){
    setState(() {
      num1=int.parse(t1.text);
      num2=int.parse(t2.text);
      sum=num1+num2;
    });

  }
  void doSub(){
    setState(() {
      num1=int.parse(t1.text);
      num2=int.parse(t2.text);
      sum=num1-num2;
    });

  }
  void doMul(){
    setState(() {
      num1=int.parse(t1.text);
      num2=int.parse(t2.text);
      sum=num1*num2;
    });

  }
  void doDiv(){
    setState(() {
      num1=int.parse(t1.text);
      num2=int.parse(t2.text);
      sum=num1~/num2;
    });

  }
  void doClear(){
    setState(() {
      t1.text="0";
      t2.text="0";
      sum=0;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.orange,
        centerTitle: true,
        title: const Text("Calculator",style:TextStyle(color: Colors.white),),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25),
            bottomRight: Radius.circular(25),
          )
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(80.0),
        child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Output:$sum",style: const TextStyle(
            fontSize: 20.0,color: Colors.purple,fontWeight: FontWeight.bold,
          ),),
          TextField(
            keyboardType: TextInputType.number,
            controller: t1,
            decoration: const InputDecoration(
              hintText: "0",
            ),
          ),
          const Padding(padding: EdgeInsets.only(top: 5.0),),
          TextField(
            controller: t2,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              hintText: "0",
            ),
          ),
          const Padding(padding: EdgeInsets.only(top: 30.0)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MaterialButton(onPressed: doAdd,color: Colors.redAccent,splashColor: Colors.yellow,child: const Text("+"),),
              MaterialButton(onPressed: doSub,color: Colors.redAccent,splashColor: Colors.yellow,child: const Text("-"),),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MaterialButton(onPressed: doMul,color: Colors.redAccent,splashColor: Colors.yellow,child: const Text("*"),),
              MaterialButton(onPressed: doDiv,color: Colors.redAccent,splashColor: Colors.yellow,child: const Text("/"),),
            ],
          ),
          MaterialButton(onPressed:doClear,color: Colors.orange,child: const Text("Clear"),)
        ],
      ),
      ),
    );
  }
}

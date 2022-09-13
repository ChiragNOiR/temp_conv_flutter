import 'package:flutter/material.dart';
import 'package:flutter_dropdown/flutter_dropdown.dart';

class HomePageBody extends StatefulWidget {
  const HomePageBody({super.key});

  @override
  State<HomePageBody> createState() => _HomePageBodyState();
}

class _HomePageBodyState extends State<HomePageBody> {
  final items = [ "℃", "℉"];
  String resultBody = '';
  String value1 ="";
  String value2 = "";
  String answer = "";
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 18.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            width: 200.0,
            child: Text(
              'Temperature Converter',
              style: TextStyle(
                color: Colors.white,
                fontSize: 33,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
              child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                 TextField(
                  decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      labelText: 'Input Value',
                      labelStyle: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 16.0,
                        color: Color(0xFF2849E5),
                      )),
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                  controller: _controller,
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    DropDown(
                      items: items,
                      onChanged: (p0)  {
                        setState(() {
                          value1 =p0.toString();
                        });
                      },
                      icon: const Icon(
                        Icons.expand_more,
                        color: Colors.blue,
                      ),
                      hint: const Text(
                        'Temperature',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    FloatingActionButton(
                      onPressed: () {},
                      elevation: 0,
                      backgroundColor: const Color(0xFF2849E5),
                      child: const Icon(Icons.arrow_forward_ios),
                    ),
                    DropDown(
                      items: items,
                      icon: const Icon(
                        Icons.expand_more,
                        color: Colors.blue,
                      ),
                      dropDownType: DropDownType.Button,
                      
                      hint: const Text(
                        'Temperature',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30.0,
                ),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16.0)),
                  child: Column(
                    children: [
                      const Text(
                        'Result',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        answer,
                        style: TextStyle(
                            fontSize: 35.0, color: Colors.blue.shade400),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  width: double.infinity,
                  child: FloatingActionButton.extended(
                    onPressed: () {
                     if(value1=="℃"){
                      setState(() {    
                        // (32°C × 9/5) + 32                   
                      answer = ((double.parse(_controller.text.toString())  * 9/5)+32).toString(); 
                      });
                     }else if(value1=="℉"){
                      setState(() {                        
                      answer = (((double.parse(_controller.text.toString())-32) * 5.0/9.0).toString()); 
                      });
                     }else{
                      setState(() {
                      answer = "No value Selected";
                      });
                     }
                    },
                    label: const Text(
                      'Convert',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w800,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}

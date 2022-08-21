import 'package:flutter/material.dart';
import 'package:midterm_630710326/temperature.dart';


class TempPage extends StatefulWidget{
  @override
  State<TempPage> createState() => _TempPageState();
}

class _TempPageState extends State<TempPage> {
  final _controller = TextEditingController();
  final _tempe = Temper();
  var _feedbackText = '';

  void handleClick(){
    print('Button Click');
    print(_controller.text);
    var temp = int.tryParse(_controller.text);
    if (temp == null) {
      // แจ้ง error
      print('Please Enter a Value To Convert');
      setState(() {
        _feedbackText = 'Please Enter a Value To Convert';
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Midterm Exam'),
      ),
      body: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceAround,
          children:[
            SizedBox(height: 100.0),
            Text('Temperature Converter'),
            SizedBox(height: 100.0),

            Container(

              decoration: BoxDecoration(
                color: Colors.white, //สีพื้นหลังของ Container
                border: Border.all(
                  width: 5.0,
                  color: Colors.deepPurple.shade200,
                ),
                borderRadius: BorderRadius.circular(8.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Column(

                children:[
                  TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter a number',
                    ),
                  ),

                  ElevatedButton(
                    onPressed: handleClick,
                    child: Text('Celsius to Fahrenheit'),
                  ),
                  ElevatedButton(
                    onPressed: handleClick,
                    child: Text('Celsius to Kelvin'),
                  ),
                  ElevatedButton(
                    onPressed: handleClick,
                    child: Text('Fahrenheit to Celsius'),
                  ),
                  ElevatedButton(
                    onPressed: handleClick,
                    child: Text('Fahrenheit to Kelvin'),
                  ),
                  ElevatedButton(
                    onPressed: handleClick,
                    child: Text('Kelvin to Celsius'),
                  ),
                  ElevatedButton(
                    onPressed: handleClick,
                    child: Text('Kelvin to Fahrenheit'),
                  ),
                  Text(_feedbackText),
                ],
              ),

            ),

          ],

        ),

      ),



    );
  }
}
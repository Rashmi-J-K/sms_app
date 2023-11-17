import 'package:flutter/material.dart';

class SMSPage extends StatelessWidget {
  const SMSPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(10.0),
          width: 390.0,
          height: 600.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25.0),
            color: Color.fromARGB(255, 36, 42, 49),
          ),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  width: 390.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Color.fromARGB(255, 163, 214, 235),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Icon(
                              Icons.message,
                              color: Colors.black,
                              size: 24.0,
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Send SMS',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: () {
                            print('Cancel tapped');
                          },
                          child: Icon(
                            Icons.cancel,
                            color: Colors.black,
                            size: 24.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Container(
                child: Container(
                  width: 390.0,
                  height: 55.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.grey,
                    border: Border.all(
                      color: Color.fromARGB(255, 106, 20, 116),
                      width: 1.5,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: TextFormField(
                            style: TextStyle(
                              color: Color.fromARGB(255, 209, 202, 210),
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                            decoration: InputDecoration(
                              hintText: 'To Number',
                              hintStyle: TextStyle(
                                color: Color.fromARGB(255, 92, 88, 88),
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                              border: InputBorder.none,
                            ),
                            validator: (value) {
                              return null;
                            },
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(1.0),
                        child: Icon(
                          Icons.mobile_friendly,
                          color: Color.fromARGB(255, 63, 63, 63),
                          size: 24.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          print('Department Option button pressed!');
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 74, 74, 74),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        child: Row(
                          children: [
                            Text(
                              '   Department   ',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Icon(
                              Icons.arrow_drop_down,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          print('list of the groups Button pressed!');
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 74, 74, 74),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        child: Row(
                          children: [
                            Text(
                              '      Groups       ',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Icon(
                              Icons.arrow_drop_down,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.0),
                  Container(
                    padding: EdgeInsets.all(20.0),
                    width: 390.0,
                    height: 280.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.grey,
                      border: Border.all(
                        color: Color.fromARGB(255, 106, 20, 116),
                        width: 1.5,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              style: TextStyle(
                                color: Color.fromARGB(255, 106, 20, 116),
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                              decoration: InputDecoration(
                                hintText:
                                    'Please select a template or enter a message...',
                                hintStyle: TextStyle(
                                  color: Color.fromARGB(255, 106, 20, 116),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              ),
                              validator: (value) {
                                return null;
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton.icon(
                        onPressed: () {
                          _showSuccessDialog(context);
                        },
                        icon: Icon(Icons.send),
                        label: Text('Send'),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              const Color.fromARGB(255, 95, 94, 96)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void _showSuccessDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      Future.delayed(Duration(milliseconds: 1000), () {
        Navigator.popAndPushNamed(context, '/');
      });
      return AlertDialog(
        content: Container(
          height: 100,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.check_circle,
                color: Colors.green,
                size: 48,
              ),
              SizedBox(height: 10),
              Text(
                'Message Sent Successfully',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}

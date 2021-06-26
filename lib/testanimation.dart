import 'package:flutter/material.dart';

class Testanimation extends StatefulWidget {
  @override
  _TestanimationState createState() => _TestanimationState();
}

class _TestanimationState extends State<Testanimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    _controller = new AnimationController(
        vsync: this, duration: new Duration(seconds: 7));
    super.initState();

    _controller.repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('mon titre de onglet'),
      ),
      body: Center(
          child: new AnimatedBuilder(
        animation: _controller,
        child: Container(
          width: 200.0,
          height: 200.0,
          child: Container(
            color: Colors.blue,
          ),
        ),
            builder: (context, child) {
              var animationController;
              return new Transform.rotate(
                angle: animationController.value * 6.3,
                child: Container(
                  color: Colors.red,
                ),
              );

            },










          )),
      bottomNavigationBar: BottomAppBar(
        color: Colors.indigoAccent,
        child: Container(height: 50.0),
        shape: const CircularNotchedRectangle(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => null,
        tooltip: 'test de float',
        child: const Icon(Icons.wb_sunny_outlined),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

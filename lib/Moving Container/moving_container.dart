import 'package:flutter/material.dart';

class MovingContainer extends StatefulWidget {
  @override
  _MovingContainerState createState() => _MovingContainerState();
}

class _MovingContainerState extends State<MovingContainer>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();
    // Initialize the animation controller with the desired duration
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1), // Adjust the duration as needed
    );

    // Create the tween for the container's position
    _animation = Tween<Offset>(
      begin: Offset(-10, -10), // Starting position
      end: Offset(10, 10), // Ending position (you can change this)
    ).animate(_controller);

    // Start the animation
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose(); // Clean up the animation controller
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Moving Container'),
      ),
      body: Center(
        child: AnimatedBuilder(
          animation: _animation,
          builder: (context, child) {
            return Transform.translate(
              offset: _animation.value, // Apply the animation's value to the container's position
              child: Flexible(

              child: Container(
                color: Color.fromARGB(255, 255, 248, 230),
                
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8, 20, 8, 0),
                  child: 
                  
                  AnimatedContainer(
                    
                    duration: Duration(
                      seconds: 3
                    ),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          spreadRadius: 0,
                          blurRadius: 7, 
                        )
                      ],
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                    
                  ),
                ),
              ),
            )
            );
          },
        ),
      ),
    );
  }
}

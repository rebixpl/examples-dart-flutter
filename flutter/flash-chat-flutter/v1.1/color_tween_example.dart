animation = ColorTween(begin: Colors.red, end: Colors.blue).animate(controller); // it makes animation transition between two colors
    
// TO USE THIS \/
backgroundColor: animation.value,

void main(){
  Animal().move();
  Fish().move(); // The Fish class inherits move() method from Animal class !!
  
  print("\n");
  
  Duck().fly(); // Duck can fly
  Duck().swim(); // Duck can swim
  
  print("\n");
  
  
}

class Animal {
  
  void move() {
    print('changed position');
  }
}

class Fish extends Animal{
  @override // override means editing (overriding) other inherited class or class member
  void move(){
    super.move(); // let's do what our super class does (Animal)
    print('by swimming');
  }
}

class Bird extends Animal{
  @override // override means editing (overriding) other inherited class or class member
  void move(){
    super.move(); // let's do what our super class does (Animal)
    print('by flying');
  }
}

// Mixins allows you to reuse a class's code in multiple class hierarchies.
// We create mixin using 'mixin' keyword before mixin name
mixin CanSwim {
  void swim(){
    print('changing position by swimming');
  }
}

mixin CanFly {
  void fly(){
    print('changing position by flying');
  }
}

// Adding multiple mixins to class (mixins are like standalone class members which you can use many of them in class) you need to use mixins while there is need to extend out class more than by one class (that is a limit, we can extend class by one other class, but we can extend it by many mixins). We add mixins by using 'with' keyword.
class Duck extends Animal with CanSwim, CanFly {
  
}

class Airplane with CanFly{
  
}

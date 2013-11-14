void setup() {

  Person person1 = new Person("xinxin", 170, 20);
  //println(person1.giveMeTheName());
  //person1.giveMeYourName();
  //person1.giveMeYourHeight();
  println(person1.loseWeight(10));
  person1.giveMeYourWeight();
}


//doe that is used
class Person {
  String name;
  int hei;
  int weight;

  Person(String name, int hei, int weight) {
    this.name = name;
    this.hei = hei;
    this.weight = weight;
  }

  String giveMeTheName() {
    return name;
  }

  void giveMeYourName() {
    println(name);
  }

  void giveMeYourHeight() {
    println(hei);
  }
  
  void giveMeYourWeight() {
    println(weight);
  }
  
  int loseWeight(int value){
   weight = weight - value;
    return  weight;
  }
}

class SimpleLine {

  float x1, y1, x2, y2;

  //constructor
  SimpleLine() {
    this.x1 = random(0, width);
    this.y1 = random(0, height);
  }
}


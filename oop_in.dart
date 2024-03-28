// Interface definition
abstract class Produce {
  void
      harvest(); // Method to be implemented by classes that implement this interface
}

// Base class
class Fruit implements Produce {
  String name;

  Fruit(this.name); // Constructor

  @override
  void harvest() {
    print('Harvesting $name');
  }
}

// Subclass that implements Produce interface and overrides inherited method
class Vegetable extends Fruit {
  Vegetable(String name)
      : super(name); // Constructor calling superclass constructor

  @override
  void harvest() {
    print('Harvesting $name as a vegetable');
  }
}

// Method demonstrating the use of a loop
void harvestProduce(List<Produce> produceList) {
  for (var produce in produceList) {
    produce.harvest(); // Call the harvest method for each produce
  }
}

void main() {
  // Initialize instances of Fruit and Vegetable
  final apple = Fruit('Apple');
  final tomato = Vegetable('Tomato');

  // Demonstrate the use of a loop to harvest produce
  final produceList = [apple, tomato];
  harvestProduce(produceList);
}

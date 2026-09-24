
abstract class Human {
    void walk(){
        print("walk style");
    }
}

class Iam extends Human{
    void walk(){
        print("good walk");
    }
}


greet(){
    Iam riswan=Iam();

    riswan.walk();
}



//polymorphism 

class Animal {
    void sound(){
        print("animal sound");
    }
}

class Dog extends Animal {
    // @override
    void sound(){
        print("dog sound");
    }
}

class Cat extends Animal {

    // @override
    void sound(){
        print("cat sound");
    }
}

void main(){
   greet();


    Dog dog=Dog();
    Cat cat=Cat();

    dog.sound();
    cat.sound();
 }


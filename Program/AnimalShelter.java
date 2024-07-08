package Program;

import java.util.ArrayList;
import java.util.List;
public class AnimalShelter {

    public List<Animal> animalList;

    public AnimalShelter() {
        this.animalList = new ArrayList<>();
    }

    public void add(Animal animal) {
        this.animalList.add(animal);
    }

    public static void fillAnimalShelter(AnimalShelter animalShelter) {
        animalShelter.add(new Cat("Фанни", "2014-03-27", "Пошли Зайчик Кыш"));
        animalShelter.add(new Cat("Маврик", "1999-10-12", "Сидеть Служи Охота"));
        animalShelter.add(new Dog("Люси", "1996-02-01", "Апорт Лапу Можно Рядом"));
        animalShelter.add(new Dog("Герда", "2018-12-01", "Лежать Домой Фу Ползи Голос"));
        animalShelter.add(new Dog("Джерри", "2014-09-01", "Место Рядом"));
        animalShelter.add(new Donkey("Калигула", "2021-06-10","Иди Тпру Лежать"));
        animalShelter.add(new Donkey("Иа", "2009-10-10","Иди Стой Поклон"));
        animalShelter.add(new Camel("Гена", "1984-07-10", "Иди Сидеть Есть"));
        animalShelter.add(new Camel("Беата", "1989-02-05", "Иди Стой Сидеть"));
        animalShelter.add(new Horse ("Луиза", "2010-04-02", "Шагом Рысь Галоп Тпру"));
        animalShelter.add(new Horse ("Капа", "2011-05-07", "Шагом Рысь Тпру"));
        animalShelter.add(new Hamster ("Стасик", "2024-02-24", "На_ручки"));
        animalShelter.add(new Hamster ("Кроха", "2023-08-25", "На_ручки Лежать"));
        animalShelter.add(new Hamster ("Агафья", "2022-04-04", "В_домик Зайчик"));

    }
}

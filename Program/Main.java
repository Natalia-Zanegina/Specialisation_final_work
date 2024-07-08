package Program;

public class Main {

    public static void main(String[] args) {
        AnimalShelter animalShelter = DBService.loadFromBD();
        Menu menu = new Menu();
        menu.start(animalShelter);
    }
}

/**
 * Created by krasnovoronka on 09/07/2022.
 */

public with sharing virtual class Human {
    public String name;

    public Human(String name){
        this.name = name;
    }

    public String getName(){
        return name;
    }
}
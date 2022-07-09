/**
 * Created by krasnovoronka on 09/07/2022.
 */

public with sharing class God {

    public Man createMan(String name){
        return new Man(name);
    }

    public Women createWomen(String name){
        return new Women(name);
    }
}
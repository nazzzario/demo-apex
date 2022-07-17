/**
 * Created by krasnovoronka on 13/07/2022.
 */

public with sharing class BoxingRing {

    public static Fighter fight(Fighter fighterOne, Fighter fighterTwo){
        while (true){
            System.debug(fighterOne.name + ' health:' + fighterOne.health);
            System.debug(fighterTwo.name + ' health:' + fighterTwo.health);

            fighterTwo.health -= fighterOne.damagePerAttack;
            fighterOne.health -= fighterTwo.damagePerAttack;

            if(fighterOne.health <= 0){
                System.debug(fighterTwo.name + ' won');
                return fighterTwo;
            }

            else if(fighterTwo.health <= 0){
                System.debug(fighterOne.name + ' won');
                return fighterOne;
            }
        }
        throw new IllegalArgumentException('Unexpected exception');

    }
}
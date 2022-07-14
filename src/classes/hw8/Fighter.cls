/**
 * Created by krasnovoronka on 13/07/2022.
 */

public with sharing class Fighter {
    public String name { get; set;}

    public Integer health { get; set; }

    public Integer damagePerAttack { get; set;}

    public Fighter(String name, Integer health, Integer damagePerAttack) {
        this.name = name;
        this.health = health;
        this.damagePerAttack = damagePerAttack;
    }
}
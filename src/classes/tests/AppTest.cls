/**
 * Created by krasnovoronka on 09/07/2022.
 */

@IsTest
private class AppTest {

    @IsTest
    static void shouldCreateObjects() {
        God god = new God();
        Man adam = god.createMan('Adam');
        Women eve = god.createWomen('Eve');

        System.assertEquals('Adam', adam.getName());
        System.assertEquals('Eve', eve.getName());
    }
}
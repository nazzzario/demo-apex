/**
 * Created by krasnovoronka on 20/07/2022.
 */

public with sharing class OpportunityUtil {

    private static List<Schema.PicklistEntry> stages = getOpportunitiesStages();

    public static void updateOpportunityStage(String stageNew, String stageOld) {
        List<Opportunity> opportunitiesToUpdate = new List<Opportunity>();
        if (isValidStage(stageNew) && isValidStage(stageOld)) {
            for (Opportunity o : [SELECT Id, Name FROM Opportunity WHERE StageName = :stageOld]) {
                o.StageName = stageNew;
                opportunitiesToUpdate.add(o);
            }
            update opportunitiesToUpdate;
        }
    }

    private static Boolean isValidStage(String stage) {
        for(Schema.PicklistEntry s : stages){
            if(s.label.equals(stage)){
                return true;
            }
        }
       return false;
    }

    private static List<Schema.PicklistEntry> getOpportunitiesStages() {
        return Opportunity.StageName.getDescribe().getPicklistValues();
    }
}
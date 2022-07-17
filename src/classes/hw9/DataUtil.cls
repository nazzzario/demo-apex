/**
 * Created by krasnovoronka on 16/07/2022.
 */

public with sharing class DataUtil {

    public static List<Integer> getUniqueValuesList(List<Integer> list) {
        Set<Integer> set = new Set<Integer>(list);
        return new List<Integer>(set);
    }

    public static List<Integer> getUniqueValuesListWithoutSet(List<Integer> list) {
        List<Integer> resultList = new List<Integer>();
        for (Integer i : list) {
            if (!resultList.contains(i)) {
                resultList.add(i);
            }
        }
        return resultList;
    }

    public static List<Contact> findContactsByFirstName(List<Contact> allContacts, String firstName) {
        List<Contact> result = new List<Contact>();
        for (Contact c : allContacts) {
            if (c.FirstName.equals(firstName)) {
                result.add(c);
            }
        }
        return result;
    }

    public static Opportunity findOpportunityWithBiggestAmount(List<Opportunity> allOpportunities) {
        if (allOpportunities.size() == 1) {
            return allOpportunities.get(0);
        }
        Opportunity maxAmount = allOpportunities.get(0);
        for (Opportunity o : allOpportunities) {
            if (o.Amount > maxAmount.Amount) {
                maxAmount = o;
            }
        }
        return maxAmount;
    }

    public static List<Integer> getDigitsList(Integer number){
        List<Integer> res = new List<Integer>();
        String [] stringArray = String.valueOf(number).split('');
        for(String s: stringArray){
            res.add(Integer.valueOf(s));
        }
        return res;
    }

}
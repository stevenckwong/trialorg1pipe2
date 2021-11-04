@isTest
public with sharing class Story50ClassTest {

    @isTest static void testStory50GetStatement() {
        Test.startTest();
        Story50Class obj = new Story50Class();
        String val = obj.getStatement();
        System.assertEquals('Hello World ', val);
        Test.stopTest();
    }

}
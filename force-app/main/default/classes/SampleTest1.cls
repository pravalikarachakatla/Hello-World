@isTest
public class SampleTest1 {
    @isTest
    public static void display()
    {
        System.assertEquals('Hi','Hi');
    }
    @isTest
    public static void display1()
    {
      System.assertEquals(4,new AddTest().add(2,2));  
    }
}
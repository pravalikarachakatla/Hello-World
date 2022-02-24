public class ParentClass extends ChildClass {
    public ParentClass()
    {
        System.debug('ChildCase');
       
    }
    public ParentClass(Decimal no1, Decimal no2){
        Super();
        System.debug('Sum of 2 Decimals is :'+(no1+no2)+'ParentClass');
    }
                     public void display()
                     {
                         System.debug('display ParentTest');
                     }

}
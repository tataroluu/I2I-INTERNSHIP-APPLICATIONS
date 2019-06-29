 package primeNumbers;
 
 import java.util.Scanner;
 
public class primeNumbers 
{
        
        
    public static void main(String[] args) 
    {
        
        Scanner vi_scanner=new Scanner(System.in);

        int counter,scannerInput1;
       
        System.out.println("Please enter a number");
        
            scannerInput1=vi_scanner.nextInt();
        
        for(int i=2; i<=scannerInput1; i++)
        {
            counter=0;
        
            for(int j=2; j<=i/2; j++)
            {
                if(i%j==0) counter++;
            }
                if(counter==0) System.out.println(i);
        }
        }
}  

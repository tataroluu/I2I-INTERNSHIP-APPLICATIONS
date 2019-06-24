package triangle;
public class triangle 
{   
	public static void main(String[] args) 
	{
        	int starSize=7 ;        
        
        for (int i = 1; i < starSize; i++)
        {
        	for (int space = starSize; space > i ; space--)
        	{
        		System.out.print(" ");
        	}

        		for (int star = 0; star < (i*2)-1; star++)
        		{
        			System.out.print("*");
        		}
        			System.out.println();
        } 
    }
}

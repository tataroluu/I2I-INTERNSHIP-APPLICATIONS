package numberOfRepeatToFind;

import java.util.Set;
import java.util.HashSet;

public class numberOfRepeatToFind 
{

	private void findRepeatedNumbers(int array[]) 
	{
		int i = 0;
		Set<Integer> noRepeated = new HashSet<Integer>();
		Set<Integer> repeat = new HashSet<Integer>();

		for (i = 0; i < array.length; i++) 
		{
			if (!noRepeated.contains(array[i])) 
			{
				noRepeated.add(array[i]);
				continue;
			}
			repeat.add(array[i]);
		}
				System.out.println("" + noRepeated);
		
			if (repeat.isEmpty()) 
			{			
				System.out.println("Burada tekrar yok");
			}
		else 
		{
			Object[] vi_repaeted = repeat.toArray();

			if (vi_repaeted.length == 1) 
			{
				System.out.println("Tekrar eden numara :" + vi_repaeted[0]);
			}
				else 
				{
					System.out.println("Tekrarlanan sayılar :" + vi_repaeted[0]);
				
					for (i = 1; i < repeat.size(); i++)
						System.out.println(" , " + vi_repaeted[i]);

				}
			}
						System.out.println("");
	}

	public static void main(String[] args) 
	{

		numberOfRepeatToFind repeatedNumber = new numberOfRepeatToFind();

		int[] numberArray1 = { 5, 9, 15, 32, 22, 32, 22 };

		repeatedNumber.findRepeatedNumbers(numberArray1);

	}
}

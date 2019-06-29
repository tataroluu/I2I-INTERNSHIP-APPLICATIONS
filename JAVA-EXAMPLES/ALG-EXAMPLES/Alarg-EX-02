package palindromstring;

import java.util.Scanner;

public class PalindromString 
{
	static Scanner scanner = new Scanner(System.in);

	public static void main(String[] args) 
	{
		int i;

		System.out.println("String Giriniz");
		String GirilenString = scanner.next();

		int StringUzunlugu = GirilenString.length();
		String ikinciString = "";
		for (i = StringUzunlugu - 1; i >= 0; i--) 
		{

			ikinciString = ikinciString + GirilenString.charAt(i);

		if (ikinciString.equals(GirilenString))
			System.out.println(GirilenString + " palindromdur");
		else
			System.out.println(GirilenString + "palindrom değildir.");
		}

	}
}

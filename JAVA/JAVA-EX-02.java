package application;
	
import javafx.application.Application;
import javafx.stage.Stage;
import javafx.scene.Scene;
import javafx.scene.layout.BorderPane;
import java.util.Scanner;

public class Main extends Application {
	@Override
	public void start(Stage primaryStage) {
		try {
			BorderPane root = new BorderPane();
			Scene scene = new Scene(root,400,400);
			scene.getStylesheets().add(getClass().getResource("application.css").toExternalForm());
			primaryStage.setScene(scene);
			primaryStage.show();
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public static void main(String[] args) {
	Scanner scan=new Scanner(System.in);
	System.out.println("bir sayı giriniz");
	int last_number= scan.nextInt();
		for(int i=1;i<=last_number;i++)
		{
			if(i%2!=0 && i%3!=0 && i%5!=0 && i%7!=0 && i%9!=1 && i%11!=1) 
			{

						System.out.println(i);	
			
			}
			else if(i==0 && i<=0 ) 
			{	
				System.out.println("wrong number");
				break;
			}
					
			else if(i==2)
			{
				System.out.println(i);
			}
			else if(i==3)
			{
				System.out.println(i);
			}
			else if(i==5)
			{
				System.out.println(i);
			}
			else if(i==7)
			{
				System.out.println(i);
			}
				
		}
	}
}

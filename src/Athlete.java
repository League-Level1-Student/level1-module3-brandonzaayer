
public class Athlete {
	
	     static int nextBibNumber;
	     static String raceLocation = "New York";
	     static String raceStartTime = "9.00am";

	     String name;
	     int speed;
	     int bibNumber;
	    

	Athlete (String name, int speed){
	     this.name = name;
	     this.speed = speed;
	     nextBibNumber++;
	     this.bibNumber=nextBibNumber;
	     
	}

	public static String main(String[] args) {
	     Athlete lst = new Athlete("Brandon", 1000000);
	     Athlete last = new Athlete("Jacob", 1);
	     return raceLocation;
	     
	}
}

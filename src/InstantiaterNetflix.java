
public class InstantiaterNetflix {
public static void main(String[] args) {
	Movie One = new Movie("Twilight: A New Day", 4);
	Movie Two = new Movie("Twilight: Midnight Strikes Back", 5);
	Movie Three = new Movie("Twilight: Return of the Sunrise", 3);
	Movie Four = new Movie("Twilight: Dawn Awakens", 3);
	Movie Five = new Movie("Twilight: The Last Sunset", 2);
One.getTicketPrice();
Two.getTicketPrice();
Three.getTicketPrice();
Four.getTicketPrice();
Five.getTicketPrice();
NetflixQueue Q = new NetflixQueue();
Q.addMovie(One);
Q.addMovie(Two);
Q.addMovie(Three);
Q.addMovie(Four);
Q.addMovie(Five);
Q.sortMoviesByRating();
Q.printMovies();
System.out.println("The best movie is \"Twilight: Midnight Strikes Back\"");
System.out.println("The second movie is \"Twilight: A New Day\"");
}
}

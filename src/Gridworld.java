import java.awt.Color;
import java.util.Random;

import info.gridworld.actor.Bug;
import info.gridworld.actor.Flower;
import info.gridworld.grid.Location;
import info.gridworld.world.World;

public class Gridworld {
public static void main(String[] args) {
	World  earth = new World();
	Random rand1 = new Random();
	int random = rand1.nextInt(10);
	int random2 = rand1.nextInt(10);
	earth.show();
	Bug lady = new Bug();
	Bug lady2 = new Bug();
	Location gridSpot = new Location(4, 4);
	Location randSpot = new Location(random, random2);
	lady2.setColor(Color.blue);
	lady2.turn();
	lady2.turn();
	earth.add(gridSpot, lady);
	earth.add(randSpot, lady2);
	for (int x = 0; x<10; x++) {
		for(int y =0; y<10; y++) {
			if(x == 4 &&  y == 4) {
continue;
			}
			else if(x == random  && y == random2 ) {
				continue;
		}
		else{
			earth.add(new Location(x,y), new Flower());
		}
	}
}
}
}

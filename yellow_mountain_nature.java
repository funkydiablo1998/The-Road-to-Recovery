public class TheRoadtoRecovery {
 
 //Instance Variables 
 private String toDestination; 
 private int totalDistance; 
 
 //Constructors 
 public TheRoadtoRecovery() { 
  this.toDestination = ""; 
  this.totalDistance = 0; 
 } 
 
 public TheRoadtoRecovery(String toDestination, int totalDistance) { 
  this.toDestination = toDestination; 
  this.totalDistance = totalDistance; 
 } 
 
 //Methods 
 public void setToDestination(String toDestination) { 
  this.toDestination = toDestination; 
 } 
 
 public String getToDestination() { 
  return toDestination; 
 } 
 
 public void setTotalDistance(int totalDistance) { 
  this.totalDistance = totalDistance; 
 } 
 
 public int getTotalDistance() { 
  return totalDistance; 
 } 
 
 public void startTrip() { 
  System.out.println("Trip begins to " + toDestination); 
  for (int i = 0; i < totalDistance; i++) 
   System.out.println("Traveling " + (i+1) + " miles so far");
 } 
 
 public void endTrip() { 
  System.out.println("Trip completed! Congratulations!");
 } 
 
 public static void main(String[] args) { 
  TheRoadtoRecovery roadTrip = new TheRoadtoRecovery("California", 2000);
  roadTrip.startTrip(); 
  roadTrip.endTrip(); 
 } 
}
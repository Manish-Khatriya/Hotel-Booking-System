package book.hotel.entities;
public class Room {
    private String roomtype;
    private int totalRooms;
    private double price;
	public String getRoomtype() {
		return roomtype;
	}
	public void setRoomtype(String roomtype) {
		this.roomtype = roomtype;
	}
	public int getTotalRooms() {
		return totalRooms;
	}
	public void setTotalRooms(int totalRooms) {
		this.totalRooms = totalRooms;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public Room(String roomtype, int totalRooms, double price) {
		super();
		this.roomtype = roomtype;
		this.totalRooms = totalRooms;
		this.price = price;
	}
	public Room() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getStatus() {
		// TODO Auto-generated method stub
		return null;
	}
	
}
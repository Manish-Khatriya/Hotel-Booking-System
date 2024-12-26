package book.hotel.dao;

import book.hotel.entities.Room;

public interface HotelDao {

		void createSchema() throws Exception;

		void createTable() throws Exception;

		int addRoom(Room room) throws Exception;
		
	}



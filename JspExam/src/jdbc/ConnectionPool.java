package jdbc;

import java.sql.*;
import java.util.*;

public class ConnectionPool {

	static {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException ce) {
			ce.printStackTrace();
		}
	}

	private ArrayList<Connection> free;
	private ArrayList<Connection> used;

	private int initialCons = 10;
	private int maxCons = 20;

	private int numCons = 0;

	public int getMaxCons() {
		return maxCons;
	}

private static ConnectionPool getInstance() {
	try {
		if(cp==null) {
			
			
		}
		
	} catch (Exception e) {
		// TODO: handle exception
	}
}

}

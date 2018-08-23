
package chart;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import org.jfree.chart.ChartFactory;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.ChartUtilities;
import org.jfree.chart.plot.PlotOrientation;
import org.jfree.data.xy.XYSeries;
import org.jfree.data.xy.XYSeriesCollection;


public class XYPlotServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 private static final String DB_URL = "jdbc:oracle:thin:@localhost:1521:orcl";
	 private static final String DB_ID = "scott";
	 private static final String DB_PASS = "tiger";
	 public void init() {
	  try {
	   Class.forName("oracle.jdbc.driver.OracleDriver");
	  } catch (Exception e) {
	   e.printStackTrace();
	  }
	 }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 try {
			   Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASS);
			   Statement stmt = con.createStatement();
			   String sql = "select * from stock";
			   ResultSet rs = stmt.executeQuery(sql);
			   XYSeries vs = new XYSeries("Stock Flow");
			   int x = 1;
			   while (rs.next()) {
			    vs.add(x, rs.getInt(2));
			    x += 1;
			    // x++;
			   }
			   XYSeriesCollection ds = new XYSeriesCollection(vs);
			   // drawing chart
			   JFreeChart chart = ChartFactory.createXYLineChart("Stock Average", "Day", "Price", ds,
			     PlotOrientation.VERTICAL, true, true, true);
			   ServletOutputStream out = response.getOutputStream();
			   ChartUtilities.writeChartAsPNG(out, chart, 400, 400);
			  } catch (Exception e) {
			   e.printStackTrace();
			  }
			 
	}

}

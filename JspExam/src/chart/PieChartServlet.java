package chart;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletOutputStream;
//chart lib
import org.jfree.chart.ChartFactory; //make chart
import org.jfree.chart.ChartUtilities; // chart on web
import org.jfree.chart.JFreeChart;
import org.jfree.chart.ChartFactory;
import org.jfree.data.general.DefaultPieDataset;

//@WebServlet("/PieChartServlet")
public class PieChartServlet extends HttpServlet {
 private static final long serialVersionUID = 1L;

 protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
 
   //create data
   DefaultPieDataset dataset = new DefaultPieDataset();
   dataset.setValue("Son-OGong", 63.7);
   dataset.setValue("Jer-PalGae", 37.9);
   dataset.setValue("Sa-OJung", 29.5);
   
   
   //make chart
   JFreeChart chart = ChartFactory.createPieChart("Enery Power", dataset, true, true, false);
   
   
   //show chart
   ServletOutputStream out = response.getOutputStream();
   ChartUtilities.writeChartAsPNG(out, chart, 400, 400); 
   
   //
   
 
  
  
 }

 protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
  
 }
}
 
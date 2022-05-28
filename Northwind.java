import java.sql.*;

public class Northwind {
    public static void main(String[]args){
        try(

                Connection conn= DriverManager.getConnection(
                        "jdbc:mysql://localhost:3306/northwind?", "root","");

                Statement stmt=conn.createStatement();
        ){

            String strSelect="select title,price,qty from northwind";
            System.out.println("The SQL statement is:"+strSelect+"\n");

            ResultSet rset = stmt.executeQuery(strSelect);

            System.out.println("The records selected are:");
            int rowCount=0;
            while(rset.next()){
                String title=rset.getString("title");
                double price=rset.getDouble("price");
                
                System.out.println(title+","+price+ "'"+ rowCount);
            }
            System.out.println("Total number of records="+rowCount);
        }catch(SQLException ex){
            ex.printStackTrace();
        }
    }
}

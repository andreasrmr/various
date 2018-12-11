import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class DbConnect {

    private Connection connection;
    private Statement statement;
    private ResultSet resultSet;

    public DbConnect(){
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/testDB", "root", "password");
            statement = connection.createStatement();

        }catch (Exception e){
            System.out.println("Error:" + e);
        }

    }
    public void getData(){
        try{
            String query = "select * from Persons";
            resultSet = statement.executeQuery(query);
            System.out.println("Records from database");
            while (resultSet.next()){
                String lastName = resultSet.getString("LastName");
                String firstName = resultSet.getString("FirstName");
                String address = resultSet.getString("Address");
                String city = resultSet.getString("City");
                System.out.println("Last name" + lastName + "\nFirstName: " + firstName + "\nAddress: " + address + "\ncity: " + city);

            }
        }catch(Exception e){
            System.out.println("Error: " + e);
        }
    }


}


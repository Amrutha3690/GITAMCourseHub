import java.sql.Connection;
import java.sql.PreparedStatement;

public class UserDAO {

    public boolean registerUser(User user){

        boolean status=false;

        try{

            Connection con=DBConnection.getConnection();

            String sql="INSERT INTO users(full_name,email,password,department,year_of_study,role) VALUES(?,?,?,?,?,?)";

            PreparedStatement ps=con.prepareStatement(sql);

            ps.setString(1,user.getFullName());
            ps.setString(2,user.getEmail());
            ps.setString(3,user.getPassword());
            ps.setString(4,user.getDepartment());
            ps.setInt(5,user.getYearOfStudy());
            ps.setString(6,user.getRole());

            int row=ps.executeUpdate();

            if(row>0){

                status=true;

            }

        }

        catch(Exception e){

            e.printStackTrace();

        }

        return status;

    }

}
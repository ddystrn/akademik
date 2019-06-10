package akademik;

import java.sql.*;

public class Koneksi {

    private Connection con;
    private Statement stmt;
    private final String url = "jdbc:mysql://localhost:3306/";
    private final String db = "akademik";
    private final String user = "root";
    private final String pass = "";
    private PreparedStatement ps;
    private ResultSet rs;

    public Koneksi() throws ClassNotFoundException, SQLException {
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection(url + db, user, pass);
        stmt = con.createStatement();
        con.setAutoCommit(false);
    }

    public void eksekusi(String sql) throws SQLException {
        stmt.execute(sql);
    }
    
    public void select(String sql) throws SQLException{
        ps = con.prepareStatement(sql);
        rs = ps.executeQuery();
    }
    
    public boolean tampilData() throws SQLException{
        return rs.next();
    }
    
    public ResultSet rs(){
        return rs;
    }

    public void tutup() throws SQLException {
        con.commit();
        stmt.close();
        con.close();
    }

}

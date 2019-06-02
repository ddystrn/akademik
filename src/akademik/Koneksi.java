package akademik;

import java.sql.*;

public class Koneksi {

    private Connection con;
    private Statement stmt;
    private final String url = "jdbc:mysql://localhost:3306/";
    private final String db = "akademik";
    private final String user = "root";
    private final String pass = "";

    public Koneksi() throws ClassNotFoundException, SQLException {
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection(url + db, user, pass);
        stmt = con.createStatement();
        con.setAutoCommit(false);
    }

    public void eksekusi(String sql) throws SQLException {
        stmt.execute(sql);
    }

    public void tutup() throws SQLException {
        con.commit();
        stmt.close();
        con.close();
    }

}

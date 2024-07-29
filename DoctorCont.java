
package hsptl;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 * Servlet implementation class DoctorCont
 */
@WebServlet("/DoctorCont")
@MultipartConfig(maxFileSize = 33333333)
public class DoctorCont extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private static final String URL = "jdbc:mysql://localhost:3306/pat";
    private static final String USERNAME = "root";
    private static final String PASSWORD = "12345";

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve form parameters
        String name = request.getParameter("name");
        String address = request.getParameter("address");
        String gender = request.getParameter("gender");
        InputStream istrm = null;

        // Handle file upload
        Part fp = request.getPart("WorkExperience");
        if (fp != null) {
            System.out.println("File Name: " + fp.getName());
            System.out.println("File Size: " + fp.getSize());
            System.out.println("Content Type: " + fp.getContentType());
            istrm = fp.getInputStream();
        }

        // Database connection and SQL execution
        String msg = null;
        try {
            // Optional driver registration
            Class.forName("com.mysql.cj.jdbc.Driver");

            try (Connection con = DriverManager.getConnection(URL, USERNAME, PASSWORD)) {
                String sql = "INSERT INTO doctordata1 (name, address, gender, workexperience) VALUES (?, ?, ?, ?)";
                try (PreparedStatement pst = con.prepareStatement(sql)) {
                    pst.setString(1, name);
                    pst.setString(2, address);
                    pst.setString(3, gender);
                    if (istrm != null) {
                        pst.setBlob(4, istrm);
                    } else {
                        pst.setNull(4, java.sql.Types.BLOB);
                    }
                    int res = pst.executeUpdate();
                    msg = (res > 0) ? "uploaded successfully" : "uploaded failed";
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
            msg = "Database error: " + e.getMessage();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            msg = "JDBC Driver not found: " + e.getMessage();
        }

        // Forward to the message page
        request.setAttribute("msg", msg);
        getServletContext().getRequestDispatcher("/Message.jsp").forward(request, response);
    }
}


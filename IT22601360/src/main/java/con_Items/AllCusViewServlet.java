package con_Items;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AllCusViewServlet
 * This servlet is responsible for handling the request to view all customer details.
 */
@WebServlet("/AllCusViewServlet")
public class AllCusViewServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * Handles the HTTP GET request to display all customer details.
     *
     * @param request  The HttpServletRequest object.
     * @param response The HttpServletResponse object.
     * @throws ServletException If a servlet-specific error occurs.
     * @throws IOException      If an I/O error occurs.
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve a list of all customer details from the database
        List<Customer> customer = ItemsDBUtil.getAllUsers();

        // Set the 'customer' list as a request attribute to pass it to the JSP
        request.setAttribute("customer", customer);

        // Forward the request to the JSP for rendering
        request.getRequestDispatcher("AllCusView.jsp").forward(request, response);
    }
}

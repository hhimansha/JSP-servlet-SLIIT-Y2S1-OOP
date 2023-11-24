package con_Items;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AdminViewServlet
 * This servlet is responsible for handling the request to view all items in the admin panel.
 */
@WebServlet("/AdminViewServlet")
public class AdminViewServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * Handles the HTTP GET request to display all items in the admin panel.
     *
     * @param request  The HttpServletRequest object.
     * @param response The HttpServletResponse object.
     * @throws ServletException If a servlet-specific error occurs.
     * @throws IOException      If an I/O error occurs.
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve a list of all items from the database
        List<Item> items = ItemsDBUtil.getAllItems();

        // Set the 'items' list as a request attribute to pass it to the JSP
        request.setAttribute("items", items);

        // Forward the request to the JSP for rendering
        request.getRequestDispatcher("AdminViewItems.jsp").forward(request, response);
    }
}

package con_Items;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ItemServlet
 * This servlet is responsible for retrieving a list of items and forwarding them to a JSP for rendering.
 */
@WebServlet("/ItemServlet")
public class ItemServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * Handles the HTTP GET request to retrieve a list of items and render them in a JSP.
     *
     * @param request  The HttpServletRequest object.
     * @param response The HttpServletResponse object.
     * @throws ServletException If a servlet-specific error occurs.
     * @throws IOException      If an I/O error occurs.
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve a list of items from the database using ItemsDBUtil
        List<Item> items = ItemsDBUtil.getAllItems();

        // Set the 'items' list as a request attribute
        request.setAttribute("items", items);

        // Forward to the JSP for rendering
        request.getRequestDispatcher("home-page.jsp").forward(request, response);
    }
}

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
 * Servlet implementation class insertItem
 * This servlet is responsible for handling the insertion of a new item.
 */
@WebServlet("/insertItem")
public class insertItem extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * Handles the HTTP POST request to insert a new item.
     *
     * @param request  The HttpServletRequest object.
     * @param response The HttpServletResponse object.
     * @throws ServletException If a servlet-specific error occurs.
     * @throws IOException      If an I/O error occurs.
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve item information from the request parameters
        String itemName = request.getParameter("itemName");
        String description = request.getParameter("description");
        String itemImage = request.getParameter("itemImage");
        double price = Double.parseDouble(request.getParameter("price"));

        boolean isTrue;

        // Call the ItemsDBUtil to insert the new item
        isTrue = ItemsDBUtil.insertItem(itemName, description, itemImage, price);

        if (isTrue) {
            // If the item is successfully inserted, redirect to the admin view to update the data
            response.sendRedirect(request.getContextPath() + "/AdminViewServlet");
        } else {
            // Forward to an error page if insertion is unsuccessful
            RequestDispatcher dis = request.getRequestDispatcher("Unsuccess.jsp");
            dis.forward(request, response);
        }
    }
}

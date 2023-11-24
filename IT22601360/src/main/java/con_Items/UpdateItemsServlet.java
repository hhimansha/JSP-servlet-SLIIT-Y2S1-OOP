package con_Items;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UpdateItemsServlet
 * This servlet is responsible for updating an existing item in the database.
 */
@WebServlet("/UpdateItemsServlet")
public class UpdateItemsServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * Handles the HTTP POST request to update an existing item in the database.
     *
     * @param request  The HttpServletRequest object.
     * @param response The HttpServletResponse object.
     * @throws ServletException If a servlet-specific error occurs.
     * @throws IOException      If an I/O error occurs.
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve parameters from the request
        String itemNo = request.getParameter("itemNo");
        String itemName = request.getParameter("itemName");
        String description = request.getParameter("description");
        String itemImage = request.getParameter("itemImage");
        String price = request.getParameter("price");

        boolean isTrue;

        // Call the ItemsDBUtil to update the item
        isTrue = ItemsDBUtil.UpdateItem(itemNo, itemName, description, itemImage, price);

        if (isTrue) {
            // If the update is successful, redirect to the AdminViewServlet
            response.sendRedirect(request.getContextPath() + "/AdminViewServlet");
        } else {
            // If the update is unsuccessful, forward to ItemUnsuccess.jsp
            RequestDispatcher dis = request.getRequestDispatcher("Unsuccess.jsp");
            dis.forward(request, response);
        }
    }
}

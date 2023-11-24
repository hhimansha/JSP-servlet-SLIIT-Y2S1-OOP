package con_Items;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * A utility class for interacting with the database to manage items and customers.
 */
public class ItemsDBUtil {
    private static Connection con = null;
    private static Statement stmt = null;
    private static ResultSet rs = null;

    /**
     * Inserts a new item into the database.
     *
     * @param itemName    The name of the item.
     * @param description The description of the item.
     * @param itemImage   The image URL of the item.
     * @param price       The price of the item.
     * @return True if the item is successfully inserted; otherwise, false.
     */
    public static boolean insertItem(String itemName, String description, String itemImage, double price) {
        boolean isSuccess = false;

        try {
            con = DBConnect.getConnection();
            stmt = con.createStatement();
            String sql = "insert into items values(0,'" + itemName + "','" + description + "','" + itemImage + "','" + price + "')";
            int rs = stmt.executeUpdate(sql);

            if (rs > 0) {
                isSuccess = true;
            } else {
                isSuccess = false;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return isSuccess;
    }

    /**
     * Retrieves a list of all items from the database.
     *
     * @return A list of items.
     */
    public static List<Item> getAllItems() {
        ArrayList<Item> items = new ArrayList<>();

        try {
            con = DBConnect.getConnection();
            stmt = con.createStatement();
            String sql = "SELECT * FROM items";
            rs = stmt.executeQuery(sql);

            while (rs.next()) {
                int itemNo = rs.getInt(1);
                String itemName = rs.getString(2);
                String description = rs.getString(3);
                String itemImage = rs.getString(4);
                double price = rs.getDouble(5);

                Item item = new Item(itemNo, itemName, description, itemImage, price);
                items.add(item);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return items;
    }

    /**
     * Updates an existing item in the database.
     *
     * @param itemNo     The unique identifier of the item to update.
     * @param itemName   The new name of the item.
     * @param description The new description of the item.
     * @param itemImage  The new image URL of the item.
     * @param price      The new price of the item.
     * @return True if the item is successfully updated; otherwise, false.
     */
    public static boolean UpdateItem(String itemNo, String itemName, String description, String itemImage, String price) {
        boolean isSuccess = false;

        try {
            con = DBConnect.getConnection();
            stmt = con.createStatement();
            String sql = "update items set itemName = '" + itemName + "', description = '" + description + "', itemImage = '" + itemImage + "', price = '" + price + "' "
                    + "where itemNo = '" + itemNo + "'";

            int rs = stmt.executeUpdate(sql);

            if (rs > 0) {
                isSuccess = true;
            } else {
                isSuccess = false;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return isSuccess;
    }

    /**
     * Deletes an item from the database.
     *
     * @param itemNo The unique identifier of the item to delete.
     * @return True if the item is successfully deleted; otherwise, false.
     */
    public static boolean DeleteItem(String itemNo) {
        boolean isSuccess = false;

        int convId = Integer.parseInt(itemNo);

        try {
            con = DBConnect.getConnection();
            stmt = con.createStatement();
            String sql = "delete from items where itemNo = '" + convId + "'";
            int rs = stmt.executeUpdate(sql);

            if (rs > 0) {
                isSuccess = true;
            } else {
                isSuccess = false;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return isSuccess;
    }

    /**
     * Retrieves a list of all customers from the database.
     *
     * @return A list of customers.
     */
    public static List<Customer> getAllUsers() {
        ArrayList<Customer> customer = new ArrayList<>();

        try {
            con = DBConnect.getConnection();
            stmt = con.createStatement();
            String sql = "SELECT * FROM customer";
            rs = stmt.executeQuery(sql);

            while (rs.next()) {
                int id = rs.getInt(1);
                String name = rs.getString(2);
                String email = rs.getString(3);
                String phone = rs.getString(4);
                String username = rs.getString(5);
                String password = rs.getString(6);

                Customer cus = new Customer(id, name, email, phone, username, password);
                customer.add(cus);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
		return customer;
    }
    
    public static List<Item> searchItems(String searchQuery) {
        List<Item> searchResults = new ArrayList<>();

        try {
            con = DBConnect.getConnection();
            String sql = "SELECT * FROM items WHERE itemName LIKE ? OR description LIKE ?";
            PreparedStatement preparedStatement = con.prepareStatement(sql);
            
            // Use "%" to search for partial matches
            preparedStatement.setString(1, "%" + searchQuery + "%");
            preparedStatement.setString(2, "%" + searchQuery + "%");

            ResultSet rs = preparedStatement.executeQuery();

            while (rs.next()) {
                int itemNo = rs.getInt("itemNo");
                String itemName = rs.getString("itemName");
                String description = rs.getString("description");
                String itemImage = rs.getString("itemImage");
                double price = rs.getDouble("price");

                Item item = new Item(itemNo, itemName, description, itemImage, price);
                searchResults.add(item);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            // Close the resources
            try {
                if (rs != null) {
                    rs.close();
                }
                if (stmt != null) {
                    stmt.close();
                }
                if (con != null) {
                    con.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        return searchResults;
    }

     
}

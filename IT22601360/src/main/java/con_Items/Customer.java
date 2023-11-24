package con_Items;

/**
 * A class representing customer information.
 */
public class Customer {
    private int Id;
    private String Name;
    private String Email;
    private String Phone;
    private String Username;
    private String Password;

    /**
     * Constructs a Customer object with the specified attributes.
     *
     * @param id       The customer's ID.
     * @param name     The customer's name.
     * @param email    The customer's email address.
     * @param phone    The customer's phone number.
     * @param username The customer's username.
     * @param password The customer's password.
     */
    public Customer(int id, String name, String email, String phone, String username, String password) {
        Id = id;
        Name = name;
        Email = email;
        Phone = phone;
        Username = username;
        Password = password;
    }

    /**
     * Gets the customer's ID.
     *
     * @return The customer's ID.
     */
    public int getId() {
        return Id;
    }

    /**
     * Gets the customer's name.
     *
     * @return The customer's name.
     */
    public String getName() {
        return Name;
    }

    /**
     * Gets the customer's email address.
     *
     * @return The customer's email address.
     */
    public String getEmail() {
        return Email;
    }

    /**
     * Gets the customer's phone number.
     *
     * @return The customer's phone number.
     */
    public String getPhone() {
        return Phone;
    }

    /**
     * Gets the customer's username.
     *
     * @return The customer's username.
     */
    public String getUsername() {
        return Username;
    }

    /**
     * Gets the customer's password.
     *
     * @return The customer's password.
     */
    public String getPassword() {
        return Password;
    }
}

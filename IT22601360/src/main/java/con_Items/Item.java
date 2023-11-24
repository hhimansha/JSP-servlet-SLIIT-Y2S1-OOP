package con_Items;

/**
 * A class representing an item for sale.
 */
public class Item {
    private int itemNo;
    private String itemName;
    private String description;
    private String itemImage;
    private double price;

    /**
     * Constructs an Item object with the specified attributes.
     *
     * @param itemNo     The item number.
     * @param itemName   The name of the item.
     * @param description The item description.
     * @param itemImage  The URL or path to the item's image.
     * @param price      The price of the item.
     */
    public Item(int itemNo, String itemName, String description, String itemImage, double price) {
        this.itemNo = itemNo;
        this.itemName = itemName;
        this.description = description;
        this.itemImage = itemImage;
        this.price = price;
    }

    public int getItemNo() {
        return itemNo;
    }

    public void setItemNo(int itemNo) {
        this.itemNo = itemNo;
    }

    public String getItemName() {
        return itemName;
    }

    public void setItemName(String itemName) {
        this.itemName = itemName;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getItemImage() {
        return itemImage;
    }

    public void setItemImage(String itemImage) {
        this.itemImage = itemImage;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }
}

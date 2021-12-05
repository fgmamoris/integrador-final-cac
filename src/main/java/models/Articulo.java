/*
 * 
 */
package models;

/**
 *
 * @author Federico Mamoris
 */
public class Articulo {

    private int id;
    private String code;
    private String name;
    private String description;
    private double price;

    public Articulo(int id, String code, String name, String description, double price) {
        this.id = id;
        this.code = code;
        this.name = name;
        this.description = description;
        this.price = price;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    @Override
    public String toString() {
        return "Articulo{" + "id=" + id + ", code=" + code + ", name=" + name + ", description=" + description + ", price=" + price + '}';
    }

    
}

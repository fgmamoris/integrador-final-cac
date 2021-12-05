/*
 */
package services;

import config.bbdd.DatabaseConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import models.Articulo;
import dao.ArticuloDao;

/**
 *
 * @author Federico Mamoris
 */
public class ArticuloDaoImp implements ArticuloDao {

    private DatabaseConnection connection;

    @Override
    public boolean create(Articulo articulo) {
        PreparedStatement ps;
        Connection conn = DatabaseConnection.getConnection();
        try {
            ps = conn.prepareStatement("INSERT INTO articulo(code,name, description, price) VALUES (?,?,?,?)");
            ps.setString(1, articulo.getCode());
            ps.setString(2, articulo.getName());
            ps.setString(3, articulo.getDescription());
            ps.setDouble(4, articulo.getPrice());
            ps.execute();
            return true;
        } catch (SQLException e) {
            System.out.println(e.toString());
            return false;
        } finally {
            try {
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException ex) {
                System.out.println(ex.toString());
            }
        }
    }

    @Override
    public Articulo read(int idArticulo) {
        PreparedStatement ps;
        ResultSet rs;
        Connection conn = DatabaseConnection.getConnection();
        Articulo articulo = null;
        try {
            ps = conn.prepareStatement("SELECT * FROM articulos WHERE id=?");
            ps.setInt(1, idArticulo);
            rs = ps.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String code = rs.getString("code");
                String name = rs.getString("name");
                String description = rs.getString("descrption");
                Double price = rs.getDouble("price");
                articulo = new Articulo(id, code, name, description, price);
            }
            return articulo;
        } catch (SQLException e) {
            System.out.println(e.toString());
            return articulo;
        } finally {
            try {
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException ex) {
                System.out.println(ex.toString());
            }
        }
    }

    @Override
    public boolean update(Articulo articulo) {
        PreparedStatement ps;
        Connection conn = DatabaseConnection.getConnection();
        try {
            ps = conn.prepareStatement("UPDATE articulos SET code=?,name=?,description=?,price=? WHERE id=?");
            ps.setString(1, "code");
            ps.setString(2, "name");
            ps.setString(3, "description");
            ps.setString(4, "price");
            ps.execute();
            return true;
        } catch (SQLException e) {
            System.out.println(e.toString());
            return false;
        } finally {
            try {
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException ex) {
                System.out.println(ex.toString());
            }
        }
    }

    @Override
    public boolean delete(int idArticulo) {
        PreparedStatement ps;
        Connection conn = DatabaseConnection.getConnection();
        try {
            ps = conn.prepareStatement("DELETE FROM articulos WHERE id=?");
            ps.setInt(1, idArticulo);
            ps.execute();
            return true;
        } catch (SQLException e) {
            System.out.println(e.toString());
            return false;
        } finally {
            try {
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException ex) {
                System.out.println(ex.toString());
            }
        }
    }

    @Override
    public List<Articulo> getAll() {
        PreparedStatement ps;
        ResultSet rs;
        List<Articulo> lista = new ArrayList<>();
        Connection conn = DatabaseConnection.getConnection();
        try {
            ps = conn.prepareStatement("SELECT * FROM articulos");
            rs = ps.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String code = rs.getString("code");
                String name = rs.getString("name");
                String description = rs.getString("description");
                Double price = rs.getDouble("price");
                Articulo articulo = new Articulo(id, code, name, description, price);
                lista.add(articulo);
            }
            return lista;
        } catch (SQLException e) {
            System.out.println(e.toString());
            return null;
        }
    }

}
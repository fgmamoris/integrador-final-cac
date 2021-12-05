/*
 
 */
package dao;

import java.util.List;
import models.Articulo;

/**
 *
 * @author Federico Mamoris
 */
public interface ArticuloDao {

    boolean create(Articulo articulo);

    Articulo read(int idArticulo);

    boolean update(Articulo articulo);

    boolean delete(int idArticulo);

    List<Articulo> getAll();
}

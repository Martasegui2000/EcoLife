package edu.asix.api.service;

import java.util.List;

import edu.asix.api.entity.Product;

public interface IProductsService {

	List<Product> buscarTodos();
	Product recuperar (int idProduct);
	void guardar(Product product);
	void eliminar(int idProduct);
}

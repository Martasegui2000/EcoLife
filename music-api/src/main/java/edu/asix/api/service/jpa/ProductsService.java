package edu.asix.api.service.jpa;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.asix.api.entity.Product;
import edu.asix.api.repository.ProductsRepository;
import edu.asix.api.service.IProductsService;

@Service
public class ProductsService implements IProductsService {

	@Autowired
	private ProductsRepository repoProducts;
	
	public List<Product> buscarTodos() {
		return repoProducts.findAll();
	}

	public void guardar(Product product) {
		repoProducts.save(product);
	}
	
	public Product recuperar(int idProduct) {
		Optional<Product> optional = repoProducts.findById(idProduct);
		if (optional.isPresent()) {
			return optional.get();
		}
		return null;
	}

	public void eliminar(int idProduct) {
		repoProducts.deleteById(idProduct);
	}

}

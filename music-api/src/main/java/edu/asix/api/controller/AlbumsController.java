package edu.asix.api.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import edu.asix.api.entity.Album;
import edu.asix.api.service.IAlbumsService;

@RestController
@RequestMapping("/api")
public class AlbumsController {
	
	@Autowired
	private IAlbumsService serviceAlbums;
	
	@GetMapping("/albums")
	public List<Album> buscarTodos(){
		return serviceAlbums.buscarTodos();
	}
	
	
	@GetMapping("/albums/{id}") 
	public Album recuperar(@PathVariable("id") int idAlbum) {
		 Album album = serviceAlbums.recuperar(idAlbum);
		 return album;
		
	}
	
	@PostMapping("/albums") 
	public Album insertar(@RequestBody Album album) {
		serviceAlbums.guardar(album);
		return album;
	}
	
	@PutMapping("/albums")
	public Album modificar(@RequestBody Album album) {
		serviceAlbums.guardar(album);// al pasarle el id, modificará el álbum correspondiente 
		return album;
	} 
	
	@DeleteMapping("/albums/{id}")
	public String eliminar(@PathVariable("id") int idAlbum) {
		serviceAlbums.eliminar(idAlbum);
		return "Registro Eliminado";
	}
}

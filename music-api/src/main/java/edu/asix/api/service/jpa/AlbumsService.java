package edu.asix.api.service.jpa;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import edu.asix.api.entity.Album;
import edu.asix.api.repository.AlbumsRepository;
import edu.asix.api.service.IAlbumsService;

@Service
public class AlbumsService implements IAlbumsService {

	@Autowired
	private AlbumsRepository repoAlbums;
	
	public List<Album> buscarTodos() {
		return repoAlbums.findAll();
	}

	public void guardar(Album album) {
		repoAlbums.save(album);
	}
	
	public Album recuperar(int idAlbum) {
		Optional<Album> optional = repoAlbums.findById(idAlbum);
		if (optional.isPresent()) {
			return optional.get();
		}
		return null;
	}

	public void eliminar(int idAlbum) {
		repoAlbums.deleteById(idAlbum);
	}

}

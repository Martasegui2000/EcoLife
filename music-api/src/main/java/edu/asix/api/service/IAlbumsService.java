package edu.asix.api.service;

import java.util.List;

import edu.asix.api.entity.Album;

public interface IAlbumsService {

	List<Album> buscarTodos();
	Album recuperar (int idAlbum);
	void guardar(Album album);
	void eliminar(int idAlbum);
}

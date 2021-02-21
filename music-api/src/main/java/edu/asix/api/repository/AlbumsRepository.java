package edu.asix.api.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import edu.asix.api.entity.Album;

public interface AlbumsRepository extends JpaRepository<Album, Integer> {

}

package com.javasampleapproach.wardeployment.repository;

import java.util.Optional;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.javasampleapproach.wardeployment.model.Book;

@Repository
public interface BookRepository extends CrudRepository<Book, Long> {

	Optional<Book> findById(Long id);

	void deleteById(Long id);

}

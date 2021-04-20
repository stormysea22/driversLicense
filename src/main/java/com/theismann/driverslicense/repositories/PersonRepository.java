package com.theismann.driverslicense.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.theismann.driverslicense.models.Person;

public interface PersonRepository extends CrudRepository<Person, Long> {
	List<Person> findAll();
}

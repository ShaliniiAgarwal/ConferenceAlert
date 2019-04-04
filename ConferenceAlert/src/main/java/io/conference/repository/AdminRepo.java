package io.conference.repository;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import io.conference.Entity.Admin;
@Repository
public interface AdminRepo extends JpaRepository<Admin,Integer>{

	Object findByNameAndPassword(String name, String password);

}

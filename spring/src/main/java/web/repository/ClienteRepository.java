package web.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import web.entities.Cliente;



public interface ClienteRepository extends JpaRepository<Cliente, String> {

}

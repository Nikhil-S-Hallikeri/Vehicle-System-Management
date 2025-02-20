package com.jsp.spring.mvc.vms.repository;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import com.jsp.spring.mvc.vms.entity.Vehicle;

@Repository
public class vehicleRepository {

	EntityManagerFactory emf = Persistence.createEntityManagerFactory("mysql-config");

	public void saveVehicle(Vehicle vehicle) {
		EntityManager em = emf.createEntityManager();
		EntityTransaction et = em.getTransaction();
		et.begin();

		em.persist(vehicle);

		et.commit();
		em.close();
	}

	public List<Vehicle> findAllVehicles() {
		EntityManager em = emf.createEntityManager();
		EntityTransaction et = em.getTransaction();
		et.begin();

		Query query = em.createQuery("FROM Vehicle");
		List<Vehicle> vehicles = query.getResultList();

		et.commit();
		em.close();

		return vehicles;
	}

	public Vehicle findVehicleById(int vehicleId) {
		EntityManager em = emf.createEntityManager();
		EntityTransaction et = em.getTransaction();
		et.begin();

		Vehicle vehicle = em.find(Vehicle.class, vehicleId);

		et.commit();
		em.close();

		return vehicle;
	}

	public void updateVehicle(Vehicle vehicle) {
		EntityManager em = emf.createEntityManager();
		EntityTransaction et = em.getTransaction();
		et.begin();

		em.merge(vehicle);

		et.commit();
		em.close();
	}

	public void deleteVehicle(int vehicleId) {
	    EntityManager em = emf.createEntityManager();
	    EntityTransaction et = em.getTransaction();
	    et.begin();

	    Vehicle vehicle = em.find(Vehicle.class, vehicleId); // Fetch the managed entity first
	    if (vehicle != null) {
	        em.remove(vehicle); // Remove only if the entity is found
	    }

	    et.commit();
	    em.close();
	}

}

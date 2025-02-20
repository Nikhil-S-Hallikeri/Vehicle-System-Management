package com.jsp.spring.mvc.vms.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.jsp.spring.mvc.vms.entity.Vehicle;
import com.jsp.spring.mvc.vms.repository.vehicleRepository;

@Service
public class vehicleService {

	@Autowired
	private vehicleRepository vehicleRepository;

	public ModelAndView addVehicle(Vehicle vehicle) {
		// Resolving the request - saving the Vehicle object
		vehicleRepository.saveVehicle(vehicle);

		// Generating Responce - Redirecting back to Dashboard
		ModelAndView mav = new ModelAndView();
		mav.setViewName("index.jsp");

		return mav;
	}

	public ModelAndView displayVehicles() {
		// Resolving the request
		List<Vehicle> vehicles = vehicleRepository.findAllVehicles();

//		Genarating Responce
		ModelAndView mav = new ModelAndView();
		mav.setViewName("DisplayAllVehicles.jsp");
		mav.addObject("vehicleList", vehicles);

		return mav;
	}

	public ModelAndView findVehicleById(int vehicleId) {
		// Resolving the Request
		Vehicle vehicle = vehicleRepository.findVehicleById(vehicleId);

		// Genrating Responce
		ModelAndView mav = new ModelAndView();
		mav.setViewName("UpdateVehicle.jsp");
		mav.addObject("vehicleObject", vehicle);

		return mav;
	}

	public ModelAndView updateVehicle(Vehicle vehicle) {
		// Resolving Request
		vehicleRepository.updateVehicle(vehicle);

		// Genrating Responce
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:display-all-vehicles");

		return mav;
	}

	@Transactional
    public ModelAndView deleteVehicle(int vehicleId) { // Accepts vehicleId instead of Vehicle object
        vehicleRepository.deleteVehicle(vehicleId);
        
        ModelAndView mav = new ModelAndView();
        mav.setViewName("redirect:display-all-vehicles");
        
        return mav;
    }
}

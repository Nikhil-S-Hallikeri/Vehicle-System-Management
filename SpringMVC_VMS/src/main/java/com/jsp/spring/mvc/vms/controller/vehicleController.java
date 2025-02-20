package com.jsp.spring.mvc.vms.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.jsp.spring.mvc.vms.entity.Vehicle;
import com.jsp.spring.mvc.vms.service.vehicleService;

@Controller
public class vehicleController {

	@Autowired
	private vehicleService vehicleService;

	@RequestMapping(value = "/add-vehicle", method = RequestMethod.POST)
	public ModelAndView addVehicle(Vehicle vehicle) {
		return vehicleService.addVehicle(vehicle);
	}

	@RequestMapping(value = "/display-all-vehicles", method = RequestMethod.GET)
	public ModelAndView displayVehicles(Vehicle vehicle) {
		return vehicleService.displayVehicles();
	}

	@RequestMapping(value = "/find-by-id", method = RequestMethod.GET)
	public ModelAndView findVehicleById(int vehicleId) {
		return vehicleService.findVehicleById(vehicleId);
	}

	@RequestMapping(value = "/save-updated-vehicle", method = RequestMethod.POST)
	public ModelAndView updateVehicle(Vehicle vehicle) {
		return vehicleService.updateVehicle(vehicle);
	}

	@RequestMapping(value = "/delete-by-id", method = RequestMethod.GET)
	public ModelAndView deleteVehicle(int vehicleId) {
		return vehicleService.deleteVehicle(vehicleId);
	}
}

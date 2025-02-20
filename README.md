# Vehicle-System-Management

Project Summary: Vehicle Management System (VMS) 🚗💻
Objective:
The Vehicle Management System (VMS) is a Spring MVC-based web application designed to manage vehicle records efficiently. It allows users to add, update, view, and delete vehicle details in a structured database-driven system.

Technologies Used:
Backend: Spring MVC, Hibernate (JPA), MySQL
Frontend: JSP, HTML, CSS
Database: MySQL
Tools: Apache Tomcat, Maven
Key Features:
Add Vehicle – Users can enter vehicle details like model, brand, type, and price.
Display Vehicles – Fetches and displays all vehicles in a tabular format.
Update Vehicle – Allows modification of existing vehicle details.
Delete Vehicle – Removes a vehicle record permanently.
Workflow:
The controller (vehicleController) handles incoming HTTP requests.
The service layer (vehicleService) processes business logic.
The repository (vehicleRepository) interacts with the database using JPA (EntityManager).
Data is displayed using JSP pages.

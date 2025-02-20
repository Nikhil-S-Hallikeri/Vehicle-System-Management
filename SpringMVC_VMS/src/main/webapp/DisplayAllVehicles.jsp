<%@ page import="com.jsp.spring.mvc.vms.entity.Vehicle"%>
<%@ page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Vehicle List</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        body {
            min-height: 100vh;
            background-color: #0f0f0f;
            color: white;
            padding: 2rem;
        }

        .background {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: 
                radial-gradient(circle at 20% 20%, #e91e63 0%, transparent 50%),
                radial-gradient(circle at 80% 80%, #2196f3 0%, transparent 50%),
                radial-gradient(circle at 50% 50%, #4caf50 0%, transparent 50%);
            opacity: 0.2;
            z-index: -1;
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
        }

        h2 {
            font-size: 2.5rem;
            margin-bottom: 2rem;
            text-align: center;
            background: linear-gradient(45deg, #ff4081, #00bcd4);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            text-shadow: 2px 2px 20px rgba(255, 64, 129, 0.2);
        }

        .table-container {
            background: rgba(255, 255, 255, 0.05);
            border-radius: 15px;
            backdrop-filter: blur(10px);
            padding: 2rem;
            overflow-x: auto;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 2rem;
        }

        th, td {
            padding: 1rem;
            text-align: left;
            border-bottom: 1px solid rgba(255, 255, 255, 0.1);
        }

        th {
            background: rgba(255, 255, 255, 0.1);
            font-weight: 600;
            text-transform: uppercase;
            letter-spacing: 1px;
        }

        tr:hover {
            background: rgba(255, 255, 255, 0.05);
        }

        .btn {
            display: inline-block;
            padding: 0.5rem 1rem;
            border-radius: 5px;
            text-decoration: none;
            font-weight: 500;
            transition: all 0.3s ease;
            text-align: center;
        }

        .btn-update {
            background: linear-gradient(45deg, #4caf50, #00bcd4);
            color: white;
        }

        .btn-delete {
            background: linear-gradient(45deg, #ff4081, #e91e63);
            color: white;
        }

        .btn:hover {
            transform: translateY(-2px);
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.3);
        }

        .back-link {
            display: inline-block;
            margin-top: 2rem;
            padding: 1rem 2rem;
            background: linear-gradient(45deg, #ff4081, #00bcd4);
            color: white;
            text-decoration: none;
            border-radius: 30px;
            font-weight: bold;
            transition: all 0.3s ease;
        }

        .back-link:hover {
            transform: translateY(-3px);
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
        }

        @media (max-width: 768px) {
            body { padding: 1rem; }
            th, td { padding: 0.5rem; }
            .btn { display: block; margin-bottom: 0.5rem; }
        }
    </style>
</head>
<body>
    <div class="background"></div>
    <div class="container">
        <h2>Vehicle Management System</h2>
        <div class="table-container">
            <table>
                <tr>
                    <th>Vehicle ID</th>
                    <th>Model</th>
                    <th>Brand</th>
                    <th>Type</th>
                    <th>Price</th>
                    <th>Actions</th>
                </tr>

                <% List<Vehicle> vehicles = (List) request.getAttribute("vehicleList");
                for (Vehicle vehicle : vehicles) { %>
                <tr>
                    <td><%=vehicle.getVehicleId()%></td>
                    <td><%=vehicle.getModel()%></td>
                    <td><%=vehicle.getBrand()%></td>
                    <td><%=vehicle.getType()%></td>
                    <td>₹<%=vehicle.getPrice()%></td>
                    <td>
                        <a href="find-by-id?vehicleId=<%=vehicle.getVehicleId()%>" class="btn btn-update">Update</a>
                        <a href="delete-by-id?vehicleId=<%=vehicle.getVehicleId()%>" class="btn btn-delete">Delete</a>
                    </td>
                </tr>
                <% } %>
            </table>
        </div>
        <a href="index.jsp" class="back-link">Back to Dashboard</a>
    </div>
</body>
</html>
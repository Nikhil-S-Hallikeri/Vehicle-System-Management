<%@ page import="com.jsp.spring.mvc.vms.entity.Vehicle"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Vehicle</title>
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
            display: flex;
            justify-content: center;
            align-items: center;
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
            width: 100%;
            max-width: 500px;
            padding: 2rem;
        }

        h1 {
            font-size: 2.5rem;
            margin-bottom: 2rem;
            text-align: center;
            background: linear-gradient(45deg, #ff4081, #00bcd4);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            text-shadow: 2px 2px 20px rgba(255, 64, 129, 0.2);
        }

        .form-container {
            background: rgba(255, 255, 255, 0.05);
            backdrop-filter: blur(10px);
            border-radius: 20px;
            padding: 2rem;
            border: 1px solid rgba(255, 255, 255, 0.1);
        }

        .form-group {
            margin-bottom: 1.5rem;
            position: relative;
        }

        .form-group label {
            position: absolute;
            top: -10px;
            left: 10px;
            background: #0f0f0f;
            padding: 0 8px;
            font-size: 0.8rem;
            color: rgba(255, 255, 255, 0.7);
        }

        input {
            width: 100%;
            padding: 1rem;
            background: rgba(255, 255, 255, 0.1);
            border: 1px solid rgba(255, 255, 255, 0.2);
            border-radius: 10px;
            color: white;
            font-size: 1rem;
            transition: all 0.3s ease;
        }

        input:focus {
            outline: none;
            border-color: #00bcd4;
            box-shadow: 0 0 15px rgba(0, 188, 212, 0.3);
        }

        input[readonly] {
            background: rgba(255, 255, 255, 0.05);
            cursor: not-allowed;
        }

        input[type="submit"] {
            background: linear-gradient(45deg, #ff4081, #00bcd4);
            color: white;
            font-weight: bold;
            border: none;
            cursor: pointer;
            padding: 1rem 2rem;
            margin-top: 1rem;
            text-transform: uppercase;
            letter-spacing: 1px;
        }

        input[type="submit"]:hover {
            transform: translateY(-2px);
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
        }

        .back-link {
            display: block;
            text-align: center;
            margin-top: 2rem;
            color: white;
            text-decoration: none;
            font-weight: 500;
            transition: all 0.3s ease;
        }

        .back-link:hover {
            color: #00bcd4;
        }

        @media (max-width: 768px) {
            .container {
                padding: 1rem;
            }
            
            h1 {
                font-size: 2rem;
            }
        }
    </style>
</head>
<body>
    <div class="background"></div>
    <div class="container">
        <h1>Update Vehicle</h1>
        <div class="form-container">
            <% Vehicle vehicle = (Vehicle) request.getAttribute("vehicleObject"); %>
            <form action="save-updated-vehicle" method="post">
                <div class="form-group">
                    <label>Vehicle ID</label>
                    <input type="number" value="<%= vehicle.getVehicleId() %>" name="vehicleId" readonly="readonly">
                </div>
                <div class="form-group">
                    <label>Model</label>
                    <input type="text" value="<%= vehicle.getModel() %>" name="model" required>
                </div>
                <div class="form-group">
                    <label>Brand</label>
                    <input type="text" value="<%= vehicle.getBrand() %>" name="brand" required>
                </div>
                <div class="form-group">
                    <label>Type</label>
                    <input type="text" value="<%= vehicle.getType() %>" name="type" required>
                </div>
                <div class="form-group">
                    <label>Price</label>
                    <input type="number" value="<%= vehicle.getPrice() %>" name="price" required>
                </div>
                <input type="submit" value="Update Vehicle">
            </form>
        </div>
        <a href="display-all-vehicles" class="back-link">Back to Vehicle List</a>
    </div>
</body>
</html>
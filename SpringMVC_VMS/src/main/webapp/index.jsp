<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Vehicle Management System</title>
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
            overflow-x: hidden;
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
            padding: 2rem;
        }

        header {
            text-align: center;
            margin-bottom: 4rem;
            padding-top: 2rem;
        }

        h1 {
            font-size: 3.5rem;
            font-weight: 800;
            background: linear-gradient(45deg, #ff4081, #00bcd4);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            text-shadow: 2px 2px 20px rgba(255, 64, 129, 0.2);
            animation: titleFloat 3s ease-in-out infinite;
        }

        @keyframes titleFloat {
            0%, 100% { transform: translateY(0); }
            50% { transform: translateY(-10px); }
        }

        .cards-container {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 2rem;
            perspective: 1000px;
        }

        .card {
            position: relative;
            background: rgba(255, 255, 255, 0.05);
            border: 1px solid rgba(255, 255, 255, 0.1);
            border-radius: 20px;
            padding: 2.5rem;
            backdrop-filter: blur(10px);
            transform-style: preserve-3d;
            transition: transform 0.5s cubic-bezier(0.23, 1, 0.32, 1);
        }

        .card:hover {
            transform: translateZ(20px) rotateX(5deg) rotateY(5deg);
            border-color: rgba(255, 255, 255, 0.3);
        }

        .card::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: radial-gradient(circle at var(--x, 50%) var(--y, 50%), 
                                      rgba(255, 255, 255, 0.1) 0%,
                                      transparent 100%);
            border-radius: 20px;
            opacity: 0;
            transition: opacity 0.3s;
        }

        .card:hover::before {
            opacity: 1;
        }

        .icon {
            margin-bottom: 1.5rem;
            animation: iconFloat 3s ease-in-out infinite;
        }

        .icon svg {
            width: 64px;
            height: 64px;
            fill: none;
            stroke: url(#gradient);
            stroke-width: 2;
        }

        @keyframes iconFloat {
            0%, 100% { transform: translateY(0); }
            50% { transform: translateY(-10px); }
        }

        .card h2 {
            font-size: 1.8rem;
            margin-bottom: 1.5rem;
            background: linear-gradient(45deg, #ff4081, #00bcd4);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        .card a {
            display: inline-block;
            text-decoration: none;
            color: white;
            font-weight: bold;
            padding: 1rem 2rem;
            background: linear-gradient(45deg, #ff4081, #00bcd4);
            border-radius: 30px;
            transition: all 0.3s ease;
            position: relative;
            overflow: hidden;
        }

        .card a::before {
            content: '';
            position: absolute;
            top: 0;
            left: -100%;
            width: 100%;
            height: 100%;
            background: linear-gradient(90deg, transparent, rgba(255, 255, 255, 0.2), transparent);
            transition: left 0.5s;
        }

        .card a:hover::before {
            left: 100%;
        }

        .card a:hover {
            transform: translateY(-3px);
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
        }

        .card p {
            color: #ccc;
            margin-bottom: 2rem;
            font-size: 1.1rem;
            line-height: 1.6;
        }

        @media (max-width: 768px) {
            h1 { font-size: 2.5rem; }
            .card { margin: 1rem; }
        }
    </style>
</head>
<body>
    <div class="background"></div>
    <svg width="0" height="0">
        <defs>
            <linearGradient id="gradient" x1="0%" y1="0%" x2="100%" y2="100%">
                <stop offset="0%" style="stop-color: #ff4081" />
                <stop offset="100%" style="stop-color: #00bcd4" />
            </linearGradient>
        </defs>
    </svg>
    <div class="container">
        <header>
            <h1>Vehicle Management System</h1>
        </header>
        <div class="cards-container">
            <div class="card">
                <div class="icon">
                    <svg viewBox="0 0 24 24">
                        <path d="M1,11 L4,11 M20,11 L23,11 M6,13 C6,13 7,14 8,14 C9,14 10,13 10,13 M14,13 C14,13 15,14 16,14 C17,14 18,13 18,13 M4,11 L6,6 L18,6 L20,11 M4,11 L20,11 M6,19 L18,19 M6,19 L4,11 M18,19 L20,11" />
                        <circle cx="8" cy="14" r="2" />
                        <circle cx="16" cy="14" r="2" />
                    </svg>
                </div>
                <h2>Add New Vehicle</h2>
                <p>Register a new vehicle to the system with detailed information including make, model, year, and specifications.</p>
                <a href="AddVehicle.jsp">Add Vehicle</a>
            </div>
            <div class="card">
                <div class="icon">
                    <svg viewBox="0 0 24 24">
                        <rect x="3" y="4" width="18" height="16" rx="2" />
                        <line x1="3" y1="9" x2="21" y2="9" />
                        <line x1="7" y1="4" x2="7" y2="20" />
                        <line x1="12" y1="4" x2="12" y2="20" />
                        <line x1="17" y1="4" x2="17" y2="20" />
                    </svg>
                </div>
                <h2>View Fleet</h2>
                <p>Access comprehensive information about all vehicles in the system, including status, maintenance history, and usage data.</p>
                <a href="display-all-vehicles">View Vehicles</a>
            </div>
        </div>
    </div>

    <script>
        // Add mouse movement effect to cards
        document.querySelectorAll('.card').forEach(card => {
            card.addEventListener('mousemove', e => {
                const rect = card.getBoundingClientRect();
                const x = ((e.clientX - rect.left) / card.clientWidth) * 100;
                const y = ((e.clientY - rect.top) / card.clientHeight) * 100;
                card.style.setProperty('--x', `${x}%`);
                card.style.setProperty('--y', `${y}%`);
            });
        });
    </script>
</body>
</html>
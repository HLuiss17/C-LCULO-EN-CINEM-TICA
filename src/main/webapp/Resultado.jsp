<%@page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Resultados de Cinemática</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<!-- Encabezado -->
<header class="bg-primary text-white text-center py-3">
    <h1>Resultados de Cinemática</h1>
</header>

<!-- Contenido -->
<div class="container my-5">
    <div class="row justify-content-center">
        <div class="col-lg-8 col-md-10">
            <div class="card shadow">
                <div class="card-body">
                    <h3 class="card-title text-center mb-4">Cálculos Completados</h3>
                    <%
                        // Obtener los atributos desde la solicitud
                        double aceleracion = (double) request.getAttribute("aceleracion");
                        double tiempo = (double) request.getAttribute("tiempo");
                        double distancia = (double) request.getAttribute("distancia");
                        double velocidadFinal = (double) request.getAttribute("velocidadFinal");
                        double distanciaExtra = (double) request.getAttribute("distanciaExtra");
                    %>
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item"><strong>Aceleración:</strong> <%= aceleracion %> m/s²</li>
                        <li class="list-group-item"><strong>Tiempo necesario para alcanzar la velocidad deseada:</strong> <%= tiempo %> segundos</li>
                        <li class="list-group-item"><strong>Distancia recorrida en <%= tiempo %> s:</strong> <%= distancia %> metros</li>
                        <li class="list-group-item"><strong>Velocidad final después del tiempo adicional:</strong> <%= velocidadFinal %> m/s</li>
                        <li class="list-group-item"><strong>Distancia adicional recorrida:</strong> <%= distanciaExtra %> metros</li>
                    </ul>
                    <div class="text-center mt-4">
                        <a href="index.html" class="btn btn-primary btn-lg">Volver al formulario</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Footer -->
<footer class="bg-dark text-white text-center py-3">
    <p>&copy; 2024 MRUA Cálculo. Todos los derechos reservados.</p>
</footer>

<!-- Bootstrap JS Bundle -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

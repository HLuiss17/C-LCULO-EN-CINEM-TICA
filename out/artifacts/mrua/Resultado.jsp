<%@page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Resultados de Cinemática</title>
</head>
<body>

<%
    // Obtener los atributos desde la solicitud
    double aceleracion = (double) request.getAttribute("aceleracion");
    double tiempo = (double) request.getAttribute("tiempo");
    double distancia = (double) request.getAttribute("distancia");
    double velocidadFinal = (double) request.getAttribute("velocidadFinal");
    double distanciaExtra = (double) request.getAttribute("distanciaExtra");
%>
<p><strong>Aceleración:</strong> <%= aceleracion %> m/s²</p>
<p><strong>Tiempo necesario:</strong> <%= tiempo %> segundos</p>
<p><strong>Distancia recorrida:</strong> <%= distancia %> metros</p>
<p><strong>Velocidad final después del tiempo adicional:</strong> <%= velocidadFinal %> m/s</p>
<p><strong>Distancia adicional recorrida:</strong> <%= distanciaExtra %> metros</p>

<a href="index.html">Volver al formulario</a>
</body>
</html>

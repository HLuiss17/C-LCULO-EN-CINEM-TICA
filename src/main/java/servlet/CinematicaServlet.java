package servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/CinematicaServlet")
public class CinematicaServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //declaramos la variable reprecentada a punto 0 = reposo
        double reposo = 0;
        //datos del formulario
        double aceleracion = Double.parseDouble(req.getParameter("aceleracion"));
        // estoreperecenta ala velocidad deseada
        double velocidadInicial = Double.parseDouble(req.getParameter("velocidadDeterminada"));
        double tiempoAdicional = Double.parseDouble(req.getParameter("tiempoAdicional"));

        //calcular el tiempo
        double tiempo = (velocidadInicial - reposo)/ aceleracion;
        // calculo la distancia que recoorio en ese tiempo (1/2)=0,50
        double distancia = 0.5 * aceleracion *Math.pow(tiempo, 2);
        // calcular la velocidad final despues de los 5 segundos
        double velocidadFinal = velocidadInicial+(aceleracion*tiempoAdicional);
        //calcular la distancia total recorrida en los 5 segundos adicionales 1/2)=0,50
        double distanciaExtra = (velocidadInicial*tiempoAdicional)+(0.5*aceleracion)*Math.pow(tiempoAdicional, 2);

        // Establecer los resultados como atributos
        req.setAttribute("aceleracion", aceleracion);
        req.setAttribute("tiempo", tiempo);
        req.setAttribute("distancia", distancia);
        req.setAttribute("velocidadFinal", velocidadFinal);
        req.setAttribute("distanciaExtra", distanciaExtra);

        // Redirigir a resultado.jsp
        req.getRequestDispatcher("Resultado.jsp").forward(req, resp);
    }
}

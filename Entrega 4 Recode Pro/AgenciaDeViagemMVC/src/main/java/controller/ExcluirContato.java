package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.ContatoDAO;

@WebServlet("/excluir")
public class ExcluirContato extends HttpServlet {

    @Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
    	int id = Integer.parseInt(request.getParameter("id"));
    	
    	ContatoDAO contatoDAO = new ContatoDAO();
    	
    	contatoDAO.deleteContatoByID(id);
    	
		response.sendRedirect("home");
	}

}

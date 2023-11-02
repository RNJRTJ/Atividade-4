package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Contato;
import model.ContatoDAO;

@WebServlet("/home")
public class ListaContato extends HttpServlet {
     
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		List<Contato> lista = new ArrayList<Contato>();
		ContatoDAO contatoDAO = new ContatoDAO();
		lista = contatoDAO.getContato();
		request.setAttribute("listaContatos", lista);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("cadastro.jsp");
		dispatcher.forward(request, response);
		
	}

}

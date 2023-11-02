package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Contato;
import model.ContatoDAO;

@WebServlet("/editar")
public class AlterarContato extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int id = Integer.parseInt(request.getParameter("id"));
		
		ContatoDAO contatoDAO = new ContatoDAO();
		
		Contato contato = contatoDAO.buscarContato(id);
		
		request.setAttribute("contatos", contato);
		
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("/alterarContato.jsp");
		
		requestDispatcher.forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Contato contato = new Contato();
		
		contato.setCpf(request.getParameter("cpf"));
		contato.setNome(request.getParameter("nome"));
		contato.setEmail(request.getParameter("email"));
		contato.setTelefone(request.getParameter("telefone"));
		contato.setId(Integer.parseInt(request.getParameter("id")));
		
		ContatoDAO contatoDAO = new ContatoDAO();
		contatoDAO.updateContato(contato);
		
		response.sendRedirect("home");
		
	}

}

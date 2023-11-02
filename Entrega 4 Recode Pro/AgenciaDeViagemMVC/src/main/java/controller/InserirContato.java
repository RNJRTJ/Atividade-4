package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Contato;
import model.ContatoDAO;

@WebServlet("/Inserir")
public class InserirContato extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// recebendo os dados do formulario via parametro
		String cpf = request.getParameter("cpf");
		String nome = request.getParameter("nome");
		String email = request.getParameter("email");
		String telefone = request.getParameter("telefone");
		
		// criando o objeto contato
		Contato contato = new Contato();
		
		// guardando os dados do formulario do objeto
		contato.setCpf(cpf);
		contato.setNome(nome);
		contato.setEmail(email);
		contato.setTelefone(telefone);
		
		// criando um objeto DAO para enviar o objeto Contato para o banco de dados
		// usando o método save da classe ContatoDAO
		ContatoDAO contatoDAO = new ContatoDAO();
		contatoDAO.saveContato(contato);
		
		// Redirecionando o usuario para a pagina inicial da aplicação.
		response.sendRedirect("home");
		
	}

}

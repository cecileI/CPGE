package servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.EtudiantDao;
import dao.EvaluateurDao;
import entities.Etudiant;
import entities.Evaluateur;


/**
 * Servlet implementation class MainServmet
 */
@WebServlet( name="AccueilServlet", urlPatterns = {"/"} )
public class MainServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MainServlet() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		EtudiantDao dao = new EtudiantDao();
		List<Etudiant> etudiants = dao.getAllStudents();
		
		EvaluateurDao daoevaluateur = new EvaluateurDao();
		List<Evaluateur> evaluateurs = daoevaluateur.getAllEvaluateur();

		request.setAttribute("etudiants", etudiants);
		request.setAttribute("evaluateurs", evaluateurs);

		this.getServletContext().getRequestDispatcher( "/accueil.jsp" ).forward( request, response );
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}

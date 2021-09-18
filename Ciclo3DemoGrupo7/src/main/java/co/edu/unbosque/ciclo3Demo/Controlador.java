package co.edu.unbosque.ciclo3Demo;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Controlador")
public class Controlador extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public Controlador() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String menu=request.getParameter("menu");
		String accion=request.getParameter("accion");
		
		switch (menu) {
		case "Principal":
			request.getRequestDispatcher("/Principal.jsp").forward(request, response);
			break;
		case "Usuarios":
			if (accion.equals("Listar")) {
				try {
					ArrayList<Usuarios> lista = TestJSON.getJSON();
					request.setAttribute("lista", lista);
				} catch (Exception e) {
					e.printStackTrace();
				}
				
			} else if (accion.equals("Agregar")) {
				Usuarios usuario = new Usuarios();
				usuario.setCedula_usuario(Long.parseLong(request.getParameter("txtcedula")));
				usuario.setEmail_usuario(request.getParameter("txtemail"));
				usuario.setNombre_usuario(request.getParameter("txtnombre"));
				usuario.setUsuario(request.getParameter("txtusuario"));
				usuario.setPassword(request.getParameter("txtpassword"));
				
				int respuesta=0;
				try {
				   respuesta = TestJSON.postJSON(usuario);
				   if (respuesta==200) {
					 request.getRequestDispatcher("Controlador?menu=Usuarios&accion=Listar").forward(request, response);   
				   }else {
					   System.out.println("Error: " + respuesta);
				   }
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			request.getRequestDispatcher("/Usuarios.jsp").forward(request, response);
			break;

		default:
			break;
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

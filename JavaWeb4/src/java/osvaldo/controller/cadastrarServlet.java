
package osvaldo.controller;

import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.util.Enumeration;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class cadastrarServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
             throws ServletException, IOException {
       /* String nome = request.getParameter("nome");
        String email = request.getParameter("email");
        String cidade = request.getParameter("cidade");
        String bairro = request.getParameter("bairro");
        String login = request.getParameter("login");
        String senha = request.getParameter("senha");
        
        request.setAttribute("dados", "Nome: "+ nome);
        request.setAttribute("dados", "Email: "+ email);
        request.getRequestDispatcher("dados.jsp").forward(request, response);*/
     
       
        Enumeration valor = request.getParameterNames();
        while(valor.hasMoreElements()){
            String param = (String) valor.nextElement();
            
            request.setAttribute("parametro", param);
            request.getRequestDispatcher("dados.jsp").forward(request, response);
        }
         out.println("<script type='text/javascript'>");
      out.println("window.window.location.href='http://localhost:8082/JavaWeb4/dados.jsp'");
      out.println("</script>");
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
             throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
             throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

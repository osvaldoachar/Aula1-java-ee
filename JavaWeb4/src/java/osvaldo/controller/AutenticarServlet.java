
package osvaldo.controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class AutenticarServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
             throws ServletException, IOException {
      String login = request.getParameter("login");
      String senha = request.getParameter("senha");
      
      HttpSession sessao = request.getSession();
      
      if(login.equals("admin") && senha.equals("admin123")){
          sessao.setAttribute("usuario", login);
          request.setAttribute("user", login);
          request.getRequestDispatcher("principal.jsp").forward(request, response);
          
         // sessao.removeAttribute("usuario");
          //sessao.invalidate();
      }else{
          request.setAttribute("mensagemErro", "Erro ao autenticar login");
          request.getRequestDispatcher("index.jsp").forward(request, response);
      }
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

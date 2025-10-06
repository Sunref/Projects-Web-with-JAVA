package cadastroclientes.servicos;

import cadastroclientes.dao.GeneroDAO;
import cadastroclientes.entidades.Genero;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

/**
 * 
 * Servlet para prover os serviços relacionados à entidade Genero.
 *
 * @author Fernanda M. bv3032345
 * 
 */
@WebServlet( name = "GeneroServices", 
             urlPatterns = { "/processaGenero" } )
public class GeneroServices extends HttpServlet {

    protected void processRequest( 
            HttpServletRequest request, 
            HttpServletResponse response )
            throws ServletException, IOException {
        
        String acao = request.getParameter( "acao" );
        RequestDispatcher disp = null;

        try ( GeneroDAO dao = new GeneroDAO() ) {

            if ( acao.equals( "listar" ) ) {

                List<Genero> generos = dao.listarTodos();
                request.setAttribute( "generos", generos );
                disp = request.getRequestDispatcher( 
                        "/formularios/genero/listagem.jsp" );

            } else if ( acao.equals( "prepararNovo" ) ) {

                disp = request.getRequestDispatcher( 
                        "/formularios/genero/novo.jsp" );

            } else if ( acao.equals( "prepararAlteracao" ) ) {

                int id = Integer.parseInt(request.getParameter( "id" ));
                Genero genero = dao.obterPorId( id );
                request.setAttribute( "genero", genero );
                disp = request.getRequestDispatcher( 
                        "/formularios/genero/alteracao.jsp" );

            } else if ( acao.equals( "prepararExclusao" ) ) {

                int id = Integer.parseInt(request.getParameter( "id" ));
                Genero genero = dao.obterPorId( id );
                request.setAttribute( "genero", genero );
                disp = request.getRequestDispatcher( 
                        "/formularios/genero/excluir.jsp" );

            } else if ( acao.equals( "novo" ) ) {

                String descricao = request.getParameter( "descricao" );

                Genero g = new Genero();
                g.setDescricao( descricao );

                dao.salvar( g );
                disp = request.getRequestDispatcher( 
                        "/processaGenero?acao=listar" );

            } else if ( acao.equals( "alterar" ) ) {

                int id = Integer.parseInt( request.getParameter( "id" ) );
                String descricao = request.getParameter( "descricao" );

                Genero g = new Genero();
                g.setId( id );
                g.setDescricao( descricao );

                dao.atualizar( g );
                disp = request.getRequestDispatcher( 
                        "/processaGenero?acao=listar" );

            } else if ( acao.equals( "excluir" ) ) {

                int id = Integer.parseInt( request.getParameter( "id" ) );
                Genero g = new Genero();
                g.setId( id );

                dao.excluir( g );
                disp = request.getRequestDispatcher( 
                        "/processaGenero?acao=listar" );

            }

        } catch ( SQLException exc ) {
            exc.printStackTrace();
        }

        disp.forward( request, response );

    }

    @Override
    protected void doGet( 
            HttpServletRequest request, 
            HttpServletResponse response )
            throws ServletException, IOException {
        processRequest( request, response );
    }

    @Override
    protected void doPost( 
            HttpServletRequest request, 
            HttpServletResponse response )
            throws ServletException, IOException {
        processRequest( request, response );
    }

    @Override
    public String getServletInfo() {
        return "GeneroServices";
    }

}
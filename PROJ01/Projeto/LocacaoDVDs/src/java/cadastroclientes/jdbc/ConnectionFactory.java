package cadastroclientes.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * 
 * Uma fábrica de conexões.
 *
 * @author Fernanda M. bv3032345
 * 
 */
public class ConnectionFactory {

    /**
     * O método getConnection retorna uma conexão com a base de dados
     * locacao_dvds.
     *
     * @return Uma conexão com o banco de dados locacao_dvds.
     * @throws SQLException Caso ocorra algum problema durante a conexão.
     */
    public static Connection getConnection() throws SQLException {

        // o método getConnection de DriverManager recebe como parâmetro
        // a URL da base de dados, o usuário usado para conectar na base
        // e a senha deste usuário.
        return DriverManager.getConnection(
                "jdbc:mariadb://localhost/locacao_dvds",
                "root",
                "root" );

    }

}

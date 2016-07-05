package DAO;

import java.sql.*;

public class BancoDados {
    /**
     * Manipula dados no banco conforme a string sql passada.
     * @param connection
     * @param sql
     * @throws SQLException
     */
    public boolean manupularDados(Connection connection, String sql) throws SQLException {
        Statement statement = connection.createStatement();
        statement.executeUpdate(sql);
        return true;
    }


    /**
     * Busca um dado de acordo com as Strings passadas
     * @param connection
     * @param sql
     * @param campo
     * @throws SQLException
     */
    public Object buscarDado (Connection connection, String sql, String campo) throws SQLException {
        Statement statement = connection.createStatement();
        ResultSet rs = statement.executeQuery(sql);
        while (rs.next()) {
            rs.getString(campo);
        }
        return rs;
    }
}

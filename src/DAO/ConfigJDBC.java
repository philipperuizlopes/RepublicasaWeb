package DAO;

import java.sql.*;

public class ConfigJDBC {
    /**
     * Carrega o drive para objenção de conexão com o banco.
     * @return boolean para carregado ou não
     */
    public boolean carregarDrive () {
        try {
            Class.forName("org.sqlite.JDBC");
            return true;
        } catch (ClassNotFoundException exp) {
            return false;
        }
    }

    /**
     * Obtém uma conexão com o banco sqlinte.
     * @param arq
     * @return uma conexão.
     */
    public Connection obterConexao (String arq) {
        try {
            String url = "jdbc:sqlite:" + arq;
            return DriverManager.getConnection(url);
        } catch (SQLException sql) {
            return null;
        }
    }

    /**
     * Fecha uma conexão com o banco.
     * @param connection
     */
    public void fecharConexao (Connection connection) {
        try {
            if (connection != null)
                connection.close();
        } catch (SQLException e) {
            System.err.println(e);
        }
    }
}

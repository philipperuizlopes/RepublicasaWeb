package DAO;

import java.sql.Connection;
import java.sql.SQLException;

/**
 * Created by gleibson on 04/07/16.
 */
public class Inicio {

    public static void main(String [] args) throws SQLException {
        ConfigJDBC conf = new ConfigJDBC();
        BancoDados banco = new BancoDados();
        conf.carregarDrive();
        String arquivo = "";
        Connection conexao = conf.obterConexao(arquivo);

        banco.manupularDados(conexao, "create table atividade (categoria String)");
        banco.manupularDados(conexao, "create table despesa (categoria String)");
        banco.manupularDados(conexao, "create table grupo (nome String, participantes String)");
        banco.manupularDados(conexao, "create table republica (nome String)");
        banco.manupularDados(conexao, "create table pessoa (nome String, email String, senha String)");
        banco.manupularDados(conexao, "create table tarefa (responsavel String, categoria String)");
        banco.manupularDados(conexao, "create table multa (descricao String, responsavel String, valor Integer)");
    }
}

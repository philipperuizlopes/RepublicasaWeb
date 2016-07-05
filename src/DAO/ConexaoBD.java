package DAO;

import java.sql.Connection;
import java.sql.SQLException;

public class ConexaoBD {
    private ConfigJDBC conf = new ConfigJDBC();
    private BancoDados banco = new BancoDados();
    private String arquivo;
    private Connection conexao;

    public ConexaoBD() {
        Boolean carregou = conf.carregarDrive();
        if (carregou) {
            conexao = conf.obterConexao(arquivo);
        }
    }

    public void atualizarAtividade(String dado, String id) throws SQLException {
        String sql = "update atividade set campo = "+ dado + " where id = " + id;
        banco.manupularDados(conexao, sql);
    }

    public void atualizarDespesa(String dado, String id) throws SQLException {
        String sql = "update despesa set campo = "+ dado + " where id = " + id;
        banco.manupularDados(conexao, sql);
    }

    public void atualizarGrupo(String dado, String id) throws SQLException {
        String sql = "update grupo set campo = "+ dado + " where id = " + id;
        banco.manupularDados(conexao, sql);
    }

    public void atualizarRepublica(String dado, String id) throws SQLException {
        String sql = "update republica set campo = "+ dado + " where id = " + id;
        banco.manupularDados(conexao, sql);
    }

    public void atualizarPessoa(String dado, String id) throws SQLException {
        String sql = "update pessoa set campo = "+ dado + " where id = " + id;
        banco.manupularDados(conexao, sql);
    }

    public void atualizarTarefa(String dado, String id) throws SQLException {
        String sql = "update tarefa set campo = "+ dado + " where id = " + id;
        banco.manupularDados(conexao, sql);
    }

    public void atualizarMulta(String dado, String id) throws SQLException {
        String sql = "update multa set campo = "+ dado + " where id = " + id;
        banco.manupularDados(conexao, sql);
    }

    public void excluirAtividade(String id) throws SQLException {
        String sql = "delete from atividade where id = " + id;
        banco.manupularDados(conexao, sql);
    }

    public void excluirDespesa(String id) throws SQLException {
        String sql = "delete from despesa where id = " + id;
        banco.manupularDados(conexao, sql);
    }

    public void excluirGrupo(String id) throws SQLException {
        String sql = "delete from grupo where id = " + id;
        banco.manupularDados(conexao, sql);
    }

    public void excluirRepublica(String id) throws SQLException {
        String sql = "delete from republica where id = " + id;
        banco.manupularDados(conexao, sql);
    }

    public void excluirPessoa(String id) throws SQLException {
        String sql = "delete from pessoa where id = " + id;
        banco.manupularDados(conexao, sql);
    }

    public void excluirTarefa(String id) throws SQLException {
        String sql = "delete from tarefa where id = " + id;
        banco.manupularDados(conexao, sql);
    }

    public void excluirMulta(String id) throws SQLException {
        String sql = "delete from multa where id = " + id;
        banco.manupularDados(conexao, sql);
    }

    public void buscarAtividade(String dado) throws SQLException {
        String sql = "select * from atividade";
        banco.buscarDado(conexao, sql, dado);
    }
    public void buscarDespesa(String dado) throws SQLException {
        String sql = "select * from despesa";
        banco.buscarDado(conexao, sql, dado);
    }
    public void buscarGrupo(String dado) throws SQLException {
        String sql = "select * from grupo";
        banco.buscarDado(conexao, sql, dado);
    }
    public void buscarRepublica(String dado) throws SQLException {
        String sql = "select * from republica";
        banco.buscarDado(conexao, sql, dado);
    }
    public void buscarPessoa(String dado) throws SQLException {
        String sql = "select * from pessoa";
        banco.buscarDado(conexao, sql, dado);
    }
    public void buscarTarefa(String dado) throws SQLException {
        String sql = "select * from tarefa";
        banco.buscarDado(conexao, sql, dado);
    }
    public void buscarMulta(String dado) throws SQLException {
        String sql = "select * from multa";
        banco.buscarDado(conexao, sql, dado);
    }

    public void cadastrarAtividade(String dado) throws SQLException {
        String sql = "insert into atividade values ('" + dado + "')";
        banco.manupularDados(conexao, sql);
    }

    public void cadastrarDespesa(String dado) throws SQLException {
        String sql = "insert into despesa values ('" + dado + "')";
        banco.manupularDados(conexao, sql);
    }

    public void cadastrarGrupo(String dado) throws SQLException {
        String sql = "insert into grupo values ('" + dado + "')";
        banco.manupularDados(conexao, sql);
    }

    public void cadastrarRepublica(String dado) throws SQLException {
        String sql = "insert into republica values ('" + dado + "')";
        banco.manupularDados(conexao, sql);
    }

    public void cadastrarPessoa(String dado) throws SQLException {
        String sql = "insert into pessoa values ('" + dado + "')";
        banco.manupularDados(conexao, sql);
    }

    public void cadastrarTarefa(String dado) throws SQLException {
        String sql = "insert into tarefa values ('" + dado + "')";
        banco.manupularDados(conexao, sql);
    }

    public void cadastrarMulta(String dado) throws SQLException {
        String sql = "insert into grupo values ('" + dado + "')";
        banco.manupularDados(conexao, sql);
    }
}
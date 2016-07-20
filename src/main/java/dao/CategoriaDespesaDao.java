package main.java.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import main.java.dao.utils.ConnectionUtils;
import main.java.model.CategoriaDespesa;

public class CategoriaDespesaDao {

	public static CategoriaDespesa obterPorCodigo(Integer codigo) {
		String sql = "Select nome from categoria_despesa  " + " where codigo = ?";

		Connection conn;
		try {
			conn = ConnectionUtils.getConnection();
			PreparedStatement pstm = conn.prepareStatement(sql);
			pstm.setInt(1, codigo);
			ResultSet rs = pstm.executeQuery();

			if (rs.next()) {
				String nome = rs.getString("nome");
				return new CategoriaDespesa(codigo, nome);
			}
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	public static CategoriaDespesa obterPorNome(String nome) {
		String sql = "Select codigo from categoria_despesa  " + " where nome = ?";

		Connection conn;
		try {
			conn = ConnectionUtils.getConnection();
			PreparedStatement pstm = conn.prepareStatement(sql);
			pstm.setString(1, nome);
			ResultSet rs = pstm.executeQuery();

			if (rs.next()) {
				Integer codigo = rs.getInt("codigo");
				return new CategoriaDespesa(codigo, nome);
			}
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	public static List<CategoriaDespesa> listar() {

		String sql = "Select codigo,nome from categoria_despesa";

		Connection conn;
		try {
			conn = ConnectionUtils.getConnection();
			PreparedStatement pstm = conn.prepareStatement(sql);
			ResultSet rs = pstm.executeQuery();

			List<CategoriaDespesa> categoriaDespesas = new ArrayList<CategoriaDespesa>();
			while (rs.next()) {
				Integer codigo = rs.getInt("codigo");
				String nome = rs.getString("nome");
				CategoriaDespesa categoriaDespesa = new CategoriaDespesa(codigo, nome);
				categoriaDespesas.add(categoriaDespesa);
			}
			conn.close();
			return categoriaDespesas;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	public static Boolean incluir(CategoriaDespesa categoriaDespesa) throws Exception {
		validarUnicidadeNome(categoriaDespesa);
		String sql = "Insert into categoria_despesa(codigo, nome) values(?,?) ";

		Connection conn;
		try {
			conn = ConnectionUtils.getConnection();
			conn.setAutoCommit(false);
			PreparedStatement pstm = conn.prepareStatement(sql);

			pstm.setInt(1, obterProximoCodigo());
			pstm.setString(2, categoriaDespesa.getNome());
			pstm.executeUpdate();
			conn.commit();
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
			return Boolean.FALSE;
		}
		return Boolean.TRUE;
	}

	private static Integer obterProximoCodigo() {
		String sql = "Select max(codigo) as proxCodigo from categoria_despesa";

		Connection conn;
		try {
			conn = ConnectionUtils.getConnection();
			PreparedStatement pstm = conn.prepareStatement(sql);
			ResultSet rs = pstm.executeQuery();

			if (rs.next()) {
				Integer proxCodigo = rs.getInt("proxCodigo");
				return proxCodigo + 1;
			}
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 1;
	}

	public static Boolean alterar(CategoriaDespesa categoriaDespesa) throws Exception {
		validarUnicidadeNome(categoriaDespesa);
		String sql = "Update categoria_despesa set nome = ? where codigo = ? ";

		Connection conn;
		try {
			conn = ConnectionUtils.getConnection();
			conn.setAutoCommit(false);
			PreparedStatement pstm = conn.prepareStatement(sql);

			pstm.setString(1, categoriaDespesa.getNome());
			pstm.setInt(2, categoriaDespesa.getCodigo());
			pstm.executeUpdate();
			conn.commit();
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
			return Boolean.FALSE;
		}
		return Boolean.TRUE;
	}

	private static void validarUnicidadeNome(CategoriaDespesa categoriaDespesa) throws Exception {
		String sql = "Select codigo from categoria_despesa  " + " where nome = ? ";
		if (categoriaDespesa.getCodigo() != null) {
			sql += "and codigo <> ?";
		}
		Connection conn;
		try {
			conn = ConnectionUtils.getConnection();
			PreparedStatement pstm = conn.prepareStatement(sql);
			pstm.setString(1, categoriaDespesa.getNome());
			if (categoriaDespesa.getCodigo() != null) {
				pstm.setInt(2, categoriaDespesa.getCodigo());
			}
			ResultSet rs = pstm.executeQuery();

			if (rs.next()) {
				throw new Exception("Já existe um categoriaDespesa com esse nome!");
			}
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public static Boolean excluirPorCodigo(Integer codigo) {
		String sql = "Delete from categoria_despesa " + " where codigo = ? ";

		Connection conn;
		try {
			conn = ConnectionUtils.getConnection();
			conn.setAutoCommit(false);
			
			PreparedStatement pstm = conn.prepareStatement(sql);
			pstm.setInt(1, codigo);

			pstm.executeUpdate();
			conn.commit();
			conn.close();
			return Boolean.TRUE;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return Boolean.FALSE;
	}

}

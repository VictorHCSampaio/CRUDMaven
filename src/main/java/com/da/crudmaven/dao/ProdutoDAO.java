/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.da.crudmaven.dao;

import com.da.crudmaven.model.Produto;
import com.da.crudmaven.util.Conexao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author proft
 */
public class ProdutoDAO {

    public void cadastrar(Produto p) throws ClassNotFoundException, SQLException {

        Connection con = Conexao.getConexao();
        PreparedStatement comando = con.prepareStatement("insert into produtos (descricao, preco, categoria, qtd_estoque, fornecedor, tipo, qtd_entrada, marca, cor) values (?,?,?,?,?,?,?,?,?)");
        comando.setString(1, p.getDescricao());
        comando.setDouble(2, p.getPreco());
        comando.setString(3, p.getCategoria());
        comando.setInt(4, p.getQtd_estoque());
        comando.setString(5, p.getFornecedor());
        comando.setString(6, p.getTipo());
        comando.setInt(7, p.getQtd_entrada());
        comando.setString(8, p.getMarca());
        comando.setString(9, p.getCor());
        comando.execute();
        con.close();
    }
    
    public void deletar(Produto p) throws ClassNotFoundException, SQLException {

        Connection con = Conexao.getConexao();
        PreparedStatement comando = con.prepareStatement("delete from produtos where id = ?");
        comando.setInt(1, p.getId());
        comando.execute();
        con.close();
    }
    
    public void atualizar(Produto p) throws ClassNotFoundException, SQLException {

        Connection con = Conexao.getConexao();
        PreparedStatement comando = con.prepareStatement("update produtos set descricao = ?, preco = ?, categoria = ?, qtd_estoque = ?, fornecedor = ?, tipo = ?, qtd_entrada = ?, marca = ?, cor = ? where id = ?");
        comando.setString(1, p.getDescricao());
        comando.setDouble(2, p.getPreco());
        comando.setString(3, p.getCategoria());
        comando.setInt(4, p.getQtd_estoque());
        comando.setString(5, p.getFornecedor());
        comando.setString(6, p.getTipo());
        comando.setInt(7, p.getQtd_entrada());
        comando.setString(8, p.getMarca());
        comando.setString(9, p.getCor());
        comando.setInt(10, p.getId());
        comando.execute();
        con.close();
    }

    public Produto consultarById(Produto prod) throws ClassNotFoundException, SQLException {

        Connection con = Conexao.getConexao();
        PreparedStatement comando = con.prepareStatement("select id, descricao, preco, categoria, qtd_estoque, fornecedor, tipo, qtd_entrada, marca, cor from produtos where id=?");
        comando.setInt(1, prod.getId());

        ResultSet resultado = comando.executeQuery();
        Produto p = new Produto();
        if (resultado.next()) {
            p.setId(resultado.getInt("id"));
            p.setDescricao(resultado.getString("descricao"));
            p.setPreco(resultado.getDouble("preco"));
            p.setCategoria(resultado.getString("categoria"));
            p.setQtd_estoque(resultado.getInt("qtd_estoque"));
            p.setFornecedor(resultado.getString("fornecedor"));
            p.setTipo(resultado.getString("tipo"));
            p.setQtd_entrada(resultado.getInt("qtd_entrada"));
            p.setMarca(resultado.getString("marca"));
            p.setCor(resultado.getString("cor"));
        }
        con.close();

        return p;
    }

    public List<Produto> consultarTodos() throws ClassNotFoundException, SQLException {

        Connection con = Conexao.getConexao();
        PreparedStatement comando = con.prepareStatement("select id, descricao, preco, categoria, qtd_estoque, fornecedor, tipo, qtd_entrada, marca, cor from produtos order by id");
        ResultSet resultado = comando.executeQuery();
        List<Produto> todosProdutos = new ArrayList<Produto>();
        while (resultado.next()) {
            Produto p = new Produto();
            p.setId(resultado.getInt("id"));
            p.setDescricao(resultado.getString("descricao"));
            p.setPreco(resultado.getDouble("preco"));
            p.setCategoria(resultado.getString("categoria"));
            p.setQtd_estoque(resultado.getInt("qtd_estoque"));
            p.setFornecedor(resultado.getString("fornecedor"));
            p.setTipo(resultado.getString("tipo"));
            p.setQtd_entrada(resultado.getInt("qtd_entrada"));
            p.setMarca(resultado.getString("marca"));
            p.setCor(resultado.getString("cor"));
            todosProdutos.add(p);
        }
        con.close();
        return todosProdutos;
    }
}

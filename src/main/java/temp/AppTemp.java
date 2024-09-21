/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package temp;

import com.da.crudmaven.dao.ProdutoDAO;
import com.da.crudmaven.model.Produto;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author proft
 */
public class AppTemp {

    public static void main(String[] args) {
        ProdutoDAO pdao = new ProdutoDAO();
        List<Produto> lista = new ArrayList();
        try {
            lista = pdao.consultarTodos();
            for (Produto p : lista) {
                if (p.getDescricao() != null) {
                    System.out.println("id.........: " + p.getId());
                    System.out.println("Descrição..: " + p.getDescricao());
                    System.out.println("Preço......: " + p.getPreco());
                    System.out.println("\n");
                } else {
                    System.out.println("Produto não encontrado...");
                }
            }
        } catch (ClassNotFoundException ex) {
            System.out.println("Erro ClassNoutFound..: " + ex.getMessage());
        } catch (SQLException ex) {
            System.out.println("Erro SQL...: " + ex.getMessage());
        }
    }

}

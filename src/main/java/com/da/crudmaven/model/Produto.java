/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.da.crudmaven.model;

/**
 *
 * @author proft
 */
public class Produto {

    private int id;
    private String descricao;
    private double preco;
    private String categoria;
    private int qtd_estoque;
    private String fornecedor;
    private String tipo;
    private int qtd_entrada;
    private String marca;
    private String cor;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public double getPreco() {
        return preco;
    }

    public void setPreco(double preco) {
        this.preco = preco;
    }
    
    public String getCategoria(){
        return categoria;
    }
    
    public void setCategoria(String categoria){
        this.categoria = categoria;
    }
    
    public int getQtd_estoque(){
        return qtd_estoque;
    }
    
    public void setQtd_estoque(int qtd_estoque){
        this.qtd_estoque = qtd_estoque;
    }
    
    public String getFornecedor(){
        return fornecedor;
    }
    
    public void setFornecedor(String fornecedor){
        this.fornecedor = fornecedor;
    }
    
    public String getTipo(){
        return tipo;
    }
    
    public void setTipo(String tipo){
        this.tipo = tipo;
    }
    
    public int getQtd_entrada(){
        return qtd_entrada;
    }
    
    public void setQtd_entrada(int qtd_entrada){
        this.qtd_entrada = qtd_entrada;
    }
    
    public String getMarca(){
        return marca;
    }
    
    public void setMarca(String marca){
        this.marca = marca;
    }
    
    public String getCor(){
        return cor;
    }
    
    public void setCor(String cor){
        this.cor = cor;
    }
}



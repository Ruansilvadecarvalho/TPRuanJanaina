package Herança;

public class Main {

    public static void main(String[] args) {
        Vip vip = new Vip();

        vip.setNome("Janaina Ruan Carvalho");

        vip.setSenha(4231);

        vip.autentica(4231);
    }
}

class Vip extends Cliente {

    private int senha;
    private int numeroDeClientesVip;

    public boolean autentica(int senha) {
        if (this.senha == senha) {
            System.out.println("Acesso Permitido!");
            return true;
        } else {
            System.out.println("Acesso Negado!");
            return false;
        }
    }

    public void setSenha(int senha) {
        this.senha = senha;
    }
}

class Cliente {

    private String nome;
    private String cpf;
    private double salario;

    public void setNome(String nome) {
        this.nome = nome;
    }
}

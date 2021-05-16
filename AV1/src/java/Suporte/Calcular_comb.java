package Suporte;
public class Calcular_comb {
    public String CalculoQLCG(float autonomia, float tempo_gv,float vel_M){
        float resposta;

        resposta=(vel_M * tempo_gv)/ autonomia;   

        return String.format("Quantidade de Combustível utilizado(L)= %.2f", resposta);
    }
    
    public String exemplo(){
         float array[]={10,20,30};
         String respota="";
         respota+="Digita a autonomia do seu veículo(KM/L):"+array[0]+"<BR>";
         respota+="Digita o tempo que você gastou em sua viagem (horas):"+array[1]+"<BR>";
         respota+="Digite o Velocidade Média em que você fez o percurso (Km/h):"+array[2]+"<BR>";
         respota+=new Calcular_comb().CalculoQLCG(array[0],array[1],array[2])+"<BR>";
    return respota;
    }
    
    
}

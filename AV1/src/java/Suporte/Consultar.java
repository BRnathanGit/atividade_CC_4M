package Suporte;
import java.util.ArrayList;
import java.util.List;
import Suporte.Coleção_e_array;
public class Consultar {

    public List<Coleção_e_array> getHis() {
        return his;
    }
    
    List <Coleção_e_array>his=new ArrayList();

    public String getHistórico(){
        String resporta="";
        for (Coleção_e_array valor : his) {
            resporta+="Autonomia:"+valor.getAutonomia()+"<br>";
            resporta+="tempo que você gastou em sua viagem:"+valor.getTempo_gv()+"<br>";
            resporta+="Velocidade Média em que você fez o percurso:"+valor.getVel_M()+"<br>";
        }
        return resporta;
    }

    public void setHistórico(List<Coleção_e_array> histórico){
        this.his = histórico;
        for (Coleção_e_array valor : his){
            System.out.print("Autonomia:"+valor.getAutonomia()+"<br>");
            System.out.print("tempo que você gastou em sua viagem:"+valor.getTempo_gv()+"<br>");
            System.out.print("Velocidade Média em que você fez o percurso:"+valor.getVel_M()+"<br>");
        }
    }
    //public void addHistórico(String Autonomia,String Tempo_gv,String Vel_M){
    //    his.add(new Colição_e_array(Autonomia,Tempo_gv,Vel_M));  
    //}
    
}

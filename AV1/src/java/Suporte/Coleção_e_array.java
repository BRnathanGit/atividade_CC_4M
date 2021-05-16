package Suporte;
import java.util.ArrayList;
import java.util.List;

public class Coleção_e_array {

    private String autonomia;
    private String tempo_gv;
    private String vel_M;
    
    public List <Coleção_e_array>histórico=new ArrayList<>();
    
    public Coleção_e_array(String autonomia,String tempo_gv,String vel_M){
        this.autonomia=autonomia;
        this.tempo_gv=tempo_gv;
        this.vel_M=vel_M;
    }    
    public String getAutonomia() {
        return autonomia;
    }

    public void setAutonomia(String autonomia) {
        this.autonomia = autonomia;
    }

    public String getTempo_gv() {
        return tempo_gv;
    }

    public void setTempo_gv(String tempo_gv) {
        this.tempo_gv = tempo_gv;
    }

    public String getVel_M() {
        return vel_M;
    }

    public void setVel_M(String vel_M) {
        this.vel_M = vel_M;
    }
    
}

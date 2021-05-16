<%@page import="Suporte.Calcular_comb"%>
<%@page import="Suporte.Coleção_e_array"%>
<%@page import="Suporte.Consultar"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            try{
         String autonomia_txt, tempo_gv_txt , Vel_M_txt;
         float autonomia,tempo_gv,vel_M;
         
         autonomia_txt = request.getParameter("autonomia");
         tempo_gv_txt = request.getParameter("tempo_gv");
         Vel_M_txt = request.getParameter("vel_M");
         
         
         
         List <Coleção_e_array> his =new ArrayList();
         
         Consultar Con = new Consultar();
         
         //Con.addHistórico(autonomia_txt,tempo_gv_txt,Vel_M_txt);
         
         his.add(new Coleção_e_array(autonomia_txt,tempo_gv_txt,Vel_M_txt));
         
         Con.setHistórico(his);
         
         autonomia =Float.parseFloat(autonomia_txt);
         tempo_gv=Float.parseFloat(tempo_gv_txt);
         vel_M=Float.parseFloat(Vel_M_txt);
         
         out.println("Digita a autonomia do seu veículo(KM/L):"+autonomia_txt+"<BR>");
         out.println("Digita o tempo que você gastou em sua viagem (horas):"+tempo_gv_txt+"<BR>");
         out.println("Digite o Velocidade Média em que você fez o percurso (Km/h):"+Vel_M_txt+"<BR>");
         out.println(new Calcular_comb().CalculoQLCG(autonomia,tempo_gv,vel_M)+"<BR>");
         
         Consultar c = new Consultar();
         System.out.print(c.getHistórico());
            }catch (Exception e){
                out.print("Erro encontrado: " + e.getMessage());
            }
        %>
    </body>
</html>

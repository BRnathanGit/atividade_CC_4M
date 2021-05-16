<%@page import="Suporte.Consultar"%>
<%@page import="Suporte.Coleção_e_array"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> histórico</title>
    </head>
    <body>
    <%
    try{
        List <Coleção_e_array>his=new ArrayList();
        
        his.add(new Coleção_e_array("945","2","120"));
        his.add(new Coleção_e_array("50","4","150"));
        his.add(new Coleção_e_array("125","6","180"));
        
        for (Coleção_e_array valor : his){
            out.print("Autonomia:"+valor.getAutonomia()+"<br>");
            out.print("tempo que você gastou em sua viagem:"+valor.getTempo_gv()+"<br>");
            out.print("Velocidade Média em que você fez o percurso:"+valor.getVel_M()+"<br>");
        }
        }catch (Exception e)
        {
                out.print("Erro encontrado: " + e.getMessage());
         }
    %>
    </body>
</html>

<%@page import="Suporte.Calcular_comb" %>
<%@page import="java.util.List" %>
<%@page import="java.util.ArrayList" %>
<%@page import="Suporte.Coleção_e_array" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Programa de cálculo da quantidade de litros de combustível gasta em uma viagem</title>
    </head>
    <body>
        <%
            Calcular_comb p = new Calcular_comb();
            out.print("<h4>"+"Exemplo de saida"+"</h4>"+p.exemplo());
        %>
        <h1></h1>
        <div id="Dados">
            <p>Cálculo da quantidade de litros de combustível gasta em uma viagem.</p><!-- Usando o Input para o calculo -->
            <form action="exibir_menssagem.jsp" method="get" target="result">
                Digita a autonomia do seu veículo(KM/L):<br><input type="text" name="autonomia"><br><br>
                Digita o tempo que você gastou em sua viagem (horas):<br><input type="text" name="tempo_gv"><br><br>
                Digite o Velocidade Média em que você fez o percurso (Km/h):<br><input type="text" name="vel_M"><br><br>
                <input type="submit" name="enviar" value="Calcular">
            </form>
            <br><form action="histórico.jsp" method="get" target="result">
                <input type="submit" name="mostrar_historico" value="Histórico">
            </form>
        </div>
        <div id="retorno">
            <iframe name="result" width="900" height="100"></iframe>
        </div>
        <%
          String exemp_autonomia[][]={
                {"Volvo XC90 T8","945"},
                {"Peugeot 208 1.2","869"},
                {"Renault Logan","745"},
                {"Fiat Mobi Drive 1.0","756,7"},
                {"Ford KA Sedan 1.0","795,6"},
                {"Chevrolet Prisma 1.0","853,2"}
};
         for(int x=0; x < (exemp_autonomia.length); x++){
            out.print("<br>"+"modelo:" + exemp_autonomia[x][0]);
            out.print("<br>|Autonomia:" + exemp_autonomia[x][1] + "<br>");
        }
        
        %>
        
    </body>
</html>

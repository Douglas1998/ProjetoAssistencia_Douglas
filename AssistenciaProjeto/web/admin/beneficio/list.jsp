<%@page import="modelo.Beneficio"%>
<%@page import="dao.BeneficioDAO"%>
<%@include file="../cabecalho.jsp"%>
<%@page import="java.util.List"%>


<%    
       
    BeneficioDAO dao = new BeneficioDAO();
    List<Beneficio> lista = dao.listar();
    

%>


<!-- gambiarra pra alinhar o botão a esquerda-->
<style>
    .direita
    {
        text-align: right;
        padding-right: 10%;

    }
</style>
<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text">
            <h4>Benefício</h4>
            <!-- Colored mini FAB button -->
            <div class="direita">
                <a href="add.jsp">
                    <button class="mdl-button mdl-js-button mdl-button--fab mdl-button--mini-fab mdl-button--colored">
                        <i class="material-icons">add</i>
                    </button>  
                </a>
            </div>

            <table class="mdl-data-table mdl-js-data-table">
                <thead>
                    <tr>

                        <th>Tipo do Benefício</th>
                        <th>Valor padrão</th>
                        <th>Ações</th>
                    </tr>



                </thead>


                <tbody>
                    
                     <%
                        for (Beneficio b : lista) {


                    %>




                    <tr>
                        <td><%=b.getTipoBeneficio()%></td>
                        <td><%=b.getValorBeneficio()%></td>



                        <td>
                            <!-- 
                                Atualizar 
                            -->
                            <div id="ttupd" class="icon material-icons">
                                <i class="material-icons"><a href="upd.jsp?idBeneficio=<%=b.getIdBeneficio()%>"> update </a></i>
                            </div>


                            <div class="mdl-tooltip" for="ttupd">
                                Editar
                            </div>


                            <!-- 
                                Excluir 
                            -->


                            <div id="ttdel" class="icon material-icons">
                                <i class="material-icons"><a href="del-ok.jsp?idBeneficio=<%=b.getIdBeneficio()%>">delete</a></i>
                            </div>


                            <div class="mdl-tooltip" for="ttdel">
                                Excluir
                            </div>

                        </td>

                    </tr>
                    
                      <%

                        }
                        
                        
                    %>

                  

                </tbody>


            </table>   
        </div>

    </div>

</section>

<%@include file="../rodape.jsp"%>


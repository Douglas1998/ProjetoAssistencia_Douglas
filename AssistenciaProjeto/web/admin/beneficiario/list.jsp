<%@page import="java.text.SimpleDateFormat"%>
<%@page import="modelo.Beneficiario"%>
<%@page import="dao.BeneficiarioDAO"%>
<%@include file="../cabecalho.jsp"%>
<%@page import="java.util.List"%>


<%    BeneficiarioDAO dao = new BeneficiarioDAO();
    List<Beneficiario> lista = dao.listar();

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
            <h4>Beneficiario</h4>
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
                        <th>Nome</th>
                        <th>CPF</th>
                        <th>Curso</th>
                        <th>Semestre</th>
                        <th>Data de Ingresso</th>




                        <th>Ações</th>
                    </tr>


                </thead>






                <tbody>

                    <%                        String data;
                        String data2;

                        for (Beneficiario ben : lista) {

                            SimpleDateFormat sf = new SimpleDateFormat("dd/MM/yyyy");
                            data = sf.format(ben.getDataIngresso());
                            data2 = sf.format(ben.getDataNascimento());


                    %>




                    <tr>

                        <!-- DADOS PESSOAIS-->

                        <th><%=ben.getNome()%></th> 
                        <td><%=ben.getCpf()%></td>
                        <td><%=ben.getCurso()%></td>
                        <td><%=ben.getSemestre()%></td>
                        <td><%=data%></td>











                        <td>
                            <!-- 
                                Atualizar 
                            -->
                            <div id="ttupd" class="icon material-icons">
                                <i class="material-icons"><a href="upd.jsp?idBeneficiario=<%=ben.getIdBeneficiario()%>"> update </a></i>
                            </div>


                            <div class="mdl-tooltip" for="ttupd">
                                Editar
                            </div>


                            <!-- 
                                Excluir 
                            -->


                            <div id="ttdel" class="icon material-icons">
                                <i class="material-icons"><a href="del-ok.jsp?idBeneficiario=<%=ben.getIdBeneficiario()%>">delete</a></i>
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


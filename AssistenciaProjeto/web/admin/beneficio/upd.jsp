<%@page import="modelo.Beneficio"%>
<%@page import="dao.BeneficioDAO"%>
<%@include file="../cabecalho.jsp"%>

<%

    if (request.getParameter("idBeneficio") == null) {

        response.sendRedirect("list.jsp");

        return;

    }

    String beneficio = request.getParameter("idBeneficio");

    BeneficioDAO dao = new BeneficioDAO();
    Beneficio b = dao.buscarPorChavePrimaria(Long.parseLong(beneficio));

    if (b == null) {

        response.sendRedirect("list.jsp");
        return;

    }


%>

<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text">
            <h4>Benefício - Atualizar</h4>
            <form action="upd-ok.jsp" method="post">
                <!-- 
                    primeira div -- área que ocupará o campo de formulário
                    segunda div -- campo de texto e label 
                
                receber o id no categoria e na pergunta no atualizar
                -->
                
                <!--
                ************************************
                GUARDAR COMO MODELO
                ************************************
                <div class="mdl-cell--12-col"> 

                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" name="txtIdCategoria" value="c.getId()%>" required  id="txtIdCategoria" readonly ="readonly" />
                        <label class="mdl-textfield__label" for="txtIdCategoria">Id</label>
                    </div>

                </div>

                
                -->
                

                <div class="mdl-cell--12-col"> 

                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" name="txtIdBeneficio" value="<%=b.getIdBeneficio()%>" required  id="txtIdBeneficio" readonly ="readonly" />
                        <label class="mdl-textfield__label" for="txtIdBeneficio">Id</label>
                    </div>

                </div>


              <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" name="txtTipo_Beneficio" value="<%=b.getTipoBeneficio()%>" required  id="txtTipo_Beneficio" />
                        <label class="mdl-textfield__label" for="txtTipo_Beneficio">Tipo do Benefício</label>
                    </div>
                </div>
                
                 <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" name="txtValor_Beneficio" value="<%=b.getValorBeneficio()%>" required  id="txtValor_Beneficio" />
                        <label class="mdl-textfield__label" for="txtValor_Beneficio">Valor Padrão do Benefício</label>
                    </div>
                </div>




                <div class="mdl-cell--12-col">

                    <button type="submit" class="mdl-button mdl-js-button mdl-button--fab mdl-button--mini-fab mdl-button--colored">
                        <i class="material-icons">Atualizar</i></button>
                    <button type="reset" class="mdl-button mdl-js-button mdl-button--fab mdl-button--mini-fab mdl-button--colored">
                        <i class="material-icons">Limpar</i></button>


                </div>
            </form>
        </div>

    </div>

</section>

<%@include file="../rodape.jsp"%>



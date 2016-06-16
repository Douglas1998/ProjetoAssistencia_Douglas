<%@page import="java.math.BigDecimal"%>
<%@page import="modelo.Beneficio"%>
<%@page import="dao.BeneficioDAO"%>
<%@include file="../cabecalho.jsp"%>

<%    if (request.getParameter("txtIdBeneficio") == null || request.getParameter("txtTipo_Beneficio") == null || request.getParameter("txtValor_Beneficio") == null) {

        response.sendRedirect("list.jsp");

        return;

    }

    String id = request.getParameter("txtIdBeneficio");
    String tipo = request.getParameter("txtTipo_Beneficio");
    String valor = request.getParameter("txtValor_Beneficio");

    BeneficioDAO dao = new BeneficioDAO();

    Beneficio b = dao.buscarPorChavePrimaria(Long.parseLong(id));

    BigDecimal valorb = new BigDecimal(valor);

    b.setValorBeneficio(valorb);
    b.setTipoBeneficio(tipo);

    dao.alterar(b);
    

%>

<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text ">
            <h4>Atualizar</h4>
            <p>Benefício atualizado com sucesso.</p>
            <a href="list.jsp"><i class="material-icons">list</i></a>

        </div>

    </div>

</section>

<%@include file="../rodape.jsp"%>


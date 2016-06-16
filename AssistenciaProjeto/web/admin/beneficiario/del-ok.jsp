<%@page import="modelo.Beneficiario"%>
<%@page import="dao.BeneficiarioDAO"%>
<%@include file="../cabecalho.jsp"%>

<%

    String beneficiario;
    
    if(request.getParameter("idBeneficiario") == null) {
        
        response.sendRedirect("list.jsp");
        return;
    }
    
    else {
        
        
        beneficiario = request.getParameter("idBeneficiario");
    }
    
    BeneficiarioDAO dao = new BeneficiarioDAO();
    
    Beneficiario ben = dao.buscarPorChavePrimaria(Long.parseLong(beneficiario));
    
    
    dao.excluir(ben);
    
    
%>


<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text ">
            <h4>Benefic�rio - Excluir</h4>
            <p>Benefici�rio exclu�do com sucesso.</p>
            <a href="list.jsp"><i class="material-icons">list</i></a>

        </div>

    </div>

</section>

<%@include file="../rodape.jsp"%>


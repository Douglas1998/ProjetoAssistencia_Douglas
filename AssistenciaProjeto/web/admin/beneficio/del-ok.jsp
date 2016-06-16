<%@page import="modelo.Beneficio"%>
<%@page import="dao.BeneficioDAO"%>
<%@include file="../cabecalho.jsp"%>

<%
/*
    String categoria;

    if (request.getParameter("idCategoria") == null) {
        response.sendRedirect("list.jsp");
        return;
    } else {

        categoria = request.getParameter("idCategoria");

    }

    CategoriaDAO dao = new CategoriaDAO();

    Categoria cat = dao.buscarPorChavePrimaria(Long.parseLong(categoria));
    
    dao.excluir(cat);
        */
    
    
    String beneficio;
    
    if(request.getParameter("idBeneficio") == null) {
        
        response.sendRedirect("list.jsp");
        return;
    }
    
    else {
        
        
        beneficio = request.getParameter("idBeneficio");
    }
    
    BeneficioDAO dao = new BeneficioDAO();
    
    Beneficio ben = dao.buscarPorChavePrimaria(Long.parseLong(beneficio));
    
    
    dao.excluir(ben);
    
    

%>


<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text ">
            <h4>Benefício - Excluir</h4>
            <p>Benefício excluído com sucesso.</p>
            <a href="list.jsp"><i class="material-icons">list</i></a>

        </div>

    </div>

</section>

<%@include file="../rodape.jsp"%>


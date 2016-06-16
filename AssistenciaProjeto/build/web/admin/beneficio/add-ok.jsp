<%@page import="java.math.BigDecimal"%>
<%@page import="modelo.Beneficio"%>
<%@page import="dao.BeneficioDAO"%>
<%@include file="../cabecalho.jsp"%>


<%        
    String tipo;
    
    if (request.getParameter("txttipo_Beneficio") == null) {
        tipo = ("Parâmetro não atribuido");
    } else {

        tipo = (request.getParameter("txttipo_Beneficio"));

    }
    
    
    String valor;
    
     if (request.getParameter("txtvalor_Beneficio") == null) {
        valor = ("Parâmetro não atribuido");
    } else {

        valor = (request.getParameter("txtvalor_Beneficio"));

    } 
     
    BeneficioDAO dao = new BeneficioDAO();

    Beneficio b = new Beneficio();
    
    BigDecimal valorb = new BigDecimal(valor);

    b.setTipoBeneficio(tipo);
    b.setValorBeneficio(valorb);
    
    dao.incluir(b);


%>


<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text ">
            <h4>Benefício - Cadastrar</h4>
            <p>Benefício cadastrado com sucesso.</p>
            <a href="list.jsp"><i class="material-icons">list</i></a>

        </div>

    </div>

</section>

<%@include file="../rodape.jsp"%>


<%@page import="modelo.Beneficio"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.math.BigDecimal"%>
<%@page import="modelo.Beneficiario"%>
<%@page import="dao.BeneficiarioDAO"%>
<%@include file="../cabecalho.jsp"%>


<%    
    String nome;

    if (request.getParameter("txtNome") == null) {
        nome = ("Par�metro n�o atribuido");
    } else {

        nome = (request.getParameter("txtNome"));

    }

    String cpf;

    if (request.getParameter("txtCpf") == null) {
        cpf = ("Par�metro n�o atribuido");
    } else {

        cpf = (request.getParameter("txtCpf"));

    }

    String banco;

    if (request.getParameter("txtBanco") == null) {
        banco = ("Par�metro n�o atribuido");
    } else {

        banco = (request.getParameter("txtBanco"));

    }

    String agencia;

    if (request.getParameter("txtAgencia") == null) {
        agencia = ("Par�metro n�o atribuido");
    } else {

        agencia = (request.getParameter("txtAgencia"));

    }

    String conta;

    if (request.getParameter("txtConta") == null) {
        conta = ("Par�metro n�o atribuido");
    } else {

        conta = (request.getParameter("txtConta"));

    }

    String datanasc;

    if (request.getParameter("txtdataNasc") == null) {
        datanasc = ("Par�metro n�o atribuido");
    } else {

        datanasc = (request.getParameter("txtdataNasc"));

    }

    String renda;

    if (request.getParameter("txtrendaPercapita") == null) {
        renda = ("Par�metro n�o atribuido");
    } else {

        renda = (request.getParameter("txtrendaPercapita"));

    }

    String estadocivil;

    if (request.getParameter("txtestadoCivil") == null) {
        estadocivil = ("Par�metro n�o atribuido");
    } else {

        estadocivil = (request.getParameter("txtestadoCivil"));

    }

    String moradia;

    if (request.getParameter("txttipoMoradia") == null) {
        moradia = ("Par�metro n�o atribuido");
    } else {

        moradia = (request.getParameter("txttipoMoradia"));

    }

    String mantenedor;

    if (request.getParameter("txtresponsavelManterfamilia") == null) {
        mantenedor = ("Par�metro n�o atribuido");
    } else {

        mantenedor = (request.getParameter("txtresponsavelManterfamilia"));

    }

    String vinculomantenedor;

    if (request.getParameter("txtvinculoMantenedorfamilia") == null) {
        vinculomantenedor = ("Par�metro n�o atribuido");
    } else {

        vinculomantenedor = (request.getParameter("txtvinculoMantenedorfamilia"));

    }

    String vinculobeneficiario;

    if (request.getParameter("txtvinculoBeneficiario") == null) {
        vinculobeneficiario = ("Par�metro n�o atribuido");
    } else {

        vinculobeneficiario = (request.getParameter("txtvinculoBeneficiario"));

    }

    String dataingresso;

    if (request.getParameter("txtdataIngresso") == null) {
        dataingresso = ("Par�metro n�o atribuido");
    } else {

        dataingresso = (request.getParameter("txtdataIngresso"));

    }

    String formaingresso;

    if (request.getParameter("txtformaIngresso") == null) {
        formaingresso = ("Par�metro n�o atribuido");
    } else {

        formaingresso = (request.getParameter("txtformaIngresso"));

    }

    String semestre;

    if (request.getParameter("txtSemestre") == null) {
        semestre = ("Par�metro n�o atribuido");
    } else {

        semestre = (request.getParameter("txtSemestre"));

    }

    String ndependencias;

    if (request.getParameter("txtnumeroDependencias") == null) {
        ndependencias = ("Par�metro n�o atribuido");
    } else {

        ndependencias = (request.getParameter("txtnumeroDependencias"));

    }
    
     String beneficio;

    if (request.getParameter("txtBeneficio") == null) {
        beneficio = ("Par�metro n�o atribuido");
    } else {

        beneficio = (request.getParameter("txtBeneficio"));

    }
    
    String curso;
    
    if (request.getParameter("txtCurso") == null) {
        curso = ("Par�metro n�o atribuido");
    } else {

        curso = (request.getParameter("txtCurso"));

    }
    
    String beneficiosocial;
    
     if (request.getParameter("txtbeneficioSocial") == null) {
        beneficiosocial = ("Par�metro n�o atribuido");
    } else {

        beneficiosocial = (request.getParameter("txtbeneficioSocial"));

    }
         
     BeneficiarioDAO dao = new BeneficiarioDAO();
     
     Beneficiario b = new Beneficiario();
     Beneficio ben = new Beneficio();
     
     
     SimpleDateFormat sf = new SimpleDateFormat("yyyy-mm-dd");
     
     
     Date d = sf.parse(dataingresso);         
     Date dd = sf.parse(datanasc);
     
     b.setAgencia(Integer.parseInt(agencia));
     b.setBanco(banco);
     b.setBeneficioSocial(beneficiosocial);
     b.setConta(conta);
     b.setCpf(cpf);
     b.setCurso(curso);
     b.setEstadoCivil(estadocivil);
     b.setFormaIngresso(formaingresso);
     b.setNome(nome);
     b.setNumeroDependencias(Integer.parseInt(ndependencias));     
     BigDecimal rendab = new BigDecimal(renda);     
     b.setRendaPercapita(rendab);
     b.setResponsavelManterfamilia(mantenedor);
     b.setSemestre(Integer.parseInt(semestre));
     b.setTipoMoradia(moradia); 
     b.setVinculoBeneficiario(vinculobeneficiario); 
     b.setVinculoMantenedorfamilia(vinculomantenedor);        
     b.setDataIngresso(d);
     b.setDataNascimento(dd);
    
     dao.incluir(b);
     
     
     
     
     
     
     
     //convers�o de data
     //como receber o benef�cio/auxilio recebido - da table beneficio
     
     
     
     
     
     
     
     
     
    
    
    
    
    


%>


<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text ">
            <h4>Benefici�rio - Cadastrar</h4>
            <p>Benefici�rio cadastrado com sucesso.</p>
            <a href="list.jsp"><i class="material-icons">list</i></a>

        </div>

    </div>

</section>

<%@include file="../rodape.jsp"%>


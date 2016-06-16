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
        nome = ("Parâmetro não atribuido");
    } else {

        nome = (request.getParameter("txtNome"));

    }

    String cpf;

    if (request.getParameter("txtCpf") == null) {
        cpf = ("Parâmetro não atribuido");
    } else {

        cpf = (request.getParameter("txtCpf"));

    }

    String banco;

    if (request.getParameter("txtBanco") == null) {
        banco = ("Parâmetro não atribuido");
    } else {

        banco = (request.getParameter("txtBanco"));

    }

    String agencia;

    if (request.getParameter("txtAgencia") == null) {
        agencia = ("Parâmetro não atribuido");
    } else {

        agencia = (request.getParameter("txtAgencia"));

    }

    String conta;

    if (request.getParameter("txtConta") == null) {
        conta = ("Parâmetro não atribuido");
    } else {

        conta = (request.getParameter("txtConta"));

    }

    String datanasc;

    if (request.getParameter("txtdataNasc") == null) {
        datanasc = ("Parâmetro não atribuido");
    } else {

        datanasc = (request.getParameter("txtdataNasc"));

    }

    String renda;

    if (request.getParameter("txtrendaPercapita") == null) {
        renda = ("Parâmetro não atribuido");
    } else {

        renda = (request.getParameter("txtrendaPercapita"));

    }

    String estadocivil;

    if (request.getParameter("txtestadoCivil") == null) {
        estadocivil = ("Parâmetro não atribuido");
    } else {

        estadocivil = (request.getParameter("txtestadoCivil"));

    }

    String moradia;

    if (request.getParameter("txttipoMoradia") == null) {
        moradia = ("Parâmetro não atribuido");
    } else {

        moradia = (request.getParameter("txttipoMoradia"));

    }

    String mantenedor;

    if (request.getParameter("txtresponsavelManterfamilia") == null) {
        mantenedor = ("Parâmetro não atribuido");
    } else {

        mantenedor = (request.getParameter("txtresponsavelManterfamilia"));

    }

    String vinculomantenedor;

    if (request.getParameter("txtvinculoMantenedorfamilia") == null) {
        vinculomantenedor = ("Parâmetro não atribuido");
    } else {

        vinculomantenedor = (request.getParameter("txtvinculoMantenedorfamilia"));

    }

    String vinculobeneficiario;

    if (request.getParameter("txtvinculoBeneficiario") == null) {
        vinculobeneficiario = ("Parâmetro não atribuido");
    } else {

        vinculobeneficiario = (request.getParameter("txtvinculoBeneficiario"));

    }

    String dataingresso;

    if (request.getParameter("txtdataIngresso") == null) {
        dataingresso = ("Parâmetro não atribuido");
    } else {

        dataingresso = (request.getParameter("txtdataIngresso"));

    }

    String formaingresso;

    if (request.getParameter("txtformaIngresso") == null) {
        formaingresso = ("Parâmetro não atribuido");
    } else {

        formaingresso = (request.getParameter("txtformaIngresso"));

    }

    String semestre;

    if (request.getParameter("txtSemestre") == null) {
        semestre = ("Parâmetro não atribuido");
    } else {

        semestre = (request.getParameter("txtSemestre"));

    }

    String ndependencias;

    if (request.getParameter("txtnumeroDependencias") == null) {
        ndependencias = ("Parâmetro não atribuido");
    } else {

        ndependencias = (request.getParameter("txtnumeroDependencias"));

    }
    
     String beneficio;

    if (request.getParameter("txtBeneficio") == null) {
        beneficio = ("Parâmetro não atribuido");
    } else {

        beneficio = (request.getParameter("txtBeneficio"));

    }
    
    String curso;
    
    if (request.getParameter("txtCurso") == null) {
        curso = ("Parâmetro não atribuido");
    } else {

        curso = (request.getParameter("txtCurso"));

    }
    
    String beneficiosocial;
    
     if (request.getParameter("txtbeneficioSocial") == null) {
        beneficiosocial = ("Parâmetro não atribuido");
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
     
     
     
     
     
     
     
     //conversão de data
     //como receber o benefício/auxilio recebido - da table beneficio
     
     
     
     
     
     
     
     
     
    
    
    
    
    


%>


<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text ">
            <h4>Beneficiário - Cadastrar</h4>
            <p>Beneficiário cadastrado com sucesso.</p>
            <a href="list.jsp"><i class="material-icons">list</i></a>

        </div>

    </div>

</section>

<%@include file="../rodape.jsp"%>


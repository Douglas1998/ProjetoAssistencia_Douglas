<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.math.BigDecimal"%>
<%@page import="modelo.Beneficiario"%>
<%@page import="dao.BeneficiarioDAO"%>
<%@include file="../cabecalho.jsp"%>

<%    if (request.getParameter("txtidBeneficiario") == null || request.getParameter("txtNome") == null || request.getParameter("txtCpf") == null || request.getParameter("txtBanco") == null || request.getParameter("txtAgencia") == null || request.getParameter("txtConta") == null || request.getParameter("txtdataNasc") == null || request.getParameter("txtrendaPercapita") == null || request.getParameter("txtestadoCivil") == null || request.getParameter("txttipoMoradia") == null || request.getParameter("txtresponsavelManterfamilia") == null || request.getParameter("txtvinculoMantenedorfamilia") == null || request.getParameter("txtbeneficioSocial") == null || request.getParameter("txtvinculoBeneficiario") == null || request.getParameter("txtCurso") == null || request.getParameter("txtdataIngresso") == null || request.getParameter("txtformaIngresso") == null || request.getParameter("txtSemestre") == null || request.getParameter("txtnumeroDependencias") == null || request.getParameter("txtBeneficio") == null) {

        response.sendRedirect("list.jsp");

        return;

    }

    String id = request.getParameter("txtidBeneficiario");
    String nome = request.getParameter("txtNome");
    String cpf = request.getParameter("txtCpf");
    String banco = request.getParameter("txtBanco");
    String agencia = request.getParameter("txtAgencia");
    String conta = request.getParameter("txtConta");
    String datanasc = request.getParameter("txtdataNasc");
    String renda = request.getParameter("txtrendaPercapita");
    String estadocivil = request.getParameter("txtestadoCivil");
    String moradia = request.getParameter("txttipoMoradia");
    String mantenedor = request.getParameter("txtresponsavelManterfamilia");
    String vinculomantenedor = request.getParameter("txtvinculoMantenedorfamilia");
    String beneficiosocial = request.getParameter("txtbeneficioSocial");
    String vinculobeneficiario = request.getParameter("txtvinculoBeneficiario");
    String curso = request.getParameter("txtCurso");
    String dataingresso = request.getParameter("txtdataIngresso");
    String formaingresso = request.getParameter("txtformaIngresso");
    String semestre = request.getParameter("txtSemestre");
    String dependencias = request.getParameter("txtnumeroDependencias");
    String beneficio = request.getParameter("txtBeneficio");

    BeneficiarioDAO dao = new BeneficiarioDAO();

    //Beneficiario ben = dao.buscarPorChavePrimaria(Long.parseLong(id));
    Beneficiario ben = dao.buscarPorChavePrimaria(Long.parseLong(id));

    ben.setAgencia(Integer.parseInt(agencia));
    ben.setBanco(banco);
    ben.setBeneficioSocial(beneficiosocial);
    ben.setConta(conta);
    ben.setCpf(cpf);
    ben.setCurso(curso);
    ben.setEstadoCivil(estadocivil);
    ben.setFormaIngresso(formaingresso);
    ben.setNome(nome);
    ben.setNumeroDependencias(Integer.parseInt(dependencias));
    BigDecimal rendab = new BigDecimal(renda);
    ben.setRendaPercapita(rendab);
    ben.setResponsavelManterfamilia(mantenedor);
    ben.setSemestre(Integer.parseInt(semestre));
    ben.setTipoMoradia(moradia);
    ben.setVinculoBeneficiario(vinculobeneficiario);
    ben.setVinculoMantenedorfamilia(vinculomantenedor);

    SimpleDateFormat sf = new SimpleDateFormat("yyyy-mm-dd");

    Date d = sf.parse(dataingresso);
    Date dd = sf.parse(datanasc);

    ben.setDataIngresso(d);
    ben.setDataNascimento(dd);
    
    dao.alterar(ben);
    
    
    

%>

<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text ">
            <h4>Atualizar</h4>
            <p>Beneficiário  atualizado com sucesso.</p>
            <a href="list.jsp"><i class="material-icons">list</i></a>

        </div>

    </div>

</section>

<%@include file="../rodape.jsp"%>


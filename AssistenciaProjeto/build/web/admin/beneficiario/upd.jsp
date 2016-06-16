<%@page import="modelo.Beneficiario"%>
<%@page import="dao.BeneficiarioDAO"%>
<%@include file="../cabecalho.jsp"%>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">


<%   

    
     if (request.getParameter("idBeneficiario") == null) {

        response.sendRedirect("list.jsp");

        return;

    }

    String beneficiario = request.getParameter("idBeneficiario");

    BeneficiarioDAO dao = new BeneficiarioDAO();
    Beneficiario ben = dao.buscarPorChavePrimaria(Long.parseLong(beneficiario));

    if (ben == null) {

        response.sendRedirect("list.jsp");
        return;

    }

    
%>

<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text">

            <h4>Cadastrar Dados - Beneficiário</h4>

            <form action="add-ok.jsp" method="post">


                <div class="mdl-tabs mdl-js-tabs mdl-js-ripple-effect">
                    <div class="mdl-tabs__tab-bar">
                        <a href="#dados-pessoais" class="mdl-tabs__tab is-active">Pessoais</a>
                        <a href="#dados-pagamento" class="mdl-tabs__tab">Pagamento</a>
                        <a href="#dados-socioeconomicos" class="mdl-tabs__tab">Socioeconomicos</a>
                        <a href="#dados-academicos" class="mdl-tabs__tab">Acadêmicos</a>
                        <a href="#dados-beneficio" class="mdl-tabs__tab">Benefícios</a>

                    </div>



                    <div class="mdl-tabs__panel is-active" id="dados-pessoais">


                        <div class="mdl-cell--12-col"> 
                            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                <input class="mdl-textfield__input" type="text" name="txtNome" value="<%=ben.getNome()%>" required  id="txtNome" />
                                <label class="mdl-textfield__label" for="txtNome">Nome</label>
                            </div>

                        </div>


                        <div class="mdl-cell--12-col"> 
                            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                <input class="mdl-textfield__input" type="text" name="txtCpf" value="<%=ben.getCpf()%>" required  id="txtCpf" />
                                <label class="mdl-textfield__label" for="txtCpf">CPF</label>
                            </div>
                        </div>

                    </div>




                    <div class="mdl-tabs__panel" id="dados-pagamento">                              

                        <div class="mdl-cell--12-col">
                            <div class="mdl-select mdl-js-select mdl-select--floating-label">
                                <select class="mdl-select__input" name="txtBanco" id="professsion">
                                    <option value=""></option>
                                    <option value="Banco do Brasil">Banco do Brasil</option>
                                    <option value="Banrisul">Banrisul</option>
                                    <option value="Santander">Santander</option>
                                    <option value="Bradesco">Bradesco</option>
                                    <option value="HSBC">HSBC</option>
                                    <option value="Caixa Econômica Federal">Caixa Econômica Federal</option>
                                    <option value="Sicredi">Sicredi</option>
                                    <option value="Itaú/Unibanco">Itaú/Unibanco</option>
                                    <option value="PanAmericano">PanAmericano</option>
                                    <option value="Outro">Outro</option>

                                </select>
                                <label class="mdl-select__label" for="professsion">Banco</label>
                            </div>
                        </div>


                        <div class="mdl-cell--12-col"> 
                            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                <input class="mdl-textfield__input" type="text" name="txtAgencia" value="<%=ben.getAgencia()%>" required  id="txtAgencia" />
                                <label class="mdl-textfield__label" for="txtAgencia">Agência</label>
                            </div>
                        </div>

                        <div class="mdl-cell--12-col"> 
                            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                <input class="mdl-textfield__input" type="text" name="txtConta" value="<%=ben.getConta()%>" required  id="txtConta" />
                                <label class="mdl-textfield__label" for="txtConta">Conta</label>
                            </div>
                        </div>

                        </br>
                        </br>  

                    </div>




                    <div class="mdl-tabs__panel" id="dados-socioeconomicos">                                 

                        <div class="mdl-cell--12-col"> 
                            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                <input class="mdl-textfield__input" type="date" name="txtdataNasc" required  id="txtdataNasc" />
                                <label class="mdl-textfield__label" for="txtdataNasc">Data de nascimento</label>
                            </div>
                        </div>


                        <div class="mdl-cell--12-col"> 
                            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                <input class="mdl-textfield__input" type="text" name="txtrendaPercapita" value="<%=ben.getRendaPercapita()%>" required  id="txtrendaPercapita" />
                                <label class="mdl-textfield__label" for="txtrendaPercapita">Renda percapita</label>


                            </div>
                        </div>


                     
                        

                        <div class="mdl-cell--12-col">
                            <div class="mdl-select mdl-js-select mdl-select--floating-label">
                                <select class="mdl-select__input" name="txtestadoCivil" id="professsion">
                                    <option value=""></option>
                                    <option value="Solteiro/a">Solteiro/a</option>
                                    <option value="Casado/a">Casado/a</option>
                                    <option value="Divorciado/a">Divorciado/a</option>
                                    <option value="Separado/a">Separado/a</option>
                                    <option value="Viuvo/a">Viúvo/a</option>                                               

                                </select>
                                <label class="mdl-select__label" for="professsion">Estado Civil</label>
                            </div>
                        </div>
                        
                        



                        <div class="mdl-cell--12-col">
                            <div class="mdl-select mdl-js-select mdl-select--floating-label">
                                <select class="mdl-select__input" name="txttipoMoradia" id="professsion" >
                                    <option value=""></option>
                                    <option value="Propria">Própria</option>
                                    <option value="Alugada">Alugada</option>
                                    <option value="Emprestada">Emprestada</option>
                                    <option value="Cedida">Cedida</option>
                                    <option value="Ocupada">Ocupada</option>   
                                    <option value="Assentamento">Assentamento</option>                                               

                                </select>
                                <label class="mdl-select__label" for="professsion">Tipo de Moradia</label>
                            </div>
                        </div>



                        <div class="mdl-cell--12-col">
                            <div class="mdl-select mdl-js-select mdl-select--floating-label">
                                <select class="mdl-select__input" name ="txtresponsavelManterfamilia" id="professsion">
                                    <option value=""></option>
                                    <option value="próprio beneficiário/a">próprio beneficiário/a</option>
                                    <option value="os pais do beneficiário/a">os pais do beneficiário/a</option>
                                    <option value="somente um dos pais do beneficiário">somente um dos pais do beneficiário/a</option>
                                    <option value="outro familiar/responsavel do beneficiário/a">outro familiar/responsável do beneficiário/a</option>


                                </select>
                                <label class="mdl-select__label" for="professsion">Responsável pela manutenção familiar</label>
                            </div>
                        </div>

                        <div class="mdl-cell--12-col">
                            <div class="mdl-select mdl-js-select mdl-select--floating-label">
                                <select class="mdl-select__input" name ="txtvinculoMantenedorfamilia" id="professsion">
                                    <option value=""></option>
                                    <option value="agricultor/a, trabalhador/a rural">agricultor/a, trabalhador/a rural;</option>
                                    <option value="aposentado/a, pensionista">aposentado/a, pensionista</option>
                                    <option value="desempregado/a">desempregado/a</option>
                                    <option value="do lar">do lar</option>
                                    <option value="estagiário">estagiário</option>
                                    <option value="não exerce atividade remunerada">não exerce atividade remunerada</option>
                                    <option value="profissional liberal/autônomo/a">profissional liberal/autônomo/a</option>
                                    <option value="trabalhador/a informal">trabalhador/a informal</option>
                                    <option value="trabalhador/a de empresa privada">trabalhador/a de empresa privada</option>
                                    <option value="servidor/a, público/a">servidor/a, público/a</option>
                                    <option value="empresário/a, microempresário/a">empresário/a, microempresário/a</option>

                                </select>
                                <label class="mdl-select__label" for="professsion">Principal vínculo do mantenedor da família</label>
                            </div>
                        </div>

                        <!--passar como beneficio social ou passar cada opção da checkbox? -->

                        <div class="mdl-cell--12-col"> 
                            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                <label class="mdl-select__label" for="professsion">Benefício Social</label>
                                </br>
                                </br>

                                <label for="chkbox1" class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect">
                                    <input type="checkbox" name="txtbeneficioSocial" value="Bolsa Família" id="chkbox1" class="mdl-checkbox__input">
                                    <span class="mdl-checkbox__label">Bolsa Família</span>
                                </label>

                                <label for="chkbox2" class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect">
                                    <input type="checkbox" name="txtbeneficioSocial" value="Prestação Continuada à Def..."  id="chkbox2" class="mdl-checkbox__input">
                                    <span class="mdl-checkbox__label">Prestação Continuada à Def..</span>
                                </label>

                                <label for="chkbox3" class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect">
                                    <input type="checkbox" name="txtbeneficioSocial" value="PET"  id="chkbox3" class="mdl-checkbox__input">
                                    <span class="mdl-checkbox__label">PET</span>
                                </label>



                            </div>

                        </div>



                        <div class="mdl-cell--12-col">
                            <div class="mdl-select mdl-js-select mdl-select--floating-label">
                                <select class="mdl-select__input" name="txtvinculoBeneficiario" id="professsion" >
                                    <option value=""></option>
                                    <option value="agricultor/a, trabalhador/a rural">agricultor/a, trabalhador/a rural;</option>
                                    <option value="aposentado/a, pensionista">aposentado/a, pensionista</option>
                                    <option value="desempregado/a">desempregado/a</option>
                                    <option value="do lar">do lar</option>
                                    <option value="estagiário">estagiário</option>
                                    <option value="não exerce atividade remunerada">não exerce atividade remunerada</option>
                                    <option value="profissional liberal/autônomo/a">profissional liberal/autônomo/a</option>
                                    <option value="trabalhador/a informal">trabalhador/a informal</option>
                                    <option value="trabalhador/a de empresa privada">trabalhador/a de empresa privada</option>
                                    <option value="servidor/a, público/a">servidor/a, público/a</option>
                                    <option value="empresário/a, microempresário/a">empresário/a, microempresário/a</option>
                                    <option value="sustentado/a pelos pais">sustentado/a pelos pais</option>
                                    <option value="sustentado/a somente por um dos pais">sustentado/a somente por um dos pais</option>


                                </select>
                                <label class="mdl-select__label" for="professsion">Principal vínculo do beneficário</label>
                            </div>
                        </div>

                    </div>




                    <div class="mdl-tabs__panel" id="dados-academicos">                             


                        <div class="mdl-cell--12-col"> 
                            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                <label class="mdl-select__label" for="professsion">Curso</label>
                                </br>
                            </div>

                            </br>    

                            <label for="chkbox1" class="left">
                                <input type="radio" name="txtCurso" value="Técnico em Informatica" id="chkbox1" class="mdl-radio__button">
                                <span class="mdl-radio">Técnico em Informática</span>
                            </label>

                            </br>

                            <label for="chkbox2" >
                                <input type="radio" name="txtCurso" value="Técnico em Agropecuaria" id="chkbox2" class="mdl-radio__button">
                                <span class="mdl-radio">Técnico em Agropecuária</span>
                            </label>

                            </br>

                            <label for="chkbox3" >
                                <input type="radio" name="txtCurso" value="TADS" id="chkbox3" class="mdl-radio__button">
                                <span class="mdl-radio">TADS - Superior</span>
                            </label>

                            </br>

                            <label for="chkbox4" >
                                <input type="radio" name="txtCurso" value="Técnico em Agroindústria" id="chkbox4" class="mdl-radio__button">
                                <span class="mdl-radio">Técnico em Agroindústria</span>
                            </label>
                            </br>



                        </div>






                        <div class="mdl-cell--12-col"> 
                            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                <input class="mdl-textfield__input" type="date" name="txtdataIngresso" required  id="txtdataIngresso" />
                                <label class="mdl-textfield__label" for="txtdataIngresso">Data do Ingresso</label>
                            </div>


                        </div>
                        
                        String tipo = ComboTipo.getSelectedItem();


                        <div class="mdl-cell--12-col">
                            <div class="mdl-select mdl-js-select mdl-select--floating-label">
                                <select class="mdl-select__input" name="txtformaIngresso" id="professsion">
                                    <option value=""></option>
                                    <option value="Acesso Universal">Acesso Universal</option>
                                    <option value="Reserva de Vagas - L1">Reserva de Vagas - L1</option>
                                    <option value="Reserva de Vagas - L2">Reserva de Vagas - L2</option>
                                    <option value="Reserva de Vagas - L3">Reserva de Vagas - L3</option>
                                    <option value="Reserva de Vagas - L4">Reserva de Vagas - L4</option>



                                </select>
                                <label class="mdl-select__label" for="professsion">Forma de Ingresso</label>
                            </div>
                        </div>

                        <div class="mdl-cell--12-col"> 
                            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                <input class="mdl-textfield__input" type="number" name="txtSemestre" required  id="txtSemestre" />
                                <label class="mdl-textfield__label" for="txtSemestre">Semestre</label>
                            </div>
                        </div>

                        <div class="mdl-cell--12-col"> 
                            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                <input class="mdl-textfield__input" type="number" name="txtnumeroDependencias" required  id="txtnumeroDependencias" />
                                <label class="mdl-textfield__label" for="txtnumeroDependencias">Número de dependencias</label>
                            </div>
                        </div>


                    </div>




                    <div class="mdl-tabs__panel" id="dados-beneficio">                             

                        <div class="mdl-cell--12-col"> 
                            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                <input class="mdl-textfield__input" type="text" name="txtBeneficio" required  id="txtBeneficio" />
                                <label class="mdl-textfield__label" for="txtBeneficio"> Benefício que recebe</label>

                            </div>
                        </div>

                    </div>


                <form action="upd-ok.jsp" method="post">


                    <div class="mdl-cell--12-col">
                        <button type="submit" class="mdl-button mdl-js-button mdl-button--fab mdl-button--mini-fab mdl-button--colored">
                            <i class="material-icons">Atualizar</i></button>
                        <button type="reset" class="mdl-button mdl-js-button mdl-button--fab mdl-button--mini-fab mdl-button--colored">
                            <i class="material-icons">Limpar</i></button>


                    </div>
                </form>
            </div> 



            </section>



            <%@include file="../rodape.jsp"%>









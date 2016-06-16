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

            <h4>Cadastrar Dados - Benefici�rio</h4>

            <form action="add-ok.jsp" method="post">


                <div class="mdl-tabs mdl-js-tabs mdl-js-ripple-effect">
                    <div class="mdl-tabs__tab-bar">
                        <a href="#dados-pessoais" class="mdl-tabs__tab is-active">Pessoais</a>
                        <a href="#dados-pagamento" class="mdl-tabs__tab">Pagamento</a>
                        <a href="#dados-socioeconomicos" class="mdl-tabs__tab">Socioeconomicos</a>
                        <a href="#dados-academicos" class="mdl-tabs__tab">Acad�micos</a>
                        <a href="#dados-beneficio" class="mdl-tabs__tab">Benef�cios</a>

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
                                    <option value="Caixa Econ�mica Federal">Caixa Econ�mica Federal</option>
                                    <option value="Sicredi">Sicredi</option>
                                    <option value="Ita�/Unibanco">Ita�/Unibanco</option>
                                    <option value="PanAmericano">PanAmericano</option>
                                    <option value="Outro">Outro</option>

                                </select>
                                <label class="mdl-select__label" for="professsion">Banco</label>
                            </div>
                        </div>


                        <div class="mdl-cell--12-col"> 
                            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                <input class="mdl-textfield__input" type="text" name="txtAgencia" value="<%=ben.getAgencia()%>" required  id="txtAgencia" />
                                <label class="mdl-textfield__label" for="txtAgencia">Ag�ncia</label>
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
                                    <option value="Viuvo/a">Vi�vo/a</option>                                               

                                </select>
                                <label class="mdl-select__label" for="professsion">Estado Civil</label>
                            </div>
                        </div>
                        
                        



                        <div class="mdl-cell--12-col">
                            <div class="mdl-select mdl-js-select mdl-select--floating-label">
                                <select class="mdl-select__input" name="txttipoMoradia" id="professsion" >
                                    <option value=""></option>
                                    <option value="Propria">Pr�pria</option>
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
                                    <option value="pr�prio benefici�rio/a">pr�prio benefici�rio/a</option>
                                    <option value="os pais do benefici�rio/a">os pais do benefici�rio/a</option>
                                    <option value="somente um dos pais do benefici�rio">somente um dos pais do benefici�rio/a</option>
                                    <option value="outro familiar/responsavel do benefici�rio/a">outro familiar/respons�vel do benefici�rio/a</option>


                                </select>
                                <label class="mdl-select__label" for="professsion">Respons�vel pela manuten��o familiar</label>
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
                                    <option value="estagi�rio">estagi�rio</option>
                                    <option value="n�o exerce atividade remunerada">n�o exerce atividade remunerada</option>
                                    <option value="profissional liberal/aut�nomo/a">profissional liberal/aut�nomo/a</option>
                                    <option value="trabalhador/a informal">trabalhador/a informal</option>
                                    <option value="trabalhador/a de empresa privada">trabalhador/a de empresa privada</option>
                                    <option value="servidor/a, p�blico/a">servidor/a, p�blico/a</option>
                                    <option value="empres�rio/a, microempres�rio/a">empres�rio/a, microempres�rio/a</option>

                                </select>
                                <label class="mdl-select__label" for="professsion">Principal v�nculo do mantenedor da fam�lia</label>
                            </div>
                        </div>

                        <!--passar como beneficio social ou passar cada op��o da checkbox? -->

                        <div class="mdl-cell--12-col"> 
                            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                <label class="mdl-select__label" for="professsion">Benef�cio Social</label>
                                </br>
                                </br>

                                <label for="chkbox1" class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect">
                                    <input type="checkbox" name="txtbeneficioSocial" value="Bolsa Fam�lia" id="chkbox1" class="mdl-checkbox__input">
                                    <span class="mdl-checkbox__label">Bolsa Fam�lia</span>
                                </label>

                                <label for="chkbox2" class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect">
                                    <input type="checkbox" name="txtbeneficioSocial" value="Presta��o Continuada � Def..."  id="chkbox2" class="mdl-checkbox__input">
                                    <span class="mdl-checkbox__label">Presta��o Continuada � Def..</span>
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
                                    <option value="estagi�rio">estagi�rio</option>
                                    <option value="n�o exerce atividade remunerada">n�o exerce atividade remunerada</option>
                                    <option value="profissional liberal/aut�nomo/a">profissional liberal/aut�nomo/a</option>
                                    <option value="trabalhador/a informal">trabalhador/a informal</option>
                                    <option value="trabalhador/a de empresa privada">trabalhador/a de empresa privada</option>
                                    <option value="servidor/a, p�blico/a">servidor/a, p�blico/a</option>
                                    <option value="empres�rio/a, microempres�rio/a">empres�rio/a, microempres�rio/a</option>
                                    <option value="sustentado/a pelos pais">sustentado/a pelos pais</option>
                                    <option value="sustentado/a somente por um dos pais">sustentado/a somente por um dos pais</option>


                                </select>
                                <label class="mdl-select__label" for="professsion">Principal v�nculo do benefic�rio</label>
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
                                <input type="radio" name="txtCurso" value="T�cnico em Informatica" id="chkbox1" class="mdl-radio__button">
                                <span class="mdl-radio">T�cnico em Inform�tica</span>
                            </label>

                            </br>

                            <label for="chkbox2" >
                                <input type="radio" name="txtCurso" value="T�cnico em Agropecuaria" id="chkbox2" class="mdl-radio__button">
                                <span class="mdl-radio">T�cnico em Agropecu�ria</span>
                            </label>

                            </br>

                            <label for="chkbox3" >
                                <input type="radio" name="txtCurso" value="TADS" id="chkbox3" class="mdl-radio__button">
                                <span class="mdl-radio">TADS - Superior</span>
                            </label>

                            </br>

                            <label for="chkbox4" >
                                <input type="radio" name="txtCurso" value="T�cnico em Agroind�stria" id="chkbox4" class="mdl-radio__button">
                                <span class="mdl-radio">T�cnico em Agroind�stria</span>
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
                                <label class="mdl-textfield__label" for="txtnumeroDependencias">N�mero de dependencias</label>
                            </div>
                        </div>


                    </div>




                    <div class="mdl-tabs__panel" id="dados-beneficio">                             

                        <div class="mdl-cell--12-col"> 
                            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                <input class="mdl-textfield__input" type="text" name="txtBeneficio" required  id="txtBeneficio" />
                                <label class="mdl-textfield__label" for="txtBeneficio"> Benef�cio que recebe</label>

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









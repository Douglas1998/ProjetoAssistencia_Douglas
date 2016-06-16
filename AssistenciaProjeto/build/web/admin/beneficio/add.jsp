<%@include file="../cabecalho.jsp"%>

<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
     
    <div class="mdl-card mdl-cell mdl-cell--12-col">
    
        <div class="mdl-card__supporting-text">        
            
            <h4>Benefício - Cadastrar</h4>
            
            
            <form action="add-ok.jsp" method="post">
                <!-- 
                    primeira div -- área que ocupará o campo de formulário
                    segunda div -- campo de texto e label 
                -->
            
                         
                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" name="txttipo_Beneficio" required  id="txttipo_Beneficio" />
                        <label class="mdl-textfield__label" for="txttipo_Beneficio">Tipo do Benefício</label>
                    </div>
                </div>
                
                 <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" name="txtvalor_Beneficio" required  id="txtvalor_Beneficio" />
                        <label class="mdl-textfield__label" for="txtvalor_Beneficio">Valor Padrão do Benefício</label>
                    </div>
                </div>
             
                <div class="mdl-cell--12-col">
                    
                    <button type="submit" class="mdl-button mdl-js-button mdl-button--fab mdl-button--mini-fab mdl-button--colored">
                    <i class="material-icons">Salvar</i></button>
                    <button type="reset" class="mdl-button mdl-js-button mdl-button--fab mdl-button--mini-fab mdl-button--colored">
                    <i class="material-icons">Limpar</i></button>
                 
                    
                </div>
            </form>
        </div>

    </div>

</section>

<%@include file="../rodape.jsp"%>



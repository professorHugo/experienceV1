<!-- Modal Senha Inválida-->
<div class="modal fade in text-muted" id="modalLoggedIn" tabindex="1" role="dialog" aria-labelledby="myModalLabel" style="display: block;">
    <div class="modal-dialog" role="document" style="width:90%">
        <div class="modal-content">
            <div class="modal-header">


                <h4 class="modal-title" id="myModalLabel">Questão atualizada com sucesso</h4>

            </div>
            <div class="modal-body">
                <div class="col-md-12 text-center">
                    <h2><?php echo "<b>Questão alterada:</b> " . $Questao = $_POST['questao']; ?></h2>
                </div>
                <div class="col-md-12 text-justify">
                  <?php
                  echo "<br><b>Conteudo da pergunta:</b> " . $ConteudoPergunta = $_POST['conteudo_pergunta'];
                  "<br>" . $QueryUpdateQuestao = "UPDATE questoes_provas SET pergunta_prova = '$ConteudoPergunta' WHERE id_prova = $Questao";
                  $ExeQrUpdateQuestao = mysql_query($QueryUpdateQuestao);
                  echo "<br>";
                  echo "<br>";
                  // Update da Resposta Correta
                  "Questão: " . $Questao = $_POST['questao'];
                  echo "<br><b>Resposta Correta:</b> " . $RespostaCoreta = $_POST['resposta_correta'];
                  echo "<br>" . $QueryUpdateRespostaCorreta = "UPDATE respostas_provas SET resposta = '$RespostaCoreta' WHERE id = $Questao";
                  echo "<br>";
                  echo "<br>";
                  $ExeQrUpdateRespostaCorreta = mysql_query($QueryUpdateRespostaCorreta);

                  echo "<br>";
                  $QuestaoEditar = $_POST['RespostaErradaid'];
                  $i = 2;
                  do{
                    echo "Resposta errada: ";
                    echo $QuestaoErrada = $_POST['RespostaErrada'.$i];
                    echo "<br>";
                    echo $QueryUpDateRespostaErrada = "UPDATE respostas_provas SET resposta = '$QuestaoErrada' WHERE id='$i'";
                    echo "<br>";
                    echo "<br>";
                     $ExeQrUpDateRespostaErrada = mysql_query($QueryUpDateRespostaErrada);
                    if($ExeQrUpDateRespostaErrada){
                      echo "Respostas erradas também foram atualizadas";
                    }
                    $i++;
                  }while($i <= $QuestaoEditar);
                  //
                  ?>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="modal-footer">
              <a href="?page=Tests&Aula=<?php echo $_POST['aula']?>" class="btn btn-default btn-lg btn-success">Fechar Janela</a>
            </div>
        </div>
    </div>
</div>

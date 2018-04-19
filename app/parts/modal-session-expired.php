<!-- Modal Logged in-->
<div class="modal fade in text-muted" id="modalLoggedIn" tabindex="1" role="dialog" aria-labelledby="myModalLabel" style="display: block">
    <div class="modal-dialog" role="document">
        <div class="modal-content" style="margin-top:15%">
            <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel">Sessão Expirada</h4>
            </div>
            <div class="modal-body">
                <div>
                    <div class="col-md-10 col-md-push-1 text-center" style="padding-left: 0;padding-right: 0">
                        <img src="../img/loading.svg" class="img-responsive" style="width:100px; margin:0 auto;">
                    </div>
                    <div class="clearfix"></div>
                    <div class="col-md-10 col-md-push-1 text-center" style="margin-top: 30px">
                        Sessão não ativa<br>
                        Faça Login novamente
                        <?php session_destroy();?>
                    </div>
                    <div class="clearfix"></div>
                    <meta http-equiv="refresh" content="1;../index.php">
                </div>
            </div>
        </div>
    </div>
</div>
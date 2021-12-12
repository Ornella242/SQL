<!-- La vue des questions -->
<div class="jumbotron jumbotron-fluid">
    <div class="container">
        <div class="row">
            <div class="col-sm-2"></div>
            <div class="col-sm-8">
                <h3 class="display-6 text-center">LES COMMANDES</h3>
            </div>
        </div>
        <hr>
        <div class="row">
            <?php
            foreach (get_cmd() as $key => $value) {
                $lien = 'index.php?pg=commandes&' . md5('id_categorie') . '=' . $value['id'];
            ?>
                <div class="col-sm-4">
                    <div class="card-body">
                        <blockquote class="blockquote mb-0">
                            <a href="<?= $lien; ?>">
                                <h3><?= text_maj($value['categorie']) ?></h3>
                            </a>
                        </blockquote>
                        <p class="alert alert-info">
                            <?= substr( stripslashes( nl2br( get_mean_cmd($value['id'] ) ) ), 0, 100); ?> ...
                        </p>
                        <?php if(isset( $_SESSION['id_user'] ) && !empty( $_SESSION['id_user'] ) ){?> <a href="index.php?pg=<?= md5('categoriecmd') ?>&<?= md5('idcmd') ?>=<?= $value['id']?>"><button class="btn btn-outline-danger">Modifier</button></a> <?php ;}  ?>
                    </div>
                    <hr>
                </div>
            <?php
            }
            ?>
        </div>
    </div>
</div>
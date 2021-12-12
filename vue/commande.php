<?php
if (isset($_REQUEST[md5('id_categorie')])) {
    $id_cate = $_REQUEST[md5('id_categorie')];
?>
    <div class="jumbotron">
        <?php
        if (isset($_REQUEST[md5('errorDelete')])) {
        ?>
            <div class="alert alert-danger text-center" role="alert">
                Un problème est survenu lors de la Suppression.
            </div>
        <?php
        }
        ?>
        <div class="row">
            <div class="col-sm-4">
                <div class="list-group " id="list-tab" role="tablist" style="margin-top:90px; margin-left: 5px">
                    <a class="list-group-item list-group-item-action p-3 mb-2 bg-secondary text-white" id="list-home-list" data-bs-toggle="list" href="#list-home" role="tab" aria-controls="list-home">CMD</a>
                    <?php
                    foreach (get_all_cmd($id_cate) as $key => $value) {
                    ?>
                        <a class="list-group-item list-group-item-action" id="list-profile-list" data-bs-toggle="list" href="#<?= $value['rolecmd'] ?>" role="tab" aria-controls="list-profile"><?= $value['rolecmd'] ?></a>
                    <?php
                    }
                    ?>
                </div>
            </div>
            <div class="col-sm-8 " style="margin-top:120px;">
                <h1 style=" text-shadow:1px 1px 1px black; "> <?= text_maj(get_categorie($id_cate)); ?> </h1>
                <?php
                if (get_lien_img($id_cate) != null) {
                ?>
                    <img src="../images/<?= get_lien_img($id_cate) ?>" class="rounded img-fluid" alt="...">
                <?php
                }

                if (get_mean_cmd($id_cate) != '') {
                ?>
                    <h2 style="text-decoration: underline;" class="pt-4">Que signifie le langage SQL?</h2>
                    <p>
                        <?= stripslashes(nl2br(get_mean_cmd($id_cate))); ?>
                    </p>
                <?php
                }
                if (get_why_cmd($id_cate) != '') {
                ?>
                    <h2 style="text-decoration: underline;">Pourquoi coder en SQL ?</h2>
                    <p>
                        <?= stripslashes(nl2br(get_why_cmd($id_cate))); ?>
                    </p>
                <?php
                }
                ?>
                <h3 style="text-decoration: underline;">Les Commandes SQL</h3>
                <ul>
                    <ol>
                        <?php
                        foreach (get_all_cmd($id_cate) as $key => $value) {
                        ?>
                            <li class="fst-italic fw-bolder"><?= stripslashes($value['rolecmd']) ?><?php if (isset($_SESSION['id_user']) && !empty($_SESSION['id_user'])) { ?> <a href="index.php?pg=<?= md5('addcmd') ?>&<?= md5('idcmd') ?>=<?= $value['id'] ?>"><button class="btn btn-outline-primary">Modifier</button></a> <a href="../module/delete.php?<?= md5('idcmd') ?>=<?= $value['id'] ?>&<?= md5('idParent') ?>=<?= $id_cate ?>"><button class="btn btn-outline-danger">Delete</button></a> <?php }  ?></li>
                            <div class="p-3 mb-2 bg-secondary text-white rounded-pill" id="<?= $value['rolecmd'] ?>"><?= stripslashes($value['commande']) ?></div>

                            <?php
                            if ($value['details'] != NULL) {
                            ?>
                                <ul>
                                    <?php
                                    $details = unserialize($value['details']);
                                    if ($details['details1'] != '') {
                                    ?>
                                        <li><?= nl2br($details['details1']) ?></li>
                                    <?php
                                    }
                                    if ($details['details2'] != '') {
                                    ?>
                                        <li><?= nl2br($details['details2']) ?></li>
                                    <?php
                                    }
                                    if ($details['details3'] != '') {
                                    ?>
                                        <li><?= nl2br($details['details3']) ?></li>
                                </ul>
                            <?php
                                    }
                            ?>
                </ul>
        <?php
                            }
                        }
        ?>
        </ol>
        </ul>
            </div>
        </div>
    </div>
<?php
}
?>
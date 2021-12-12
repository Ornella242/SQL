<?php

if (isset($_REQUEST[md5('idcmd')])) {
    $idcmd = clean_champs($_REQUEST[md5('idcmd')]);
    $val = get_line_categorie($idcmd);
    $details = unserialize($val['details']);
}

?>

<div class="jumbotron">
    <div class="row">
        <div class="col-sm-3 pt-4"></div>
        <form method="POST" action="../module/cmdTraite.php" class="col-sm-6 pt-5" enctype="multipart/form-data">
            <?php
            if (isset($_REQUEST[md5('idcmd')])) {
            ?>
                <legend><strong>Modification Catégorie</strong></legend>
            <?php
            } else {
            ?>
                <legend><strong>Nouvelle Catégorie</strong></legend>
            <?php
            }
            ?>

            <?php
            if (isset($_REQUEST[md5('errorChamps')])) {
            ?>
                <div class="alert alert-danger text-center" role="alert">
                    Veillez remplir les champs.
                </div>
            <?php
            }
            if (isset($_REQUEST[md5('valide')])) {
            ?>
                <div class="alert alert-success text-center" role="alert">
                    Ajouter avec succès.
                </div>
            <?php
            }
            if (isset($_REQUEST[md5('errorCom')])) {
            ?>
                <div class="alert alert-danger text-center" role="alert">
                    Un problème est survenu lors de l'insertion. Réessayez.
                </div>
            <?php
            }
            if (isset($_REQUEST[md5('errorExist')])) {
            ?>
                <div class="alert alert-danger text-center" role="alert">
                    Catégorie existante
                </div>
            <?php
            }
            if (isset($_REQUEST[md5('update')])) {
            ?>
                <div class="alert alert-success text-center" role="alert">
                    Modification effectuée avec succès.
                </div>
            <?php
            }
            if (isset($_REQUEST[md5('notupdate')])) {
            ?>
                <div class="alert alert-warning text-center" role="alert">
                    Modification non effectuée.
                </div>
            <?php
            }
            ?>
            <hr class="colorgraph">
            <div class="form-row">
                <div class="col-md-12 mb-4">
                    <label for="prenom">Catégorie</label>
                    <input type="text" class="form-control" id="email" name="categorie" value="<?php if (isset($_REQUEST[md5('idcmd')])) echo $val['categorie']; ?>" placeholder="Ex: SQL" required>
                </div>
                <div class="col-md-12 mb-4">
                    <textarea class="form-control" id="signification" name="signification" rows="3" placeholder="Signification"><?php if (isset($_REQUEST[md5('idcmd')]) && $details['signification'] != '') echo stripslashes( ( nl2br( $details['signification'] ) ) ); ?></textarea>
                </div>
                <div class="col-md-12 mb-4">
                    <textarea class="form-control" id="why" name="why" rows="3" placeholder="Pourquoi choisir ce cmd ..."><?php if (isset($_REQUEST[md5('idcmd')]) && $details['why'] != '') echo stripslashes($details['why']); ?></textarea>
                </div>
                <?php
                if (isset($_REQUEST[md5('idcmd')])) {
                } else {
                ?>
                    <div id="img" class="form-group">
                        <p class="alert alert-primary text-left"> <strong>NB: </strong> Ajouter une image claire et nette au format (PNG, JPG, JPEG, GIF) </p>
                        <label>Ajouter une image (optionnel)</label>
                        <input type="file" name="img" id="img">
                    </div>
                <?php
                }
                ?>
                <?php
                if (isset($_REQUEST[md5('idcmd')])) {
                ?>
                    <input type="hidden" name="categorieAdd" id="categorieAdd" value="updatec">
                    <input type="hidden" name="id_cmd" id="id_cmd" value="<?= $idcmd ?>">
                <?php
                } else {
                ?>
                    <input type="hidden" name="categorieAdd" id="categorieAdd" value="addc">
                <?php
                }
                ?>
                <div class="col-md-12 mb-4">
                    <?php
                    if (isset($_REQUEST[md5('idcmd')])) {
                    ?>
                        <button class="btn btn-outline-success">UPDATE</button>
                    <?php
                    } else {
                    ?>
                        <button class="btn btn-outline-primary">AJOUTER</button>
                    <?php
                    }
                    ?>
                </div>
            </div>
        </form>
    </div>
</div>
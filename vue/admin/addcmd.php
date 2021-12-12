<?php

if (isset($_REQUEST[md5('idcmd')])) {
    $idcmd = clean_champs($_REQUEST[md5('idcmd')]);
    $val = get_line_cmd($idcmd);
    $details = unserialize($val['details']);
    $choix = get_line_categorie($val['id_categorie_cmd']);
}

?>

<div class="jumbotron">
    <div class="row">
        <div class="col-sm-3 pt-4"></div>
        <form method="POST" action="../module/cmdTraite.php" class="col-sm-6 pt-5">
            <?php
            if (isset($_REQUEST[md5('idcmd')])) {
            ?>
                <legend><strong>Modification CMD</strong></legend>
            <?php
            } else {
            ?>
                <legend><strong>Nouvelle CMD</strong></legend>
            <?php
            }
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
                    <select class="form-control" id="choixCat" name="choixCat">
                        <?php
                        if (isset($_REQUEST[md5('idcmd')])) {
                        ?>
                            <option value="<?= $choix['id'] ?>"><?= text_maj($choix['categorie']) ?></option>
                        <?php
                        } else {
                        ?>
                            <option>Choix de Catégorie</option>
                        <?php
                        }
                        ?>

                        <?php
                        foreach (get_cmd() as $key => $value) {
                        ?>
                            <option value="<?= $value['id'] ?>"><?= text_maj($value['categorie']) ?></option>
                        <?php
                        }
                        ?>
                    </select>
                </div>
                <div class="col-md-12 mb-4">
                    <input type="text" class="form-control" id="cmd" name="cmd" value="<?php if (isset($_REQUEST[md5('idcmd')])) echo $val['commande']; ?>" placeholder="Commande" required>
                </div>
                <div class="col-md-12 mb-4">
                    <input type="text" class="form-control" id="cmdrole" name="cmdrole" value="<?php if (isset($_REQUEST[md5('idcmd')])) echo $val['rolecmd']; ?>" placeholder="Rôle de la commande" required>
                </div>
                <h5>Plus de détails </h5> (Champs optionnels)
                <hr>
                <div class="col-md-12 mb-4">
                    <textarea class="form-control" id="details1" name="details1" rows="2" placeholder="Détails 1 ..."><?php if (isset($_REQUEST[md5('idcmd')]) && $details['details1'] != '') echo ($details['details1']); ?></textarea>
                </div>
                <div class="col-md-12 mb-4">
                    <textarea class="form-control" id="details2" name="details2" rows="2" placeholder="Détails 2 ..."><?php if (isset($_REQUEST[md5('idcmd')]) && $details['details2'] != '') echo ($details['details2']); ?></textarea>
                </div>
                <div class="col-md-12 mb-4">
                    <textarea class="form-control" id="details3" name="details3" rows="2" placeholder="Détails 3 ..."><?php if (isset($_REQUEST[md5('idcmd')]) && $details['details3'] != '') echo ($details['details3']); ?></textarea>
                </div>
                <?php
                if (isset($_REQUEST[md5('idcmd')])) {
                ?>
                    <input type="hidden" name="cmdAdd" id="cmdAdd" value="update">
                    <input type="hidden" name="id_cmd" id="id_cmd" value="<?= $idcmd ?>">
                <?php
                } else {
                ?>
                    <input type="hidden" name="cmdAdd" id="cmdAdd" value="add">
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
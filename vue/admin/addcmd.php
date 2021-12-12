<div class="container">
    <div class="row">
        <div class="col-sm-3 pt-4"></div>
        <form method="POST" action="../module/cmdTraite.php" class="col-sm-6 pt-5">
            <legend><strong>Nouvelle CMD</strong></legend>
            <hr class="colorgraph">
            <div class="form-row">
                <div class="col-md-12 mb-4">
                    <select class="form-control" id="exampleFormControlSelect1">
                        <option>Choix de Catégorie</option>
                        <?php
                        foreach (get_cmd() as $key => $value) {
                        ?>
                            <option value="<?= $value['id'] ?>"><?= text_maj( $value['categorie'] )?></option>
                        <?php
                        }
                        ?>
                    </select>
                </div>
                <div class="col-md-12 mb-4">
                    <input type="text" class="form-control" id="email" name="email" value="" placeholder="Commande" required>
                </div>
                <div class="col-md-12 mb-4">
                    <input type="text" class="form-control" id="email" name="email" value="" placeholder="Rôle de la commande" required>
                </div>
                <h5>Plus de détails </h5> (Champs optionnels)
                <hr>
                <div class="col-md-12 mb-4">
                    <textarea class="form-control" id="exampleFormControlTextarea1" rows="2" placeholder="Détails 1 ..."></textarea>
                </div>
                <div class="col-md-12 mb-4">
                    <textarea class="form-control" id="exampleFormControlTextarea1" rows="2" placeholder="Détails 2 ..."></textarea>
                </div>
                <div class="col-md-12 mb-4">
                    <textarea class="form-control" id="exampleFormControlTextarea1" rows="2" placeholder="Détails 3 ..."></textarea>
                </div>
                <input type="hidden" name="cmdAdd" id="cmdAdd">
                <div class="col-md-12 mb-4">
                    <button class="btn btn-primary">AJOUTER</button>
                </div>
            </div>
        </form>
    </div>
</div>
<div class="container">
    <div class="row">
        <div class="col-sm-3 pt-4"></div>
        <form method="POST" action="../module/cmdTraite.php" class="col-sm-6 pt-5" enctype="multipart/form-data">
            <legend><strong>Nouvelle Catégorie</strong></legend>
            <hr class="colorgraph">
            <div class="form-row">
                <div class="col-md-12 mb-4">
                    <label for="prenom">Catégorie</label>
                    <input type="text" class="form-control" id="email" name="categorie" value="" placeholder="Ex: SQL" required>
                </div>
                <div class="col-md-12 mb-4">
                    <textarea class="form-control" id="signification" name="signification" rows="3" placeholder="Signification"></textarea>
                </div>
                <div class="col-md-12 mb-4">
                    <textarea class="form-control" id="why" name="why" rows="3" placeholder="Pourquoi choisir ce cmd ..."></textarea>
                </div>
                <div id="img" class="form-group">
                    <p class="alert alert-primary text-left"> <strong>NB: </strong> Ajouter une image claire et nette au format (PNG, JPG, JPEG, GIF) </p>
                    <label>Ajouter une image (optionnel)</label>
                    <input type="file" name="img" id="img">
                </div>
                <input type="hidden" name="categorieAdd" id="categorieAdd">
                <div class="col-md-12 mb-4">
                    <button class="btn btn-primary">AJOUTER</button>
                </div>
            </div>
        </form>
    </div>
</div>
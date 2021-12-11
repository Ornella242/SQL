<div class="container">
    <div class="row">
        <div class="col-sm-5 pt-4">
            <div class="h_blog_img pt-5">
                <img class="img-fluid" src="../images/cmd.png" alt="Image" />
            </div>
        </div>
        <div class="col-sm-1"></div>
        <form method="POST" action="../module/admin_mod.php" class="col-sm-6 pt-5">
            <legend><strong>CONNEXION</strong></legend>
            <hr class="colorgraph">
            <div class="form-row">
                <div class="col-md-12 mb-4">
                    <label for="prenom">Email: </label>
                    <input type="email" class="form-control" id="email" name="email" value="<?php if (isset($_COOKIE['email']))  echo clean_champs($_COOKIE['email']); ?>" required>
                </div>
                <div class="col-md-12 mb-4">
                    <label for="prenom">Mot de passe: </label>
                    <input type="password" class="form-control" name="pwd" id="pwd" required>
                </div>
                <input type="hidden" name="actionCon" id="actionCon" value="connexion">
                <div class="col-md-12 mb-4">
                    <button class="btn btn-primary">CONNEXION</button>
                </div>
            </div>
        </form>
    </div>
</div>
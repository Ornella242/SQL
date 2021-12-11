<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar" href="#" id="title" style="font-weight:bold; text-shadow:1px 1px 1px black; font-size:30px; text-decoration: underline;">CMD</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto"></ul>
    <ul class="navbar-nav mr-auto"></ul>
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="index.php?pg=accueil">Accueil</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Commandes
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <?php
          foreach (get_cmd() as $key => $value) {
            $lien = 'index.php?pg=commandes&' . md5('id_categorie') . '=' . $value['id'];
          ?>
            <a class="dropdown-item" href="<?= $lien; ?>"><?= text_maj($value['categorie']) ?></a>
          <?php
          }
          ?>
        </div>
      </li>
      <?php
      if (isset($_SESSION['id_user']) && !empty($_SESSION['id_user'])) {
      ?>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            ADMIN
          </a>
          <div class="dropdown-menu" aria-labelledby="navbarDropdown">
            <a class="dropdown-item" href="index.php?pg=<?= md5('categoriecmd') ?>">Ajouter Catégorie</a>
            <a class="dropdown-item" href="index.php?pg=<?= md5('addcmd') ?>">Ajouter CMD</a>
          </div>
        </li>
      <?php
      }
      ?>
      <li class="nav-item">
        <a class="nav-link disabled" href="#">About</a>
      </li>
    </ul>
  </div>
</nav>
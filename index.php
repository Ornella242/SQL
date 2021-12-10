<!DOCTYPE html>
<html lang="fr">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  <link rel="stylesheet" href="main.css">
  
  <title>Commandes</title>
</head>

<body>

<nav class="navbar navbar-light bg-light fixed-top  shadow-lg p-3 mb-5 bg-body rounded p-3 mb-2 bg-info text-dark">

    <div class="container-fluid">
      <a class="navbar-brand " href="#" id="title" style="padding-left: 75px; font-weight:bold; text-shadow:1px 1px 1px black; font-size:30px;">SQL Commandes</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar" aria-controls="offcanvasNavbar">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasNavbar" aria-labelledby="offcanvasNavbarLabel">
        <div class="offcanvas-header">
          <h5 class="offcanvas-title" id="offcanvasNavbarLabel">SQL CMD</h5>
          <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
        </div>
        <div class="offcanvas-body">
          <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="offcanvasNavbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                SQL
              </a>
              <ul class="dropdown-menu" aria-labelledby="offcanvasNavbarDropdown">
                <li><a class="dropdown-item" href="#création">Création</a></li>
                <li><a class="dropdown-item" href="#">Insertion</a></li>
                <li><a class="dropdown-item" href="#">Suppression</a></li>
                <li><a class="dropdown-item" href="#">Modification</a></li>

              </ul>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="offcanvasNavbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                PL/SQL
              </a>
              <ul class="dropdown-menu" aria-labelledby="offcanvasNavbarDropdown">
                <li><a class="dropdown-item" href="#bas">Bases</a></li>
                <li><a class="dropdown-item" href="#curs">Les Curseurs</a></li>
                <li><a class="dropdown-item" href="#sprg">Les Sous-programmes</a></li>
                <li><a class="dropdown-item" href="#excp">Les exceptions</a></li>
                <li><a class="dropdown-item" href="#trg">Les Triggers</a></li>
                <li><a class="dropdown-item" href="#pck">Les packages</a></li>

              </ul>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="offcanvasNavbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                Dropdown
              </a>
              <ul class="dropdown-menu" aria-labelledby="offcanvasNavbarDropdown">
                <li><a class="dropdown-item" href="#">Action</a></li>
                <li><a class="dropdown-item" href="#">Another action</a></li>

              </ul>
            </li>
          </ul>
          <form class="d-flex">
            <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-success" type="submit">Search</button>
          </form>
        </div>
      </div>
    </div>
  </nav>

  
  
    <div class="container">
      <div class="row">
         <div class="col-md-4">
            <div class="list-group " id="list-tab" role="tablist" style="margin-top:90px; margin-left: 5px">
              <a class="list-group-item list-group-item-action p-3 mb-2 bg-secondary text-white" id="list-home-list" data-bs-toggle="list" href="#list-home" role="tab" aria-controls="list-home">SQL</a>
              <a class="list-group-item list-group-item-action" id="list-profile-list" data-bs-toggle="list" href="#list-profile" role="tab" aria-controls="list-profile">PL/SQL</a>
              <a class="list-group-item list-group-item-action" id="list-messages-list" data-bs-toggle="list" href="#list-messages" role="tab" aria-controls="list-messages">Messages</a>
              <a class="list-group-item list-group-item-action" id="list-settings-list" data-bs-toggle="list" href="#list-settings" role="tab" aria-controls="list-settings">Settings</a>
            </div>
          
            </div>
              <div class="col-md-8 " style="margin-top:120px;">
                  <h1 style=" text-shadow:1px 1px 1px black; " > SQL</h1>
                  <img src="images/index2.jpg" class="rounded" alt="..." style="width: 700px; height:400px"><br><br>
                  
                        <h2 style="text-decoration: underline;">Que signifie le langage SQL?</h2>
                          <p>
                          Le langage SQL (Structured Query Language) est un langage
                           informatique utilisé pour exploiter des bases de données.
                            Il permet de façon générale la définition, la manipulation
                             et le contrôle de sécurité de données. Il est bien supporté 
                             par la très grande majorité des systèmes de gestion de base de données (SGBD)
                          </p>
                    
                    
                      <h2 style="text-decoration: underline;">Pourquoi coder en SQL ?</h2>
                      <p>
                      On s'en sert pour: fournir un contrôle des autorisations sur 
                      l'enregistrement des données plus avancé que ne permet les commandes
                       simples de la base de données.</p>

                       <h3 style="text-decoration: underline;">Les Commandes SQL</h3>
                       <ul>
                          
                         <h3 id="création" > Commandes de création</h3>
                         <ol>
                         <li class="fst-italic fw-bolder">Création  d'une base de données</li>
                         <div class="p-3 mb-2 bg-secondary text-white rounded-pill">CREATE DATABASE <span class="fst-italic">+nom de la base de données;</span> </div>
                         <li class="fst-italic fw-bolder">Création de tables dans une base de données</li>
                         <div class="p-3 mb-2 bg-secondary text-white rounded-pill">CREATE TABLE <span class="fst-italic">+nom de la table</span> (<span class="fst-italic">attribut + type +[taille]</span>) </div>

                         </ol>
                         
                       </ul>
          
                  
              </div>
        </div>
    </div>
     
  




</body>

</html>
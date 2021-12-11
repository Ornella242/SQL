<?php

/**
 * Connexion avec la bdd avec pdo
 */
try {
    $connexion = new PDO(
        'mysql:host=localhost;dbname=cmdprojet',
        'root',
        '',
        array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION)
    );
} catch (Exception $e) {
    die('Erreur : ' . $e->getMessage());
}

  /**
 *  Function qui format les champs en htmlentities et addslashes
 * 
 * @param String $champs
 * @return String
 */
function clean_champs($champs): string{
    return htmlentities(addslashes($champs));
}

  /**
 * Mettre en majuscule une chaine de caractère
 *
 * @param string $text_min
 * @return string
 */
function text_maj( string $text_min ):string{
    return strtoupper($text_min);
}

/**
 * Insertion dans la table listecmd
 *
 * @param String $categorie
 * @param String $details
 * @return void
 */
function updateListe( String $categorie, String $details ){
    global $connexion;
    $sql = $connexion->prepare(
        'INSERT INTO listescmd(
            id, categorie, details
        ) VALUES(
            :id, :categorie, :details
        )'
    );
    $sql->execute(
        array(
            'id'        => NULL,
            'categorie' => $categorie,
            'details'   => $details
        )
    );
    $sql->closeCursor();
}

/**
 * Insertion dans la table cmd
 *
 * @param integer $id_categorie
 * @param String $roleCmd
 * @param String $cmd
 * @param String $details
 * @return void
 */
function updateCmd( int $id_categorie, String $roleCmd, String $cmd, String $details ){
    global $connexion;
    $sql = $connexion->prepare(
        'INSERT INTO cmd(
            id, id_categorie_cmd, rolecmd, commande, details
        ) VALUES(
            :id, :id_categorie, :rolecmd, :cmd, :details
        )'
    );
    $sql->execute(
        array(
            'id'            => NULL,
            'id_categorie'  => $id_categorie,
            'rolecmd'       => $roleCmd,
            'cmd'           => $cmd,
            'details'       => $details
        )
    );
    $sql->closeCursor();
}

/**
 * Récupérer une catégorie
 *
 * @param integer $id_categorie
 * @return String
 */
function get_categorie( int $id_categorie ):String{
    global $connexion;
    $sql = $connexion->prepare(
        'SELECT categorie FROM listescmd WHERE id = :id'
    );
    $sql->execute(
        array(
            'id'    => $id_categorie
        )
    );
    $ans = $sql->fetch();
    if($ans != '')
        return $ans['categorie'];
    else
        return '';
    $sql->closeCursor();
}

/**
 * Obetnir details d'une categorie de commande
 *
 * @param integer $id_categorie
 * @return array
 */
function detailsListe( int $id_categorie ):array{
    global $connexion;
    $sql = $connexion->prepare(
        'SELECT details FROM listescmd WHERE id = :id'
    );
    $sql->execute(
        array(
            'id'    => $id_categorie
        )
    );
    $ans = unserialize($sql->fetch()['details']);
    if($ans != null)
        return $ans;
    else
        return array();
    $sql->closeCursor();
}

/**
 * Signification du cmd
 *
 * @param [type] $id_categorie
 * @return string
 */
function get_mean_cmd( $id_categorie ):string{
    $info = detailsListe( $id_categorie )['signification'];
    return $info;
}

/**
 * Pourquoi choisir le langage
 *
 * @param [type] $id_categorie
 * @return string
 */
function get_why_cmd( $id_categorie ):string{
    $info = detailsListe( $id_categorie )['why'];
    return $info;
}

/**
 * Obtenir le lien d'une image
 *
 * @param [type] $id_categorie
 * @return String
 */
function get_lien_img( $id_categorie ):String{
    global $connexion;
    $sql = $connexion->prepare(
        'SELECT lien_img FROM img WHERE id_cmd = :id'
    );
    $sql->execute(
        array(
            'id'    => $id_categorie
        )
    );
    $ans = $sql->fetch();
    if($ans != '')
        return $ans['lien_img'];
    else
        return '';
    $sql->closeCursor();
}

function get_all_cmd( int $id_categorie ):array{
    global $connexion;
    $sql = $connexion->prepare(
        'SELECT rolecmd, commande FROM cmd WHERE id_categorie_cmd = :id'
    );
    $sql->execute(
        array(
            'id'    => $id_categorie
        )
    );
    $ans = $sql->fetchAll();
    if($ans != null)
        return $ans;
    else
        return array();
    $sql->closeCursor();
}

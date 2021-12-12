<?php
session_start();
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
 * @param array $array
 * @return void
 */
function insertionListe( array $array ):int{
    global $connexion;
    $sql = $connexion->prepare(
        'INSERT INTO listescmd(
            id, categorie, details
        ) VALUES(
            :id, :categorie, :details
        )'
    );
    try {
        $sql->execute($array);
        return $connexion->lastInsertId();
    } catch (\Throwable $th) {
        return -1;
    }
    $sql->closeCursor();
}

/**
 * Insertion dans la table cmd
 *
 * @param array $array
 * @return void
 */
function insertionCmd( array $array ){
    global $connexion;
    $sql = $connexion->prepare(
        'INSERT INTO cmd(
            id, id_categorie_cmd, rolecmd, commande, details
        ) VALUES(
            :id, :id_categorie, :rolecmd, :cmd, :details
        )'
    );
    try {
        $sql->execute($array);
        return $connexion->lastInsertId();
    } catch (\Throwable $th) {
        return -1;
    }
    $sql->closeCursor();
}

/**
 * Mise à jour d'une commande
 *
 * @param array $array
 * @param integer $idcmd
 * @return integer
 */
function updateCmd( array $array, int $idcmd ):int{
    global $connexion;
    $sql = $connexion->prepare(
        'UPDATE cmd SET 
            id_categorie_cmd    = :id_categorie,
            rolecmd             = :rolecmd,
            commande            = :cmd,
            details             = :details
        WHERE id                = '.$idcmd
    );
    try {
        $sql->execute($array);
        return 1;
    } catch (\Throwable $th) {
        return -1;
    }
    $sql->closeCursor();
}

/**
 * Update catégorie commande
 *
 * @param array $array
 * @param integer $idcmd
 * @return integer
 */
function updateCategorie( array $array, int $idcmd ):int{
    global $connexion;
    $sql = $connexion->prepare(
        'UPDATE listescmd SET 
            categorie   = :categorie,
            details     = :details
        WHERE id        = '.$idcmd
    );
    try {
        $sql->execute($array);
        return 1;
    } catch (\Throwable $th) {
        return -1;
    }
    $sql->closeCursor();
}

/**
 * Suppression d'une commande
 *
 * @param integer $idcmd
 * @return boolean
 */
function deleteCmd( int $idcmd ):bool{
    global $connexion;
    $sql = $connexion->prepare('DELETE FROM cmd WHERE id = :idcmd');
    try {
        $sql->execute(
            array(
                'idcmd'=> $idcmd
            )
        );

        return true;
    } catch (\Throwable $th) {
        return false;
    }
    $sql->closeCursor();
}

/**
 * Récupérer une catégorie
 *
 * @param integer $id_categorie
 * @return array
 */
function get_line_categorie( int $id_categorie ):array{
    global $connexion;
    $sql = $connexion->prepare(
        'SELECT * FROM listescmd WHERE id = :id'
    );
    $sql->execute(
        array(
            'id'    => $id_categorie
        )
    );
    $ans = $sql->fetch();
    if($ans != null)
        return $ans;
    else
        return array();
    $sql->closeCursor();
}

/**
 * Récupérer le nom d'une catégorie
 *
 * @param integer $id_categorie
 * @return String
 */
function get_categorie( int $id_categorie ):String{
    $ans = get_line_categorie( $id_categorie );
    if($ans != '')
        return $ans['categorie'];
    else
        return '';
}

/**
 * Obetnir details d'une categorie de commande
 *
 * @param integer $id_categorie
 * @return array
 */
function detailsListe( int $id_categorie ):array{
    $val = get_line_categorie( $id_categorie );
    $ans = unserialize($val['details']);
    if($ans != null)
        return $ans;
    else
        return array();
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

/**
 * Listes des commandes d'une catégorie
 *
 * @param integer $id_categorie
 * @return array
 */
function get_all_cmd( int $id_categorie ):array{
    global $connexion;
    $sql = $connexion->prepare(
        'SELECT id,rolecmd, commande, details FROM cmd WHERE id_categorie_cmd = :id'
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

function get_line_cmd( int $idcmd ):array{
    global $connexion;
    $sql = $connexion->prepare(
        'SELECT id, id_categorie_cmd, rolecmd, commande, details FROM cmd WHERE id = :id'
    );
    $sql->execute(
        array(
            'id'    => $idcmd
        )
    );
    $ans = $sql->fetch();
    if($ans != null)
        return $ans;
    else
        return array();
    $sql->closeCursor();
}


/**
 * Ensemble des catégorie
 *
 * @return array
 */
function get_cmd():array{
    global $connexion;
    $sql = $connexion->prepare(
        'SELECT id, categorie FROM listescmd'
    );
    $sql->execute();
    $ans = $sql->fetchAll();
    if( $ans != null )
        return $ans;
    else
        return array();
    $sql->closeCursor();
}
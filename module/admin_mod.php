<?php
require_once( 'generalFonction.php' );
/**
 * Connexion avec la bdd avec pdo
 */
try {
    $conDistant = new PDO(
        'mysql:host=localhost;dbname=askansw',
        'root',
        '',
        array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION)
    );
} catch (Exception $e) {
    die('Erreur : ' . $e->getMessage());
}

/**
 * Cryptage du pass
 *
 * @param String $pass
 * @return string
 */
function clean_pass( $pass ): string{
    return md5( sha1( $pass ) );
}



function admin(String $email, $pass): int{
    global $conDistant;
    $admin = $conDistant->prepare('SELECT id_author FROM inscris WHERE email_author = :email AND password_author = :pass AND (id_niveau = :id_niv1 OR id_niveau = :id_niv2) AND tmp = :tmp');
    $admin->execute(
        array(
            'email'     => $email,
            'pass'      => $pass,
            'id_niv1'   => 1,
            'id_niv2'   => 2,
            'tmp'       => -1
        )
    );
    $id = $admin->fetch();
    if($id != null)
        return $id['id_author'];
    else
        return -1;
    $admin->closeCursor();
}

if( isset( $_POST['email'], $_POST['pwd'] ) && ( !empty( $_POST['email'] )  && !empty( $_POST['pwd'] ) ) ){
    $email = clean_champs( $_POST['email'] );
    $pass = clean_pass( $_POST['pwd'] );

    if( admin($email, $pass) != -1 ){
        $_SESSION['id_user'] = admin($email, $pass);
        $lien = '../vue/index.php?pg=accueil';
        header('Location: '.$lien);
        exit;
    }else{
        $lien = '../vue/index.php?pg=admin&'.md5('error');
        header('Location: '.$lien);
        exit;
    }
    
}
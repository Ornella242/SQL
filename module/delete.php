<?php
require_once('generalFonction.php');

if( isset( $_REQUEST[md5('idcmd')] ) && (!empty( $_REQUEST[md5('idcmd')]) ) ){
    $idDel = clean_champs( $_REQUEST[md5('idcmd')] );
    $idCate = clean_champs( $_REQUEST[md5('idParent')] );

    $yes = deleteCmd( $idDel );

    if( $yes == true ){
        $lien = '../vue/index.php?pg=commandes&' . md5('id_categorie') . '=' . $idCate;
        header('Location: '.$lien);
        exit;
    }else{
        $lien = '../vue/index.php?pg=commandes&' . md5('id_categorie') . '=' . $idCate.'&'.md5('errorDelete');
        header('Location: '.$lien);
        exit;
    }
}
<?php
require_once('generalFonction.php');

if( isset( $_POST['categorieAdd'] ) ){
    if(!empty( $_POST['categorie'] ) ){
        $categorie = clean_champs( $_POST['categorie'] );
        $signifie = clean_champs( $_POST['signification'] );
        $why = clean_champs( $_POST['why'] );
        if(!empty( $_FILES['img'] )){
            $img = htmlentities($_FILES['img']['name']);
        }

        $details = serialize(
            array(
                'signification' => $signifie,
                'why'           => $why
            )
        );

        $array = array(
            'id'        => NULL,
            'categorie' => $categorie,
            'details'   => $details
        );

        $id_liste = updateListe( $array );
        $sql_inser_img = $connexion->prepare(
            'INSERT INTO img(id, lien_img, id_cmd) VALUES (:id, :lien, :id_cmd)'
        );
        $img_name = $id_liste . $img;
        if( $id_liste != -1 ){
            try {
                $sql_inser_img->execute(
                    array(
                        'id'    => NULL,
                        'lien'  => $img_name,
                        'id_cmd'=> $id_liste
                    )
                );
        
                $upload = "../images/" . $img_name;
                move_uploaded_file($_FILES['img']['tmp_name'], $upload);
            } catch (\Throwable $th) {
                //throw $th;
            }
        }
    }
}
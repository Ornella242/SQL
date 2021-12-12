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

        if( $_POST['categorieAdd'] == 'addc' ){
            $id_liste = insertionListe( $array );
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
                    $lien = '../vue/index.php?pg='.md5('categoriecmd').'&'.md5('valide');
                    header('Location: '.$lien);
                } catch (\Throwable $th) {
                    $lien = '../vue/index.php?pg='.md5('categoriecmd').'&'.md5('errorCom');
                    header('Location: '.$lien);
                    exit;
                }
            }else{
                $lien = '../vue/index.php?pg='.md5('categoriecmd').'&'.md5('errorExist');
                header('Location: '.$lien);
                exit;
            }
        }
        if( $_POST['categorieAdd'] == 'updatec' ){
            $id = clean_champs( $_POST['id_cmd'] );
            $array1 = array(
                'categorie' => $categorie,
                'details'   => $details
            );
            $idcmd = updateCategorie( $array1, $id );
            if($idcmd == 1 ){
                $lien = '../vue/index.php?pg='.md5('categoriecmd').'&'.md5('update').'&'.md5('idcmd').'='.$id;
                header('Location: '.$lien);
                exit;
            }else{
                $lien = '../vue/index.php?pg='.md5('categoriecmd').'&'.md5('notupdate').'&'.md5('idcmd').'='.$id;
                header('Location: '.$lien);
                exit;
            }
        }
    }else{
        $lien = '../vue/index.php?pg='.md5('categoriecmd').'&'.md5('errorChamps');
        header('Location: '.$lien);
        exit;
    }
}
if(isset( $_REQUEST['cmdAdd'] ) ){

    if( isset( $_POST['choixCat'], $_POST['cmd'], $_POST['cmdrole'] ) && ( !empty( $_POST['choixCat'] ) && !empty( $_POST['cmd'] ) && !empty( $_POST['cmdrole'] ) ) ){
        $choix = clean_champs( $_POST['choixCat'] );
        $cmd = clean_champs( $_POST['cmd'] );
        $rolecmd = clean_champs( $_POST['cmdrole'] );

        $d1 = clean_champs( $_POST['details1'] );
        $d2 = clean_champs( $_POST['details2'] );
        $d3 = clean_champs( $_POST['details3'] );

        $details = serialize(
            array(
                'details1'  => $d1,
                'details2'  => $d2,
                'details3'  => $d3
            )
        );
        $array = array(
            'id'            => null,
            'id_categorie'  => $choix,
            'rolecmd'       => $rolecmd,
            'cmd'           => $cmd,
            'details'       => $details
        );

        if( $_REQUEST['cmdAdd'] == 'add' ){
            $idcmd = insertionCmd( $array );
            if($idcmd != -1 ){
                $lien = '../vue/index.php?pg='.md5('addcmd').'&'.md5('valide');
                header('Location: '.$lien);
                exit;
            }else{
                $lien = '../vue/index.php?pg='.md5('addcmd').'&'.md5('errorCom');
                header('Location: '.$lien);
                exit;
            }
        }
        if( $_REQUEST['cmdAdd'] == 'update' ){
            $id = clean_champs( $_POST['id_cmd'] );
            $array1 = array(
                'id_categorie'  => $choix,
                'rolecmd'       => $rolecmd,
                'cmd'           => $cmd,
                'details'       => $details
            );
            $idcmd = updateCmd( $array1, $id );
            if($idcmd == 1 ){
                $lien = '../vue/index.php?pg='.md5('addcmd').'&'.md5('update').'&'.md5('idcmd').'='.$id;
                header('Location: '.$lien);
                exit;
            }else{
                $lien = '../vue/index.php?pg='.md5('addcmd').'&'.md5('notupdate').'&'.md5('idcmd').'='.$id;
                header('Location: '.$lien);
                exit;
            }
        }

    }else{
        $lien = '../vue/index.php?pg='.md5('addcmd').'&'.md5('errorChamps');
        header('Location: '.$lien);
        exit;
    }

}
else{
    $lien = '../vue/index.php?pg='.md5('categoriecmd');
    header('Location: '.$lien);
    exit;
}
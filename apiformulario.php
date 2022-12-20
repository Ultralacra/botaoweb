<?php
    include_once 'formulario.php';

    class ApiFormulario{
        
        function getAll(){
            $formulario = new Formulario();
            $formularios = array();
            $formularios["items"] = array();

            $res = $formulario->obtenerFormulario();

            if($res->rowCount()){
                while($row = $res->fetch(PDO::FETCH_ASSOC)){
                    $item = array(
                        'id'                    => $row['id'],
                        'opcion'                => $row['opcion'],
                        'tipo_pagina'           => $row['tipo_pagina'],
                        'nombre_ecommerce'      => $row['nombre_ecommerce'],
                        'cant_ecommerce'        => $row['cant_ecommerce'],
                        'foto_ecommerce'        => $row['foto_ecommerce'],
                        'nombre_landingpage'    => $row['nombre_landingpage'],
                        'info_landingpage'      => $row['info_landingpage'],
                        'breve_informativa'     => $row['breve_informativa'],
                        'home_informativa'      => $row['home_informativa'],
                        'nosotros_informativa'  => $row['nosotros_informativa'],
                        'servicios_informativa' => $row['servicios_informativa'],
                        'contacto_informativa'  => $row['contacto_informativa'],
                        'pago'                  => $row['pago']
                    );
                    array_push($formularios['items'], $item);
                }
                echo json_encode($formularios);
            }else{
                echo json_encode(array('mensaje' => 'No hay elementos registro'));
            }
        }
    }

    
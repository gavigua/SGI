<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/**
 * Archivo de configuración sgi_config que contiene variables con valores constantes
 * utiles en distintas partes del sistema.
 * @package         SGI
 * @subpackage      Admin
 * @category        Controlador
 * @author          Jcramos
 * @author          Juan Carlos Ramos
 * @link            http://sgi.sti.com.ve/
 * @version         Current v0.1.0 
 * @copyright       Copyright (c) 2017 SGI
 * @license         MIT
 * @since           31/06/2017
 */

/*
  |--------------------------------------------------------------------------
  | Estado
  |--------------------------------------------------------------------------
  |
  | Usualmente en las tablas tenemos un campo estado en algunas tablas para
  | validar el estado de cada registro. La información se almacena en el campo
  | con un valor entero 1 ó 0, a traves de esta variable se humaniza el
  | resultado que se le muestra al usuario.
  |
 */
$config['estado'] = array(
    '0' => 'Inactivo',
    '1' => 'Activo'
);
/*
  |--------------------------------------------------------------------------
  | Opción
  |--------------------------------------------------------------------------
  |
  | En algunas tablas se almacena información con un valor entero 1 ó 0 que
  | dependen de que usuario seleccione entre las opciones Sí o No.
  | A traves de esta variable se humanizan las opciones quel usuario puede
  | seleccionar
  |
 */
$config['opcion'] = array(
    '' => 'Seleccione',
    '1' => 'Si',
    '2' => 'No'
);
/*
  |--------------------------------------------------------------------------
  | Lenguaje
  |--------------------------------------------------------------------------
  |
  | Lenguajes del sistema.
  |
 */
$config['lenguaje'] = array(
    '1' => 'Español',
    '2' => 'Ingles'
);
/*
  |--------------------------------------------------------------------------
  | Meses del año
  |--------------------------------------------------------------------------
  |
  | Retorna el nombre de los meses del año.
  |
 */
$config['meses'] = array(
    "Enero",
    "Febrero",
    "Marzo",
    "Abril",
    "Mayo",
    "Junio",
    "Julio",
    "Agosto",
    "Septiembre",
    "Octubre",
    "Noviembre",
    "Diciembre"
);
/*
  |--------------------------------------------------------------------------
  | Días de la semana
  |--------------------------------------------------------------------------
  |
  | Retorna los días de la semana.
  |
 */
$config['dias'] = array(
    "Domingo",
    "Lunes",
    "Martes",
    "Miercoles",
    "Jueves",
    "Viernes",
    "Sábado"
);
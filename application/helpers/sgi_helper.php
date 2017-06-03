<?php
defined('BASEPATH') OR exit('No direct script access allowed');
/*
 * Helper para SGI.
 * @package     SGICMS
 * @subpackage  Helper
 * @category    Helper
 * @autor       Jcramos
 * @link        http://sgi.sti.com.ve
 * @version     Current v0.1.0
 * @copyright   Copyright (c) 2017  STI
 * @license     MIT License
 * @since       02/06/2017
 * 
 */

/*
 * Controlador
 * Retorna el nombre del controlador
 * el cual se hace la peticion
 * @return String Nombre del Controlador
 * 
 */

function controlador(){
    $CI = & get_instance();
    return $CI->router->class;
    }


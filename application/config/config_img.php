<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/**
 * Archivo de configuración config_img que contiene variables con valores constantes
 * utiles en distintas partes del sistema para cargar imagenes.
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

$CI =& get_instance();	
$CI->config->load('config');   
$this->base_url = $CI->config->item('base_url'); 
	
$config['img_logo']    = '<img src="'.$this->base_url.'/assets/sgi/images/logo.png" height="60px" style="padding-left:15px;">';
$config['icon_up']     = '<img src="'.$this->base_url.'/assets/sgi/images/icon_up.png" width="20px" height="20px" />';
$config['icon_down']   = '<img src="'.$this->base_url.'/assets/sgi/images/icon_down.png" width="20px" height="20px" />';
$config['icon_edit']    = '<img src="'.$this->base_url.'/assets/sgi/images/icon_edit.png" />';
$config['icon_add']    = '<img src="'.$this->base_url.'/assets/sgi/images/ico_add.gif" />';
$config['icon_search'] = '<img src="'.$this->base_url.'/assets/sgi/images/icon-search.png" width="15px" height="15px" />';
$config['icon_back']   = '<img src="'.$this->base_url.'/assets/sgi/images/icon_back.gif" />';
$config['icon_next']   = '<img src="'.$this->base_url.'/assets/sgi/images/icon_next.gif" width="20px" height="20px" />';
$config['icon_gotop']  = '<img src="'.$this->base_url.'/assets/sgi/images/go-top.png" />';
$config['icon_prev']   = '<img src="'.$this->base_url.'/assets/sgi/images/icon_prev.gif" width="20px" height="20px" />';
$config['img_loading'] = '<img src="'.$this->base_url.'/assets/sgi/images/loading.gif">';
$config['icon_delete'] = '<img src="'.$this->base_url.'/assets/sgi/images/cross.png" />';
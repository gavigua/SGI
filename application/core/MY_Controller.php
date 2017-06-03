<?php
defined('BASEPATH') OR exit('No direct script access allowed');
/*
 * Extender el Core de Codeigniter, para crear un Controlador master.
 * @package     SGICMS
 * @subpackage  CORE
 * @category    Controller
 * @autor       Jcramos
 * @link        http://sgi.sti.com.ve
 * @version     Current v0.1.0
 * @copyright   Copyright (c) 2017  STI
 * @license     MIT License
 * @since       02/06/2017
 * 
 */

class MY_Controller extends CI_Controller {

    public $controlador;
    public $vista;
    public $url;
    public $titulo;
    
    public function __construct() {
        parent::__construct();
        $this->controlador = controlador();
        $this->titulo = humanize($this->controlador);
    }

}

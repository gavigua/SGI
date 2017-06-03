<?php

defined('BASEPATH') OR exit('No direct script access allowed');
/*
 * Helper para SGI.
 * @package     SGICMS
 * @subpackage  Libreria
 * @category    Libreria
 * @autor       Jcramos
 * @link        http://sgi.sti.com.ve
 * @version     Current v0.1.0
 * @copyright   Copyright (c) 2017  STI
 * @license     MIT License
 * @since       02/06/2017
 * 
 */

class Seguridad {
    /*
     * Contiene la instancia CI
     * @var Instance
     */

    protected $CI;

    /*
     * Obliga a los usuarios a realizar el inicio de session 
     * excepto que intente ingresar a los controladores de login y migration
     * si el usuario ya inicio session y no intenta salir por la url ingresa al 
     * login lo redirecciona al dashboard
     */

    public function __construct() {
        $this->CI = & get_instance(); //permite acceder a los recursos de codeigniter
        $controller = $this->CI->router->class;
        $method = $this->CI->router->method;
        $is_login = $this->CI->session->userdata('user_login');
        if ($controller !== 'login' && $controller !== 'migrations' && !$is_login) {
            $this->CI->session->set_userdata('peticion_url', current_url());
            redirect('login');
        } else if ($controller == 'login' && $is_login && $method = !'salir') {
            redirect('/');
        }
        $this->checkPermisos($controller, $method, $this->CI->session->userdata('rol_id'));
    }

    /**
     * Este metodo verifica si el rol del usuario logueado 
     * tiene permisos para acceder al controlador y metodo
     * recibidos como parametros excepto que::
     * a. la peticion sea hecho por ajax
     * b. El rol del usuario sea SuperAdministrador
     * c. los controladores Home, Login y migrations
     * @param   String $controlador nombre del Controlador
     * @param String $metodo Nombre del Metodo
     * @param int $rol_id id del rol
     * @return Mixed
     *          -  Bolean   TRUE si tiene Permisos
     *          -  redirect si no tiene permisos lo redirecciona al home
     * 
     */
    private function checkPermisos($controlador, $metodo, $rol_id) {
        if ($rol_id === '1' OR $this->CI->input->is_ajax_request() OR $controlador === 'inicio' OR $controlador === 'login' OR $controlador === 'migrations') {
            return TRUE;
        }
        if ($rol_id !== '1' AND $this->CI->uri->segment(1) !== 'admin') {
            $permiso = $controlador . '@' . $metodo;
            $file = FCPATH . 'assets/sgi/permisos/permiso_' . $this->CI->session->userdata('rol_id') . 'json';
            $permisos = json_decode(file_get_contents($file), true);
            if (isset($permisos[$permiso])) {
                return TRUE;
            } else {
                redirect('/');
            }
        } else {
            redirect('/');
        }
    }

}

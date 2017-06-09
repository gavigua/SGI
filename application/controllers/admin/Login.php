<?php

defined('BASEPATH') OR exit('No direct script access allowed');

/**
 * Controlador que permite gestionar los registro de usuarios del sistema
 *
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
class Login extends MY_Controller {

    public function __construct() {
        parent::__construct();
        $ruta = 'dashboard/accesos/';
        $this->vista = 'admin/' . $this->controlador . '/';
        $this->load->model($ruta . 'Usuario_model');
    }

    /**
     * Index Page for this controller.
     *
     * Maps to the following URL
     * 		http://example.com/index.php/welcome
     * 	- or -
     * 		http://example.com/index.php/welcome/index
     * 	- or -
     * Since this controller is set as the default controller in
     * config/routes.php, it's displayed at http://example.com/
     *
     * So any other public methods not prefixed with an underscore will
     * map to /index.php/welcome/<method_name>
     * @see https://codeigniter.com/user_guide/general/urls.html
     */
    public function index() {
        $DATA['titulo'] = 'Gestion de Sistemas';
        $DATA['descripcion'] = 'Gestion de Sistemas de Inventario';
        $DATA['contenido'] = $this->vista . 'index';
        $this->form_validation->set_rules('usuario', 'Usuario', 'trim|required|callback__verificar_usuario');
        $this->form_validation->set_rules('password', 'Contraseña', 'trim|required');
        $this->form_validation->set_message('_verificar_usuario', 'Usuario o Contraseña incorrecta');
        if ($this->form_validation->run()) {
            if ($this->seguridad->crearSession()) {

                redirect($this->session->userdata('peticion_url'));
            }
        } else {

            $this->load->view(THEME . TEMPLATELOGIN, $DATA);
        }
    }

    /*
     * Validar que el usuario y password Solicitados exista en la 
     * Bases de datos         * 
     */

    public function _verificar_usuario() {
        $passwordF = hash('sha256', sha1($this->input->post('password')));
        $query = $this->db
                ->where('usuario', $this->input->post('usuario'))
                ->where('password', $passwordF)
                ->where('estado', 1)
                ->get('usuario');
        if ($query->num_rows() > 0)
            return TRUE;
        return FALSE;
    }

    /*
     * Permite salir del sistema 
     * 
     */

    public function salir() {
        $this->session->sess_destroy();
        redirect('admin/login');
    }

}

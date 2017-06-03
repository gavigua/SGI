<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {

    
    
    public function __construct() {
        parent::__construct();
    }

    /**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */
	public function index()
	{
            $DATA['titulo'] = 'Gestion de Sistemas';
            $DATA['descripcion'] = 'Gestion de Sistemas de Inventario';
	$this->load->view(THEME . TEMPLATELOGIN, $DATA);
	}
        
        
        /*
         * Validar que el usuario y password Solicitados exista en la 
         * Bases de datos         * 
         */
        
        public function _verificar_usuario(){
            $passwordF = hash('sha256', sha1($this->input->post('password')));
            $query  = $this->db
                    ->where('usuario', $this->input->post('usuario') )
                    ->where('password', $passwordF)
                    ->where('estado' , 1)
                    ->get('usuario');
            if ($query->run_rows() > 0 )
                return TRUE;
            return FALSE;
        }
        
        
        public function salir(){
            $this->session->sess_destroy();
            redirect('seguridad/login');
        }
        
}

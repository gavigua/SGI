<?php

defined('BASEPATH') or exit('No direct script access allowed');

/**
 * Controlador que permite gestionar los registro de usuarios del sistema
 *
 * @package         SGI
 * @subpackage      Solicitudes
 * @category        Controlador
 * @author          Jcramos
 * @author          Juan Carlos Ramos
 * @link            http://sgi.sti.com.ve/
 * @version         Current v0.1.0
 * @copyright       Copyright (c) 2017 SGI
 * @license         MIT
 * @since           31/06/2017
 */
class Solicitudes extends MY_Controller {
	/**
	 * Permite la carga de los Modelos a ser usuados, en los diferentes metodos de la clase
	 * e inicializar las variables que permiten dinamizar el desarrollo
	 */
	public function __construct() {

		parent::__construct();
		$ruta = 'dashboard/';
		$rutaGeneral = 'admin/generales/';
		$rutaUsuario = 'admin/seguridad/';
		$this->load->model($ruta . modelo(), 'Modelo');
		$this->load->model($rutaGeneral . 'Esolicitud_model');
		$this->load->model($rutaGeneral . 'Tsolicitud_model');
		$this->load->model($rutaGeneral . 'Procesador_model');
		$this->load->model($rutaGeneral . 'Sistema_operativo_model');
		$this->load->model($rutaGeneral . 'Estado_model');
		$this->load->model($rutaUsuario . 'Usuario_model');

		/* VARIABLES PARA DINAMIZAR */
		$this->url = base_url() . $ruta . str_replace('_', '-', $this->controlador) . '/';
		$this->vista = $ruta . $this->controlador . '/';
		/* END VARIABLES */
	}

	/**
	 * Lista todos las usuarios de rol super-administrador
	 * registrados en la DB.
	 * @return      String vista
	 */
	public function index() {
		$data = [
			'titulo' => $this->titulo,
			'contenido' => $this->vista . 'index',
		];
		$this->load->view(THEME . TEMPLATE, $data);
	}

	/**
	 * Este método primero consulta si esta recibiendo datos via POST,
	 * y si es así valida y guarda el registro del nuevo usuario super-administrador
	 * en la tabla, de lo contrario carga el formulario para crear un nuevo registro
	 * @return  Mixed
	 *          - Si recibe y valida los datos via POST redirecciona hacia el método Index
	 *          - Si no carga la vista del formulario
	 */
	public function crear() {
		$this->form_validation->set_rules($this->Modelo->validate);
		if ($this->form_validation->run() === true) {
			$this->Modelo->crear(); //No utiliza el método insert de my_model
			mensaje_alerta('hecho', 'crear');
			redirect($this->url);
		} else {
			$data = [
				'titulo' => 'Crear ' . $this->titulo,
				'contenido' => $this->vista . 'crear',
			];
			$this->load->view(THEME . TEMPLATE, $data);
		}
	}

	/**
	 * Este método primero consulta si esta recibiendo datos via POST,
	 * y si es así valida y actualiza el registro del usuario en la tabla,
	 * de lo contrario carga el formulario para que el usuario
	 * edite el registro cuyo id se recibe como parametro.
	 * @param   integer $id id del registro
	 * @return  Mixed si recibe y valida los datos via POST
	 *          redirecciona hacia el método Index
	 *          de lo contrario carga la vista del formulario
	 */
	public function actualizar($id = false) {
		$this->form_validation->set_rules($this->Modelo->validate_update);
		if ($this->form_validation->run() === true) {
			$this->Modelo->actualizar($id); //No utiliza el método update de my_model
			mensaje_alerta('hecho', 'actualizar');
			redirect($this->url);
		} else {
			$dato = $this->Modelo->getDato($id);
			$data = [
				'titulo' => 'Actualizar ' . $this->titulo,
				'contenido' => $this->vista . 'crear',
				'data' => $dato ? $dato : show_404(),
			];
			$this->load->view(THEME . TEMPLATE, $data);
		}
	}

	/* esta funcion realiza la eliminacion de los registros de la tablas usuario y usuario_rol
		     * permitiendo la normalizacion de los elementos en ambas tablas
		     *
		     *
	*/

	public function eliminar($id = false) {
		if ($this->Modelo->delete($id)) {
			mensaje_alerta('hecho', 'eliminar');
		} else {
			mensaje_alerta('error', 'eliminar');
		}
		redirect($this->url);
	}

	/**
	 * Cambia un usuario de estado de acuerdo al estado recibido como parametro
	 * @param Int $id
	 * @param Int $estado
	 * @return Redirect to Index
	 */
	public function cambiar_estado($id = false, $estado = null) {
		if ($id && null !== $estado) {
			$this->Modelo->update($id, ['estado' => $estado], true);'0' === $estado ? mensaje_alerta('hecho', 'desactivar') : mensaje_alerta('hecho', 'activar');
			redirect($this->url);
		} else {
			show_404();
		}
	}
}

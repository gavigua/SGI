<?php

defined('BASEPATH') or exit('No direct script access allowed');

/**
 * Modelo que utiliza la libreria MY_Model para
 * la gestión de la tabla usuario.
 * Es utilizada para crear los usuarios del sistema
 *
 *
 * @package         SGI
 * @subpackage      usuario
 * @category        Modelo
 * @author          Jcramos
 * @author          Juan Carlos Ramos
 * @link            http://sgi.sti.com.ve/
 * @version         Current v0.1.0
 * @copyright       Copyright (c) 2017 SGI
 * @license         MIT
 * @since           31/06/2017
 */
class Solicitudes_model extends MY_Model {

	/**
	 * Nombre de la tabla gestionada por éste modelo
	 * @var string
	 */
	public $_table = 'solicitudes';

	/**
	 * Reglas de validación utilizadas
	 * por la libreria MY_Model
	 * para la inserción de datos en la tabla.
	 * @var array
	 */
	public $validate = array(
		array('field' => 'tsolicitud_id', 'label' => 'Tipo de Solicitud', 'rules' => 'trim|required'),
		array('field' => 'descripcion', 'label' => 'Descripcion', 'rules' => 'trim|required'),
		array('field' => 'usuario_id', 'label' => 'Usuario', 'rules' => 'trim'),
		array('field' => 'Esolicitud_id', 'label' => 'Estado de Solicitud', 'rules' => 'trim'),

	);

	/**
	 * Reglas de validación utilizadas
	 * por la libreria MY_Model
	 * para la actualización de datos en la tabla.
	 * @var array
	 */
	public $validate_update = array(
		array('field' => 'tsolicitud_id', 'label' => 'Tipo de Solicitud', 'rules' => 'trim|required'),
		array('field' => 'descripcion', 'label' => 'Descripcion', 'rules' => 'trim|required'),
		array('field' => 'usuario_id', 'label' => 'Usuario', 'rules' => 'trim'),
		array('field' => 'Esolicitud_id', 'label' => 'Estado de Solicitud', 'rules' => 'trim|required'),
	);

	/**
	 * Este método consulta todos los usuarios
	 * y su relación con la tabla usuario_rol
	 * @return array Todos los grados
	 *  select S.*, TS.nombre TSdescripcion, ES.estado ESDescripcion, US.nombre, US.apellido, US.usuario, DE.descripcion DEDescripcion
	 *  from solicitudes S inner join tsolicitud TS on S.tsolicitud_id=TS.id
	 *  inner join esolicitud ES on S.Esolicitud_id=ES.id
	 *  inner join usuario US on S.usuario_id=US.id
	 *  inner join departamento DE on DE.id = US.departamento_id;
	 */
	public function getAll() {
		return $this->db
			->select('S.*, TS.nombre TSdescripcion, ES.estado ESDescripcion, US.nombre, US.apellido,'
				. ' US.usuario, DE.descripcion DEDescripcion')
			->from($this->_table . ' S')
			->join('tsolicitud TS', 'S.tsolicitud_id=TS.id')
			->join('esolicitud ES ', 'S.Esolicitud_id=ES.id')
			->join('usuario US', 'S.usuario_id=US.id')
			->join('departamento DE', 'DE.id = US.departamento_id')
			->get()
			->result();
	}

	/**
	 * Retorna el registro del usuario solicitado,
	 * @param Int $id id del usuario
	 * @return String Array
	 */
	public function getDato($id) {
		return $this->db
			->select('S.*, TS.nombre TSdescripcion, ES.estado ESDescripcion, US.nombre, US.apellido,'
				. ' US.usuario, DE.descripcion DEDescripcion')
			->from($this->_table . ' S')
			->join('tsolicitud TS', 'S.tsolicitud_id=TS.id AND S.id= ' . $id)
			->join('esolicitud ES', 'S.Esolicitud_id=ES.id AND S.id= ' . $id)
			->join('usuario US', 'S.usuario_id=US.id AND S.id= ' . $id)
			->join('departamento DE', 'DE.id = US.departamento_id AND S.id= ' . $id)
			->get()
			->row();
	}

	/*
		     * SELECT U.*, UR.rol_id, UD.departamento_id
		     * FROM ((usuario U INNER JOIN usuario_rol UR ON  UR.usuario_id = U.id )
		     *  INNER JOIN usuario_departamento UD ON UD.usuario_id = U.id)
	*/

	/**
	 * Se crea el usuario en la tabla usuario,
	 * y su respectiva relación en las tablas:
	 *  - usuario_rol
	 * @return Boolean
	 */
	public function crear() {
		$data = array(
			'tsolicitud_id' => $this->input->post('tsolicitud_id'),
			'descripcion' => $this->input->post('descripcion'),
			'usuario_id' => $this->session->userdata('usuario_id'),
			'Esolicitud_id' => 'Abierto', //$this->input->post('Esolicitud_id'),

		);
		$this->db->insert('solicitudes', beforeInsert($data));
		$computadoras_id = $this->db->insert_id();

		return true;
	}

	/**
	 * Método para actualizar el registro del
	 * usuario y reasignar.
	 * @param Int $id
	 * @return Boolean
	 */
	public function actualizar($id) {

		$data = array(
			'tsolicitud_id' => $this->input->post('tsolicitud_id'),
			'descripcion' => $this->input->post('descripcion'),
			'usuario_id' => $id,
			'Esolicitud_id' => $this->input->post('Esolicitud_id'),

		);
		$this->db->where('id', $id)->update('solicitudes', beforeUpdate($data));

		return true;
	}

/**
 * [getIdUsuario description Carga el id del usuario que genera la solicitud]
 * @param  [type] $id [description]
 * @return [type]     [description]
 */
	public function getIdUsuario($id) {
		$datos = $this->Modelo->getDato($id);

		foreach ($datos as &$dato) {
			$datos[$dato->id];
			$id = $datos[$dato->id];
		}
		return $id;
	}

}

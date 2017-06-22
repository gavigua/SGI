<?php

defined('BASEPATH') OR exit('No direct script access allowed');

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
class Usuario_model extends MY_Model {

    /**
     * Nombre de la tabla gestionada por éste modelo
     * @var string
     */
    public $_table = 'usuario';

    /**
     * Reglas de validación utilizadas
     * por la libreria MY_Model
     * para la inserción de datos en la tabla.
     * @var array
     */
    public $validate = array(
        array('field' => 'avatar', 'label' => 'Avatar', 'rules' => 'trim|required'),
        array('field' => 'usuario', 'label' => 'Usuario', 'rules' => 'trim|required|max_length[20]|unique[usuario.usuario]'),
        array('field' => 'nombre', 'label' => 'Nombre', 'rules' => 'trim|required|max_length[20]'),
        array('field' => 'apellido', 'label' => 'Apellido', 'rules' => 'trim|required|max_length[20]'),
        array('field' => 'password', 'label' => 'Contraseña', 'rules' => 'trim|required|min_length[5]|max_length[20]'),
        array('field' => 're_password', 'label' => 'Verifique Contraseña', 'rules' => 'trim|required|matches[password]'),
        array('field' => 'estado', 'label' => 'Estado', 'rules' => 'trim|required|is_natural'),
        array('field' => 'rol_id', 'label' => 'Rol', 'rules' => 'trim|required'),
        array('field' => 'departamento_id', 'label' => 'Departamento', 'rules' => 'trim|required'),
    );

    /**
     * Reglas de validación utilizadas
     * por la libreria MY_Model
     * para la actualización de datos en la tabla.
     * @var array
     */
    public $validate_update = array(
        array('field' => 'avatar', 'label' => 'Avatar', 'rules' => 'trim|required'),
        array('field' => 'usuario', 'label' => 'Usuario', 'rules' => 'trim|required|unique[usuario.usuario]'),
        array('field' => 'nombre', 'label' => 'Nombre', 'rules' => 'trim|required|max_length[20]'),
        array('field' => 'apellido', 'label' => 'Apellido', 'rules' => 'trim|required|max_length[20]'),
        array('field' => 'password', 'label' => 'Contraseña', 'rules' => 'trim|min_length[5]|max_length[10]'),
        array('field' => 're_password', 'label' => 'Verifique Contraseña', 'rules' => 'trim|min_length[5]|matches[password]'),
        array('field' => 'estado', 'label' => 'Estado', 'rules' => 'trim|required|is_natural'),
        array('field' => 'rol_id', 'label' => 'Rol', 'rules' => 'trim|required'),
        array('field' => 'departamento_id', 'label' => 'Departamento', 'rules' => 'trim|required')
    );

    /**
     * Este método consulta todos los usuarios
     * y su relación con la tabla usuario_rol
     * @return array Todos los grados
     */
    public function getAll() {
        return $this->db
                        ->select('U.*, UR.rol_id, R.descripcion')
                        ->from($this->_table . ' U')
                        ->join('usuario_rol UR', 'UR.usuario_id = U.id')
                        ->join('Rol R', 'R.id = UR.rol_id')
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
                        ->select('U.*, UR.rol_id')
                        ->from($this->_table . ' U')
                        ->join('usuario_rol UR', 'UR.usuario_id = U.id AND U.id= ' . $id)
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
            'avatar' => $this->input->post('avatar'),
            'usuario' => $this->input->post('usuario'),
            'nombre' => $this->input->post('nombre'),
            'apellido' => $this->input->post('apellido'),
            'email' => $this->input->post('email'),
            'password' => hash('sha256', sha1($this->input->post('password'))),
            'estado' => $this->input->post('estado'),
            'departamento_id' => $this->input->post('departamento_id')
        );
        $this->db->insert('usuario', beforeInsert($data));
        $usuario_id = $this->db->insert_id();
        /*
         * Se crea el rol para la persona
         */
        $this->db->insert('usuario_rol', beforeInsert(array('usuario_id' => $usuario_id, 'rol_id' => $this->input->post('rol_id'))));
        
        return TRUE;
    }

    /**
     * Método para actualizar el registro del
     * usuario y reasignar.
     * @param Int $id
     * @return Boolean
     */
    public function actualizar($id) {
        $data = array(
            'avatar' => $this->input->post('avatar'),
            'usuario' => $this->input->post('usuario'),
            'nombre' => $this->input->post('nombre'),
            'apellido' => $this->input->post('apellido'),
            'email' => $this->input->post('email'),
            'estado' => $this->input->post('estado')
        );
        if ($this->input->post('password'))
            $data['password'] = hash('sha256', sha1($this->input->post('password')));
        $this->db->where('id', $id)->update('usuario', beforeUpdate($data));
        $this->db->where('usuario_id', $id)->update('usuario_rol', beforeUpdate(array('rol_id' => $this->input->post('rol_id')))); //se actualiza el rol
        $this->db->where('usuario_id', $id)->update('usuario_departamento', beforeUpdate(array('departamento_id' => $this->input->post('departamento_id')))); //se actualiza el Departamento
        return TRUE;
    }

}

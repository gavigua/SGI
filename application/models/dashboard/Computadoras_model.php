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
class Computadoras_model extends MY_Model {

    /**
     * Nombre de la tabla gestionada por éste modelo
     * @var string
     */
    public $_table = 'computadoras';

    /**
     * Reglas de validación utilizadas
     * por la libreria MY_Model
     * para la inserción de datos en la tabla.
     * @var array
     */
    public $validate = array(
        array('field' => 'hostname', 'label' => 'Nombre', 'rules' => 'trim|required|max_length[20]|unique[computadoras.hostname]'),
        array('field' => 'descripcion', 'label' => 'Descripcion', 'rules' => 'trim|required'),
        array('field' => 'capacidad_disco', 'label' => 'Disco', 'rules' => 'trim|required'),
        array('field' => 'memoria_ram', 'label' => 'RAM', 'rules' => 'trim|required|max_length[20]'),
        array('field' => 'tcomputadora_id', 'label' => 'Tipo', 'rules' => 'trim|required|max_length[20]'),
        array('field' => 'marca_id', 'label' => 'Marca', 'rules' => 'trim|required|max_length[20]'),
        array('field' => 'modelo_id', 'label' => 'Marca', 'rules' => 'trim|required|max_length[20]'),
        array('field' => 'Procesador_id', 'label' => 'Procesador', 'rules' => 'trim|required'),
        array('field' => 'sistema_operativo_id', 'label' => 'Sistema Operativo', 'rules' => 'trim|required'),
        array('field' => 'usuario_id', 'label' => 'Asignado', 'rules' => 'trim|required'),
        array('field' => 'serial', 'label' => 'Serial', 'rules' => 'trim|required'),
        array('field' => 'estado_id', 'label' => 'Estado', 'rules' => 'trim|required'),
    );

    /**
     * Reglas de validación utilizadas
     * por la libreria MY_Model
     * para la actualización de datos en la tabla.
     * @var array
     */
    public $validate_update = array(
        array('field' => 'hostname', 'label' => 'Nombre', 'rules' => 'trim|required|max_length[20]|unique[computadoras.hostname]'),
        array('field' => 'descripcion', 'label' => 'Descripcion', 'rules' => 'trim|required'),
        array('field' => 'capacidad_disco', 'label' => 'Disco', 'rules' => 'trim|required'),
        array('field' => 'memoria_ram', 'label' => 'RAM', 'rules' => 'trim|required|max_length[20]'),
        array('field' => 'tcomputadora_id', 'label' => 'Tipo', 'rules' => 'trim|required|max_length[20]'),
        array('field' => 'marca_id', 'label' => 'Marca', 'rules' => 'trim|required|max_length[20]'),
        array('field' => 'modelo_id', 'label' => 'Marca', 'rules' => 'trim|required|max_length[20]'),
        array('field' => 'Procesador_id', 'label' => 'Procesador', 'rules' => 'trim|required'),
        array('field' => 'sistema_operativo_id', 'label' => 'Sistema Operativo', 'rules' => 'trim|required'),
        array('field' => 'usuario_id', 'label' => 'Asignado', 'rules' => 'trim|required'),
        array('field' => 'serial', 'label' => 'Serial', 'rules' => 'trim|required'),
        array('field' => 'estado_id', 'label' => 'Estado', 'rules' => 'trim|required'),
    );

    /**
     * Este método consulta todos los usuarios
     * y su relación con la tabla usuario_rol
     * @return array Todos los grados
     *  select C.*, TC.descripcion, MA.descripcion, PRO.descripcion, SO.descripcion, US.nombre, US.apellido, E.descripcion
     *  from computadoras C inner join tcomputadora TC on C.tcomputadora_id=TC.id
     *  inner join marca MA on C.marca_id=MA.id
     *  inner join Procesador PRO on C.Procesador_id=PRO.id 
     *  inner join sistema_operativo SO on C.sistema_operativo_id=SO.id 
     *  inner join usuario US on C.usuario_id=US.id 
     *  inner join estado E on C.estado_id=E.id; 
     */
    public function getAll() {
        return $this->db
                        ->select('C.*, TC.descripcion TCdescripcion, MA.descripcion MAdescripcion, '
                                . 'MO.descripcion MOdescripcion, IP.direccion_ip, IP.observaciones,'
                                . 'PRO.descripcion PROdescripcion, PRO.procesadores_logicos PROPlogicos,'
                                . 'PRO.cores PROCores,PRO.velocidad PROVelocidad, SO.descripcion SOdescripcion, '
                                . 'US.nombre, US.apellido, E.descripcion Edescripcion')
                        ->from($this->_table . ' C')
                        ->join('tcomputadora TC', 'C.tcomputadora_id=TC.id')
                        ->join('marca MA', 'C.marca_id=MA.id')
                        ->join('Procesador PRO', 'C.Procesador_id=PRO.id')
                        ->join('sistema_operativo SO', 'C.sistema_operativo_id=SO.id')
                        ->join('usuario US', 'C.usuario_id=US.id')
                        ->join('estado E', 'C.estado_id=E.id')
                        ->join('modelo MO', 'C.modelo_id=MO.id')
                        ->join('direccion_ip IP', 'C.id=IP.computadoras_id')
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
                        ->select('C.*, TC.descripcion TCdescripcion, MA.descripcion MAdescripcion, '
                                . 'PRO.descripcion PROdescripcion, PRO.procesadores_logicos PROPlogicos,'
                                . 'PRO.cores PROCores,PRO.velocidad PROVelocidad, SO.descripcion SOdescripcion, '
                                . 'US.nombre, US.apellido, E.descripcion Edescripcion,'
                                . 'IP.direccion_ip, IP.observaciones ')
                        ->from($this->_table . ' C')
                        ->join('tcomputadora TC', 'C.tcomputadora_id=TC.id AND C.id= ' . $id)
                        ->join('marca MA', 'C.marca_id=MA.id AND C.id= ' . $id)
                        ->join('Procesador PRO', 'C.Procesador_id=PRO.id AND C.id= ' . $id)
                        ->join('sistema_operativo SO', 'C.sistema_operativo_id=SO.id AND C.id= ' . $id)
                        ->join('usuario US', 'C.usuario_id=US.id AND C.id= ' . $id)
                        ->join('estado E', 'C.estado_id=E.id AND C.id= ' . $id)
                        ->join('direccion_ip IP', 'C.id=IP.computadoras_id AND C.id= ' . $id)
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
            'hostname' => $this->input->post('hostname'),
            'descripcion' => $this->input->post('descripcion'),
            'capacidad_disco' => $this->input->post('capacidad_disco'),
            'memoria_ram' => $this->input->post('memoria_ram'),
            'tcomputadora_id' => $this->input->post('tcomputadora_id'),
            'marca_id' => $this->input->post('marca_id'),
            'modelo_id' => $this->input->post('modelo_id'),
            'Procesador_id' => $this->input->post('Procesador_id'),
            'sistema_operativo_id' => $this->input->post('sistema_operativo_id'),
            'usuario_id' => $this->input->post('usuario_id'),
            'serial' => $this->input->post('serial'),
            'estado_id' => $this->input->post('estado_id'),
           
        );
        $this->db->insert('computadoras', beforeInsert($data));
        $computadoras_id = $this->db->insert_id();

        /*
         * Se crea el rol para la persona
         */
        $this->db->insert('direccion_ip', beforeInsert(array('computadoras_id' => $computadoras_id, 'direccion_ip' => $this->input->post('direccion_ip'), 'observaciones' => $this->input->post('observaciones'))));

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
            'hostname' => $this->input->post('hostname'),
            'descripcion' => $this->input->post('descripcion'),
            'capacidad_disco' => $this->input->post('capacidad_disco'),
            'memoria_ram' => $this->input->post('memoria_ram'),
            'tcomputadora_id' => $this->input->post('tcomputadora_id'),
            'marca_id' => $this->input->post('marca_id'),
            'modelo_id' => $this->input->post('modelo_id'),
            'Procesador_id' => $this->input->post('Procesador_id'),
            'sistema_operativo_id' => $this->input->post('sistema_operativo_id'),
            'usuario_id' => $this->input->post('usuario_id'),
            'serial' => $this->input->post('serial'),
            'estado_id' => $this->input->post('estado_id')
            
        );
        $this->db->where('id', $id)->update('computadoras', beforeUpdate($data));
        $this->db->where('computadoras_id', $id)->update('direccion_ip', beforeUpdate(array('computadoras_id' => $id, 'direccion_ip' => $this->input->post('direccion_ip'), 'observaciones' => $this->input->post('observaciones'))));

        return TRUE;
    }
    
    

}

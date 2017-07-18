<?php
defined('BASEPATH') or exit('No direct script access allowed');
/**
 * Modelo que utiliza la libreria MY_Model para
 * la gestión de la tabla tipo menu.
 * Es utilizada para crear los usuarios del sistema
 *
 * @package         GRATIACMS
 * @subpackage      Admin
 * @category        Modelo
 * @author          tutorialesvirtuales.com
 * @author          Roosevelt Guinand
 * @link            http://tutorialesvirtuales.com
 * @version         Current v1.0.0
 * @copyright       Copyright (c) 2010 - 2015 tutorialesvirtuales
 * @license         MIT
 * @since           24/08/2015
 */
class Procesador_model extends MY_Model
{
    /**
     * Nombre de la tabla gestionada por éste modelo
     * @var string
     */
    public $_table = 'Procesador';
    /**
     * Reglas de validación utilizadas
     * por la libreria MY_Model
     * para la inserción y actualización
     * de datos en la tabla.
     * @var array
     */
    public $validate = array(
        array('field' => 'marca_id', 'label' => 'Marca', 'rules' => 'trim|required|max_length[30]'),
        array('field' => 'descripcion', 'label' => 'Descripcion', 'rules' => 'trim|required|max_length[30]|unique[Procesador.descripcion]'),
        array('field' => 'procesadores_logicos', 'label' => 'Procesadores logicos', 'rules' => 'trim|required|max_length[30]'),
        array('field' => 'cores', 'label' => 'Cores', 'rules' => 'trim|required|max_length[30]'),
        array('field' => 'velocidad', 'label' => 'Velocidad', 'rules' => 'trim|required|max_length[30]'),

    );
    public function get_procesador($procesador)
    {

        $this->db->select('*');

        if (null != $procesador) {
            $this->db->where('id', $procesador);
        }

        $query        = $this->db->get('procesador');
        $procesadores = array();

        if ($query->result()) {
            foreach ($query->result() as $p) {
                $procesadores[] = $p;
            }
            return $procesadores;
        } else {
            return false;
        }
    }
}

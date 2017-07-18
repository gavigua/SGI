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
class Modelo_model extends MY_Model
{
    /**
     * Nombre de la tabla gestionada por éste modelo
     * @var string
     */
    public $_table = 'modelo';
    /**
     * Reglas de validación utilizadas
     * por la libreria MY_Model
     * para la inserción y actualización
     * de datos en la tabla.
     * @var array
     */
    public $validate = array(
        array('field' => 'descripcion', 'label' => 'Descripcion', 'rules' => 'trim|required|max_length[30]|unique[modelo.descripcion]'),
        array('field' => 'marca_id', 'label' => 'Marca', 'rules' => 'trim|required|max_length[30]|unique[modelo.marca_id]'),
    );
    public function get_modelo($marca_id)
    {

        $this->db->select('*');

        if (null != $marca_id) {
            $this->db->where('marca_id', $marca_id);
        }

        $query   = $this->db->get('modelo');
        $modelos = array();

        if ($query->result()) {
            foreach ($query->result() as $modelo) {
                $modelos[$modelo->id] = $modelo->descripcion;
            }
            return $modelos;
        } else {
            return false;
        }
    }
}

<?php

defined('BASEPATH') or exit('No direct script access allowed');
/**
 * Modelo que utiliza la libreria MY_Model para
 * la gestión de la tabla permiso.
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
 * @since           06/08/2015
 */
class City_model extends MY_Model
{

/**
 * Nombre de la tabla gestionada por éste modelo
 * @var string
 */
    public $_table = 'cities';

    public $validate = array(
        array('field' => 'id', 'label' => 'ID', 'rules' => 'trim|required|max_length[50]'),
        array('field' => 'city_name', 'label' => 'Ciudad', 'rules' => 'trim|required|max_length[45]'),
        array('field' => 'country_id', 'label' => 'Pais', 'rules' => 'trim|required|max_length[45]'),

    );

    public function get_cities($country)
    {

        $this->db->select('id, city_name');

        if (null != $country) {
            $this->db->where('country_id', $country);
        }

        $query  = $this->db->get('cities');
        $cities = array();

        if ($query->result()) {
            foreach ($query->result() as $city) {
                $cities[$city->id] = $city->city_name;
            }
            return $cities;
        } else {
            return false;
        }

        /*return $this->db
    ->select('Ci.*')
    ->from($this->_table . ' Ci')
    ->where('country_id', $country)
    ->get()
    ->result();*/
    }
}

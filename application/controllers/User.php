<?php
class User extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();

        $this->load->model('country_model');
        $this->load->model('city_model');
    }

    public function index()
    {

        $data = array(
            'titulo'    => 'post_view ',
            'contenido' => 'post_view',
            'countries' => $this->country_model->order_by('id', 'asc')->dropdown('country_name'),

        );
        $this->load->view(THEME . TEMPLATE, $data);
    }

    public function get_cities($country)
    {

        $this->load->model('city_model');
        $result = $this->city_model->get_cities($country);
        $this->output->set_output(json_encode($result));

    }
};

<?php

class Upload extends MY_Controller {

    function __construct() {
        parent::__construct();
        /* cargamos los helper form y url */
        $this->load->helper(array('form', 'url'));
    }

    function index() {
        /* cargamos la vista form_upload y 
          un array de error vacío por si sucede un problema , en este caso como
          inicia el formulario todavía no hay errores es por eso que lo pasamos vacío.
         */
        $this->load->view('form_upload', array('error' => ' '));
    }

    function do_upload() {
        /* las configuraciones de la carpeta y los archivos que va aceptar subir
          -debemos crear la carpeta uploads en el root del proyecto.
          -tipos de archivos permitidos gif jpg png.
          -tamaño maximo 100kb
          -maximo ancho 1024
          -maximo alto 768
         */
        $config['upload_path'] = AVATAR_IMG;
        $config['allowed_types'] = 'gif|jpg|png';
        $config['max_size'] = '100';
        $config['max_width'] = '1024';
        $config['max_height'] = '768';

        /* cargamos la libreria de codeigniter upload
          esta nos ayudara  a gestionar de manera sencilla la subida
          del archivo.
         */
        $this->load->library('upload', $config);

        /* verifica si existe error */

        if (!$this->upload->do_upload()) {
            /* error en la subida del archivo */

            /* obtenemos el error en un array */
            $data = array('error' => $this->upload->display_errors(),
                'titulo' => 'Actualizar ' ,
                'contenido' => $this->vista . 'crear',);

            /* cargamos la vista inicial pero ya con el array de errores lleno */
            mensaje_alerta('error', 'avatar');
            $this->load->view(THEME . TEMPLATE, $data);
        } else {
            /* éxito en la subida del archivo */


            $data = array('upload_data' => $this->upload->data());
            /* obtenemos los datos del upload del archivo en un array, lo 
              pasamos a la vista form_success */
            $this->load->view('form_success', $data);
        }
    }

}

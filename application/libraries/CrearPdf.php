<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Crearpdf {

  /**
   * Contiene la Instancia CI
   * @var Instance
   */
  protected $CI;
  /**
   * Esta funcion permite hacer referencia a cualquier recurso CodeIgniter
   * cargado o cargar otras nuevas sin inicializar las clases cada vez.
   *      * @return void
   */
  public function __construct()
  {
      $this->CI = &get_instance(); // Permite acceder a los recursos nativos de codeigniter.

  }

  public function crear_pdf($html, $for_upload=false, $new_file=null)
  {
    include APPPATH . "third_party/dompdf/autoload.inc.php";
    $dompdf= new Dompdf\Dompdf();
    $dompdf->load_html($html);
    $dompdf->setPaper('A4','landscape');
    $dompdf->render();

    if($for_upload){
      file_put_contents($dompdf->stream($new_file.".pdf"));
    }

  }

}

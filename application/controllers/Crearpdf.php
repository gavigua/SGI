<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Crearpdf extends CI_Controller {

  public function __construct()
    {
        parent::__construct();

    }

    public function crear_pdf($htmlcontent, $for_upload=false, $new_file=null)
    {
      include APPPATH . "third_party/dompdf/autoload.inc.php";
      $dompdf= new Dompdf\Dompdf();
      $dompdf->load_html($htmlcontent);
      $dompdf->setPaper('A4','landscape');
      $dompdf->render();

      if($for_upload){
        file_put_contents($dompdf->stream($new_file.".pdf"));
      }
    }

}

<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="pagina principal de tutorialesvirtuales.com">
        <meta name="author" content="tutoriales virtuales">

        <title><?php echo $titulo ?></title>
        <!-- Bootstrap Core CSS -->
        <link rel="stylesheet" type="text/css" href="<?php echo base_url() . TEMPLATEASSETS ?>vendor/bootstrap/css/bootstrap.min.css" >
        <!-- MetisMenu CSS -->
        <link rel="stylesheet" type="text/css" href="<?php echo base_url() . TEMPLATEASSETS ?>vendor/metisMenu/metisMenu.min.css" >
        <!-- DataTables CSS -->
        <link rel="stylesheet" type="text/css" href="<?php echo base_url() . TEMPLATEASSETS ?>vendor/datatables-plugins/dataTables.bootstrap.css" >
        <!-- DataTables Responsive CSS -->
        <link rel="stylesheet" type="text/css" href="<?php echo base_url() . TEMPLATEASSETS ?>vendor/datatables-responsive/dataTables.responsive.css" >
        <!-- Custom CSS -->
        <link rel="stylesheet" type="text/css" href="<?php echo base_url() . TEMPLATEASSETS ?>dist/css/sb-admin-2.css" >
        <!-- Custom Fonts -->
        <link rel="stylesheet" type="text/css" href="<?php echo base_url() . TEMPLATEASSETS ?>vendor/font-awesome/css/font-awesome.min.css" >
        <!-- Menu Nestable -->
        <link rel="stylesheet" type="text/css" href="<?php echo base_url() . TEMPLATEASSETSSGI ?>dist/js/jquery-nestable/jquery.nestable.css">
        <!-- Custom GratiaCms Styles -->
        <link rel="stylesheet" type="text/css" href="<?php echo base_url() . TEMPLATEASSETSSGI ?>dist/css/styles.css">
        <!-- jQuery -->
        <script type="text/javascript" src="<?php echo base_url() . TEMPLATEASSETS ?>vendor/jquery/jquery.min.js"></script>
    </head>
    <body>
        <div id="wrapper">
            <?php $this->load->view(THEME . 'navbar'); //Se Llama la barra de menu ?>
            <div id="page-wrapper">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header"><?php echo $titulo ?></h1>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <?php $this->load->view($contenido); // Se carga la vista con el contenido a mostrar ?>
            </div>
        </div>
        <!-- Bootstrap Core JavaScript -->
        <script type="text/javascript" src="<?php echo base_url() . TEMPLATEASSETS ?>vendor/bootstrap/js/bootstrap.min.js"></script>
        <!-- Metis Menu Plugin JavaScript -->
        <script type="text/javascript" src="<?php echo base_url() . TEMPLATEASSETS ?>vendor/metisMenu/metisMenu.min.js"></script>
        <!-- DataTables JavaScript -->
        <script type="text/javascript" src="<?php echo base_url() . TEMPLATEASSETS ?>vendor/datatables/js/jquery.dataTables.min.js"></script>
        <script type="text/javascript" src="<?php echo base_url() . TEMPLATEASSETS ?>vendor/datatables-plugins/dataTables.bootstrap.min.js"></script>
        
       
        <!--Validacion de Formualarios-->
        <script type="text/javascript" src="<?php echo base_url() . TEMPLATEASSETSSGI ?>dist/js/jquery-validate/jquery.validate.min.js"></script>
        <script type="text/javascript" src="<?php echo base_url() . TEMPLATEASSETSSGI?>dist/js/jquery-validate/localization/messages_es.min.js"></script>
        <!--Block en Ajax-->
        <script type="text/javascript" src="<?php echo base_url() . TEMPLATEASSETSSGI ?>dist/js/jquery-blockUI/jquery.blockUI.js"></script>
        <!--Alertas-->
        <script type="text/javascript" src="<?php echo base_url() . TEMPLATEASSETSSGI ?>dist/js/bootbox.min.js"></script>
        <!--Menu Nestable-->
        <script type="text/javascript" src="<?php echo base_url() . TEMPLATEASSETSSGI ?>dist/js/jquery-nestable/jquery.nestable.js"></script>
        <!-- Custom Theme JavaScript -->
        <script type="text/javascript" src="<?php echo base_url() . TEMPLATEASSETS ?>dist/js/sb-admin-2.js"></script>
        <!-- Custom GratiaCms JavaScript -->
        <script type="text/javascript" src="<?php echo base_url() . TEMPLATEASSETSSGI ?>dist/js/gratiacms.js"></script>
        <script>
            $(document).ready(function () {
                GratiaCms.tooltip();
                GratiaCms.eliminar();
            });
            /*
             * Evitar enter en los forms
             */
            $(document).on("keydown", function (e) {
                if (e.which === 8 && !$(e.target).is("input, textarea")) {
                    e.preventDefault();
                }
            });
        </script>
    </body>

</html>
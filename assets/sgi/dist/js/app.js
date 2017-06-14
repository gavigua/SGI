   /*
   *
   * funcion para ordenar tablas como lista
    */
    $(document).ready(function () {
        'use strict';
          $("#lista").DataTable();
     
    });



         


    $(document).ready(function () {
        GratiaCms.validacion_general('#form-principal');
        $('#icono').on('blur', function () {
            $('.icono').addClass($(this).val());
        });
    });


    $(document).ready(function () {
        GratiaCms.validacion_general('#form-principal');
    });





    /*
    *
    * footer
     */
    
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


 


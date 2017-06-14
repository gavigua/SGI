
 <!-- Abriendo un formulario con el helper de CodeIgniter, es lo mismo que una 
 etiqueta form, necesariamente se debe agregar el enctype="multipart/form-data" -->
 <!-- <form action="http://localhost/ci_upload/index.php/upload/do_upload" 
    method="post" accept-charset="utf-8" enctype="multipart/form-data"> -->
 <?php echo form_open_multipart('upload/do_upload');?>

  <!-- etiqueta de entrada de archivo -->
  <input type="file" name="userfile" size="20" />

  <br /><br />

  <input type="submit" value="upload" />

 <?php  echo form_close(); ?>
 <!-- Se cierra el formulario, estamos usando el helper de CodeIgniter. -->
 <!--</form>-->
 <!-- -->

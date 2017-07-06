<!-- Content Header (Page header) -->
<section class="content-header">
    <h1>
        <?php echo isset($data->id) ? "Actualizar" : "Crear" ?> Registro
        <small></small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Solicitudes</a></li>
        <li class="active"><?php echo isset($data->id) ? "Actualizar" : "Crear" ?> Registro</li>
    </ol>
</section>
<!-- Main content -->
<section class="content">
    <?php echo validation_errors() ?>
    <div class="row">
        <div class="col-lg-12">
            <div class="box">
                <div class="panel panel-green">
                    <div class="panel-heading">
                        <span>Datos de Solicitud</span>
                        <div class="pull-right">
                            <a href="<?php echo $this->url ?>" class="btn btn-success btn-sm tooltips" >Volver al listado <i class="fa fa-hand-o-left"></i></a>
                        </div>
                    </div>
                    <div class="panel-body">
                        <?php echo form_open('', 'id="form-principal"'); ?>
                        <div class="row">
                            <div class="col-lg-4">
                                <div class="form-group">
                                    <label for="hostname">Tipo de Solicitud</label>
                                    <?php echo form_dropdown('tsolicitud_id', $this->Tsolicitud_model->order_by('id', 'asc')->dropdown('nombre'), set_value('tsolicitud_id', isset($data->tsolicitud_id) ? $data->tsolicitud_id : ''), 'id="tsolicitud_id" class="form-control" required') ?>
                                </div>
                            </div>
                           <div class="col-lg-4">
                                <div class="form-group">
                                    <label class="control-label">Estado de solicitud <span class="required">*</span></label>
                                    <?php echo form_dropdown('Esolicitud_id', $this->Esolicitud_model->order_by('id', 'asc')->dropdown('estado'), set_value('Esolicitud_id', isset($data->Esolicitud_id) ? $data->Esolicitud_id : ''), 'id="Esolicitud_id" class="form-control" required') ?>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="form-group">
                                    <label class="control-label">Usuario <span class="required">*</span></label>
                                   <input type=text" name="usuario_id" class="form-control" id="usuario_id" value="<?php echo $this->session->userdata('nombre') . ' ' . $this->session->userdata('apellido') ?>" required disabled/>

                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <label class="control-label">Descripcion <span class="required">*</span></label>
                                    <textarea" name="descripcion" class="form-control" id="descripcion" value="<?php echo set_value('descripcion', isset($data->descripcion) ? $data->descripcion : '') ?>" required rows="4" cols="50"/>
                                </div>
                            </div>
                        <div class="col-lg-offset-1 col-lg-11">
                            <input type="hidden" id="id" name="id" value="<?php echo isset($data->id) ? $data->id : '' ?>" />
                            <button type="submit" class="btn btn-info"><?php echo isset($data->id) ? "Actualizar" : "Crear" ?></button>
                        </div>
                        <?php echo form_close() ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<script>
  $(function () {
    // Replace the <textarea id="editor1"> with a CKEditor
    // instance, using default configuration.
    CKEDITOR.replace('descripcion');
    //bootstrap WYSIHTML5 - text editor
    $(".textarea").wysihtml5();
  });
</script>

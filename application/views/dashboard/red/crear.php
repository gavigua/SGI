<!-- Content Header (Page header) -->
<section class="content-header">
    <h1>
        <?php echo isset($data->id) ? "Actualizar" : "Crear" ?> Registro
        <small></small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Red</a></li>
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
                        <span>Datos del Red</span>
                        <div class="pull-right">
                            <a href="<?php echo $this->url ?>" class="btn btn-success btn-sm tooltips" >Volver al listado <i class="fa fa-hand-o-left"></i></a>
                        </div>
                    </div>
                    <div class="panel-body">
                        <?php echo form_open('', 'id="form-principal"'); ?>
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label for="hostname">Nombre del Red</label>
                                    <input type="text" name="hostname" class="form-control" id="hostname" value="<?php echo set_value('hostname', isset($data->hostname) ? $data->hostname : '') ?>" required/>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label for="descripcion">Descripcion</label>
                                    <input type="text" name="descripcion" class="form-control" id="descripcion" value="<?php echo set_value('descripcion', isset($data->descripcion) ? $data->descripcion : '') ?>" required/>
                                </div>
                            </div>
                            <div class="col-lg-2">
                                <div class="form-group">
                                    <label class="control-label">Tipo de Periferico <span class="required">*</span></label>
                                    <?php echo form_dropdown('tred_id', $this->Tred_model->order_by('id', 'asc')->dropdown('descripcion'), set_value('tred_id', isset($data->tred_id) ? $data->tred_id : ''), 'id="tred_id" class="form-control" required') ?>
                                </div>
                            </div>
                            <div class="col-lg-2">
                                <div class="form-group">
                                    <label class="control-label">Marca de Periferico <span class="required">*</span></label>
                                    <?php echo form_dropdown('marca_id_marca', $this->Marca_model->order_by('id', 'asc')->dropdown('descripcion'), set_value('marca_id_marca', isset($data->marca_id_marca) ? $data->marca_id_marca : ''), 'id="marca_id" class="form-control" required') ?>
                                </div>
                            </div>
                            <div class="col-lg-2">
                                <div class="form-group">
                                    <label class="control-label">Modelo de Periferico <span class="required">*</span></label>
                                    <?php
                                    echo form_dropdown('modelo_id', $this->Modelo_model->order_by('id', 'asc')->dropdown('descripcion'), set_value('modelo_id', isset($data->modelo_id) ? $data->modelo_id : ''), 'id="modelo_id" class="form-control" required');
                                    ?>

                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="form-group">
                                    <label class="control-label">Usuario Asignado<span class="required">*</span></label>
                                    <?php echo form_dropdown('usuario_id', $this->Usuario_model->order_by('id', 'asc')->dropdown('usuario'), set_value('usuario_id', isset($data->usuario_id) ? $data->usuario_id : ''), 'id="usuario_id" class="form-control" required') ?>
                                </div>
                            </div>


                            <div class="col-lg-4">
                                <div class="form-group">
                                    <label class="control-label">Serial <span class="required">*</span></label>
                                    <input type="text" name="serial" class="form-control" id="serial" value="<?php echo set_value('serial', isset($data->serial) ? $data->serial : '') ?>" required/>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="form-group">
                                    <label class="control-label">Estado <span class="required">*</span></label>
                                    <?php echo form_dropdown('estado_id', $this->Estado_model->order_by('id', 'asc')->dropdown('descripcion'), set_value('estado_id', isset($data->estado_id) ? $data->estado_id : 1), 'id="estado_id" class="form-control" required') ?>
                                </div>
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

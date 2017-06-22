<!-- Content Header (Page header) -->
<section class="content-header">
    <h1>
        <?php echo isset($data->id) ? "Actualizar" : "Crear" ?> Registro
        <small></small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Dispositivo</a></li>
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
                        <span>Datos del Dispositivo</span>
                        <div class="pull-right">
                            <a href="<?php echo $this->url ?>" class="btn btn-success btn-sm tooltips" >Volver al listado <i class="fa fa-hand-o-left"></i></a>
                        </div>
                    </div>
                    <div class="panel-body">
                        <?php echo form_open('', 'id="form-principal"'); ?>
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label for="avatar">Nombre del Dispositivo</label>
                                    <input type="text" name="nombre" class="form-control" id="nombre" value="<?php echo set_value('nombre', isset($data->nombre) ? $data->nombre : '') ?>" required/>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label class="control-label">Tipo de Dispositivo <span class="required">*</span></label>
                                    <?php echo form_dropdown('id', $this->TipoDispositivo_model->order_by('id', 'asc')->dropdown('descripcion'), set_value('rol_id', isset($data->rol_id) ? $data->rol_id : ''), 'id="rol_id" class="form-control" required') ?>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label class="control-label">Descripcion <span class="required">*</span></label>
                                    <input type=text" name="descripcion" class="form-control" id="descripcion" value="<?php echo set_value('descripcion', isset($data->descripcion) ? $data->descripcion : '') ?>" required/>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label class="control-label">Nombre <span class="required">*</span></label>
                                    <input type=text" name="nombre" class="form-control" id="nombre" value="<?php echo set_value('nombre', isset($data->nombre) ? $data->nombre : '') ?>" required/>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label class="control-label">Apellido <span class="required">*</span></label>
                                    <input type=text" name="apellido" class="form-control" id="apellido" value="<?php echo set_value('apellido', isset($data->apellido) ? $data->apellido : '') ?>" required/>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label class="control-label">Email <span class="required">*</span></label>
                                    <input type="email" name="email" class="form-control" id="email" value="<?php echo set_value('email', isset($data->email) ? $data->email : '') ?>" required/>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label class="control-label">Contraseña <?php echo!isset($data->id) ? '<span class="required">*</span>' : '' ?></label>
                                    <input type="password" name="password" class="form-control" id="password" value="" required minlength="5" maxlength="20"/>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label class="control-label">Repita Contraseña <?php echo!isset($data->id) ? '<span class="required">*</span>' : '' ?></label>
                                    <input type="password" name="re_password" class="form-control" id="re-password" value="" required minlength="5"  maxlength="20"/>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label class="control-label">Estado <span class="required">*</span></label>
                                    <?php echo form_dropdown('estado', $this->config->item('estado'), set_value('estado', isset($data->estado) ? $data->estado : 1), 'id="estado" class="form-control" required') ?>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label class="control-label">Rol <span class="required">*</span></label>
                                    <?php echo form_dropdown('rol_id', $this->Rol_model->order_by('id', 'asc')->dropdown('descripcion'), set_value('rol_id', isset($data->rol_id) ? $data->rol_id : ''), 'id="rol_id" class="form-control" required') ?>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label class="control-label">Departamento <span class="required">*</span></label>
                                    <?php echo form_dropdown('departamento_id', $this->Departamento_model->order_by('id', 'asc')->dropdown('descripcion'), set_value('departamento_id', isset($data->departamento_id) ? $data->departamento_id : ''), 'id="departamento_id" class="form-control" required') ?>
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

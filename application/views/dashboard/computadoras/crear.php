<script type="text/javascript">// <![CDATA[
    $(document).ready(function () {
        $('#marca_id').change(function () { //any select change on the dropdown with id country trigger this code
            $("#modelo_id > option").remove(); //first of all clear select items
            var marca_id = $('#marca_id').val();  // here we are taking country id of the selected one.
            var csfrData = {};
            csfrData['<?php echo $this->security->get_csrf_token_name(); ?>']
                    = '<?php echo $this->security->get_csrf_hash(); ?>';
            $.ajax({
                type: "POST",
                url: "<?php echo site_url('dashboard/computadoras/get_modelo/'); ?>" + marca_id, //here we are calling our user controller and get_cities method with the country_id
                dataType: 'json',
                data: csfrData,
                success: function (modelo) //we're calling the response json array 'cities'
                {
                    $.each(modelo, function (id, descripcion) //here we're doing a foeach loop round each city with id as the key and city as the value
                    {
                        var opt = $('<option />'); // here we're creating a new select option with for each city
                        opt.val(id);
                        opt.text(descripcion);
                        $('#modelo_id').append(opt); //here we will append these new select options to a dropdown with the id 'cities'
                    });
                }

            });

        });
    });
</script>
<script type="text/javascript">// <![CDATA[
    $(document).ready(function () {
        $('#Procesador_id').change(function () { //any select change on the dropdown with id country trigger this code
            $("#plogicos > option").remove();
            var Procesador_id = $('#Procesador_id').val();  // here we are taking country id of the selected one.
            var csfrData = {};
            csfrData['<?php echo $this->security->get_csrf_token_name(); ?>']
                    = '<?php echo $this->security->get_csrf_hash(); ?>';

            $.ajax({
                type: "POST",
                url: "<?php echo site_url('dashboard/computadoras/get_procesador/'); ?>" + Procesador_id, //here we are calling our user controller and get_cities method with the country_id
                dataType: 'json',
                data: csfrData,
                success: function (procesador) //we're calling the response json array 'procesador'
                {
                    $.each(procesador, function (id, procesador)
                    {
                        $('#pLogicos').val(procesador.procesadores_logicos)
                        $('#pCores').val(procesador.cores)
                        $('#pVelocidad').val(procesador.velocidad)
                    });
                }

            });

        });
    });
</script>

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
                                    <label for="hostname">Nombre del Dispositivo</label>
                                    <input type="text" name="hostname" class="form-control" id="hostname" value="<?php echo set_value('hostname', isset($data->hostname) ? $data->hostname : '') ?>" required/>
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
                                    <label class="control-label">Capacidad de Disco <span class="required">*</span></label>
                                    <input type=text" name="capacidad_disco" class="form-control" id="capacidad_disco" value="<?php echo set_value('capacidad_disco', isset($data->capacidad_disco) ? $data->capacidad_disco : '') ?>" required/>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label class="control-label">Memoria RAM <span class="required">*</span></label>
                                    <input type=text" name="memoria_ram" class="form-control" id="memoria_ram" value="<?php echo set_value('memoria_ram', isset($data->memoria_ram) ? $data->memoria_ram : '') ?>" required/>
                                </div>
                            </div>
                            <div class="col-lg-2">
                                <div class="form-group">
                                    <label class="control-label">Tipo de Dispositivo <span class="required">*</span></label>
<?php echo form_dropdown('tcomputadora_id', $this->Tcomputadora_model->order_by('id', 'asc')->dropdown('descripcion'), set_value('tcomputadora_id', isset($data->tcomputadora_id) ? $data->tcomputadora_id : ''), 'id="tcomputadora_id" class="form-control" required') ?>
                                </div>
                            </div>
                            <div class="col-lg-2">
                                <div class="form-group">
                                    <label class="control-label">Marca de Dispositivo <span class="required">*</span></label>
<?php echo form_dropdown('marca_id', $this->Marca_model->order_by('id', 'asc')->dropdown('descripcion'), set_value('marca_id', isset($data->marca_id) ? $data->marca_id : ''), 'id="marca_id" class="form-control" required') ?>
                                </div>
                            </div>
                            <div class="col-lg-2">
                                <div class="form-group">
                                    <label class="control-label">Modelo de Dispositivo<span class="required">*</span></label>
<?php
$modelo['#'] = 'Seleccione';
echo form_dropdown('modelo_id', $modelo, set_value('modelo_id', isset($data->modelo_id) ? $data->modelo_id : ''), 'id="modelo_id" class="form-control" required');
?>
                                </div>
                            </div>
                            <div class="col-lg-2">
                                <div class="form-group">
                                    <label class="control-label">Procesador <span class="required">*</span></label>
<?php echo form_dropdown('Procesador_id', $this->Procesador_model->order_by('id', 'asc')->dropdown('descripcion'), set_value('Procesador_id', isset($data->Procesador_id) ? $data->Procesador_id : ''), 'id="Procesador_id" class="form-control" required') ?>
                                </div>
                            </div>
                            <div class="col-lg-1">
                                <div class="form-group">
                                    <label class="control-label">Logigos<span class="required">*</span></label>
                                    <input type=text" name="pLogicos" class="form-control" id="pLogicos" value="<?php echo set_value('pLogicos', isset($data->pLogicos) ? $data->pLogicos : '') ?>" required disabled/>
                                </div>
                            </div>
                            <div class="col-lg-1">
                                <div class="form-group">
                                    <label class="control-label"> Cores<span class="required">*</span></label>
                                    <input type=text" name="pCores" class="form-control" id="pCores" value="<?php echo set_value('pCores', isset($data->pCores) ? $data->pCores : '') ?>" required disabled/>
                                </div>
                            </div>
                            <div class="col-lg-2">
                                <div class="form-group">
                                    <label class="control-label">Velocidad<span class="required">*</span></label>
                                    <input type=text" name="pVelocidad" class="form-control" id="pVelocidad" value="<?php echo set_value('pVelocidad', isset($data->pVelocidad) ? $data->pVelocidad : '') ?>" required disabled/>
                                </div>
                            </div>

                            <div class="col-lg-4">
                                <div class="form-group">
                                    <label class="control-label">Sistema Operativo<span class="required">*</span></label>
<?php echo form_dropdown('sistema_operativo_id', $this->Sistema_operativo_model->order_by('id', 'asc')->dropdown('descripcion'), set_value('sistema_operativo_id', isset($data->sistema_operativo_id) ? $data->sistema_operativo_id : ''), 'id="sistema_operativo_id" class="form-control" required') ?>
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


                        <div class="row">
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label class="control-label">Direccion IP <span class="required">*</span></label>
                                    <input type="text" name="direccion_ip" class="form-control" id="direccion_ip" value="<?php echo set_value('direccion_ip', isset($data->direccion_ip) ? $data->direccion_ip : '') ?>" required/>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label class="control-label">Observaciones<span class="required">*</span></label>
                                    <input type="text" name="observaciones" class="form-control" id="observaciones" value="<?php echo set_value('observaciones', isset($data->observaciones) ? $data->observaciones : '') ?>" required/>
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

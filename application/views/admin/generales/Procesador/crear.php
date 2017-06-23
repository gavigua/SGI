<?php echo validation_errors() ?>
<div class="row">
    <div class="col-lg-12">
        <div class="panel panel-green">
            <div class="panel-heading">
                <span>Datos Procesadores</span>
                <div class="pull-right">
                    <a href="<?php echo $this->url ?>" style="color:#FFF">
                        Volver al listado <i class="fa fa-hand-o-left"></i></a>
                </div>
            </div>
            <div class="panel-body">
                <?php echo form_open('', 'id="form-principal"'); ?>
                <div class="row">
                    <div class="col-lg-6">
                        <div class="form-group">
                            <label class="control-label">Marca <span class="required">*</span></label>
                            <?php echo form_dropdown('marca_id', $this->Marca_model->order_by('id', 'asc')->dropdown('descripcion'), set_value('marca_id', isset($data->marca_id) ? $data->marca_id : ''), 'id="marca_id" class="form-control" required') ?>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="form-group">
                            <label class="control-label">Descripcion <span class="required">*</span></label>
                            <input type=text" name="descripcion" class="form-control" id="descripcion" value="<?php echo set_value('descripcion', isset($data->descripcion) ? $data->descripcion : '') ?>" descripcion/>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="form-group">
                            <label class="control-label">Procesadores Logicos <span class="required">*</span></label>
                            <input type=text" name="procesadores_logicos" class="form-control" id="procesadores_logicos" value="<?php echo set_value('procesadores_logicos', isset($data->procesadores_logicos) ? $data->procesadores_logicos : '') ?>" procesadores_logicos/>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="form-group">
                            <label class="control-label">Cores <span class="required">*</span></label>
                            <input type=text" name="cores" class="form-control" id="cores" value="<?php echo set_value('cores', isset($data->cores) ? $data->cores : '') ?>" cores/>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="form-group">
                            <label class="control-label">Velocidad <span class="required">*</span></label>
                            <?php
                            $options = array(
                                '1.6 GHz' => '1.6 GHz',
                                '1.8 GHz' =>'1.8 GHz', 
                                '2.0 GHz' =>'2.0 GHz',
                                '2.2 GHz' =>'2.2 GHz',
                                '2.6 GHz' =>'2.6 GHz',
                                '2.8 GHz' => '2.8 GHz',
                                '3.0 GHz' =>'3.0 GHz', 
                            );

                            $shirts_on_sale = array('id', 'velocidad');
                            ?> 
                            <?php echo form_dropdown('velocidad', $options, set_value('velocidad', isset($data->velocidad) ? $data->velocidad : ''), 'id="velocidad" class="form-control" required') ?>
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

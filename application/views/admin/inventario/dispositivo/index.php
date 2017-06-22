

<!-- Content Header (Page header) -->
<section class="content-header">
    <h1>
        Lista de Dispositivo
        <small></small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Dispositivo</a></li>
        <li class="active">Registro</li>
    </ol>
</section>

<!-- Main content -->
<section class="content">
    <div class="row">
        <div class="col-xs-12">


            <div class="box">
                <div class="box-header">
                    <h3 class="box-title">Lista de Dispositivo</h3>
                </div>
                <span>
                    <a href="<?php echo $this->url ?>crear" class="btn btn-success btn-sm tooltips" data-original-title="Nuevo registro">
                        Nuevo registro <i class="fa fa-plus-circle"></i></a>
                </span>

                <!-- /.box-header -->
                <div class="box-body">
                    <table id="lista" class="table table-bordered table-striped">
                        <thead>
                            <tr>
                                <th>Nombre</th>
                                <th>IP</th>
                                <th>Marca</th>
                                <th>Modelo</th>
                                <th>Procesador</th>
                                <th>Tipo Procesador</th>
                                <th>Ghz Procesador</th>
                                <th>Ghz Procesador</th>
                                <th>Estado</th>
                                <th>Acciones</th>

                            </tr>
                        </thead>
                        <tbody>
                            <?php /*$datas = $this->Modelo->getAll() */?>
                            <?php /*foreach ($datas as $data):*/ ?>
                                <tr>
                                    <td><?php /* echo $data->nombre */?></td>
                                    <td><?php /*echo $data->apellido */?></td>
                                    <td><?php /*echo $data->email */?></td>
                                    <td><?php /*echo $data->descripcion */?></td>
                                    <td><?php /*echo $data->apellido */?></td>
                                    <td><?php /*echo $data->apellido */?></td>
                                    <td><?php /*echo $data->email */?></td>
                                    <td><?php /*echo $data->descripcion */?></td>
                                    <td><?php /*echo $data->estado ? ('<a href="' . $this->url . 'cambiar-estado/' . $data->id . '/0" class="tooltips" data-original-title="Desactivar este usuario"><span class="label label-sm label-success"> Activo </span></a>') : ('<a href="' . $this->url . 'cambiar-estado/' . $data->id . '/1" class="tooltips" data-original-title="Activar este usuario"><span class="label label-sm label-danger"> Inactivo </span></a>')*/ ?></td>
                                    <td>
                                        <a href="<?php echo $this->url . 'actualizar/' /*. $data->id */?>" class="btn btn-warning btn-sm tooltips" data-original-title="Editar este registro">
                                            <i class="fa fa-edit"></i></a>
                                        <a href="<?php echo $this->url . 'eliminar/' /*. $data->id */?>" class="btn btn-danger btn-sm tooltips" data-original-title="Eliminar este registro">
                                            <i class="fa fa-remove"></i></a>
                                    </td>

                                </tr>
                            <?php /* endforeach; */?>
                        </tbody>
                        <tfoot>
                            <tr>
                                <th>Nombre</th>
                                <th>IP</th>
                                <th>Marca</th>
                                <th>Modelo</th>
                                <th>Procesador</th>
                                <th>Tipo Procesador</th>
                                <th>Ghz Procesador</th>
                                <th>Ghz Procesador</th>
                                <th>Estado</th>
                                <th>Acciones</th>
                            </tr>
                        </tfoot>
                    </table>
                </div>
                <!-- /.box-body -->
            </div>
            <!-- /.box -->
        </div>
        <!-- /.col -->
    </div>
    <!-- /.row -->
</section>
<!-- /.content -->


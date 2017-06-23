

<!-- Content Header (Page header) -->
<section class="content-header">
    <h1>
        Lista de Periferico
        <small></small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Periferico</a></li>
        <li class="active">Registro</li>
    </ol>
</section>

<!-- Main content -->
<section class="content">
    <div class="row">
        <div class="col-xs-12">


            <div class="box">
                <div class="box-header">
                    <h3 class="box-title">Lista de Periferico</h3>
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
                                <th>Propietario</th>
                                <th>Nombre</th>
                                <th>Tipo</th>
                                <th>Marca</th>
                                <th>Modelo</th>
                                <th>Serial</th>
                                <th>Acciones</th>

                            </tr>
                        </thead>
                        <tbody>
                            <?php $datas = $this->Modelo->getAll() ?>

                            <?php foreach ($datas as $data): ?>
                                <tr>
                                    <td><?php echo $data->USNombre . " " . $data->apellido ?></td>
                                    <td><?php echo $data->nombre ?></td>
                                    <td><?php echo $data->TPdescripcion ?></td>
                                    <td><?php echo $data->MAdescripcion ?></td>
                                    <td><?php echo $data->MOdescripcion ?></td>
                                    <td><?php echo $data->serial ?></td>
                                    
                                    <td>
                                        <a href="<?php echo $this->url . 'actualizar/' . $data->id ?>" class="btn btn-warning btn-sm tooltips" data-original-title="Editar este registro">
                                            <i class="fa fa-edit"></i></a>
                                        <a href="<?php echo $this->url . 'eliminar/' . $data->id ?>" class="btn btn-danger btn-sm tooltips" data-original-title="Eliminar este registro">
                                            <i class="fa fa-remove"></i></a>
                                    </td>

                                </tr>
                            <?php endforeach; ?>

                        </tbody>
                        <tfoot>
                            <tr>
                                <th>Propietario</th>
                                <th>Nombre</th>
                                <th>Tipo</th>
                                <th>Marca</th>
                                <th>Modelo</th>
                                <th>Serial</th>
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


<?php defined('BASEPATH') OR exit('No direct script access allowed');?>
<!-- Content Header (Page header) -->
<section class="content-header">
    <h1>
        Dashboard
        <small>Pagina Principal</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Inicio</a></li>
        <li><a href="#">Dashboard</a></li>
    </ol>
</section>

<?php if ($this->session->userdata('rol_id') != '1') :  ?>
<div class="col-lg-6 col-xs-6">
    <!-- small box -->
    <div class="small-box bg-aqua">
        <div class="inner">
           <?php $Num = $this->Solicitudes_model->getCountRequerimiento($this->session->userdata('usuario_id')); ?>
            <h3><?php echo $Num ?> </h3>

            <p>Requerimientoso</p>
        </div>
        <div class="icon">
            <i class="ion ion-bag"></i>
        </div>

    </div>
</div>
<!-- ./col -->

<div class="col-lg-6 col-xs-6">
    <!-- small box -->
    <div class="small-box bg-red">
        <div class="inner">
              <?php $Num = $this->Solicitudes_model->getCountIncidentes($this->session->userdata('usuario_id')); ?>
            <h3><?php echo $Num ?> </h3>

            <p>Incidentes</p>
        </div>
        <div class="icon">
            <i class="ion ion-pie-graph"></i>
        </div>

    </div>
</div>
<?php else :?>
<div class="col-lg-4 col-xs-6">
    <!-- small box -->
    <div class="small-box bg-aqua">
        <div class="inner">
            <?php $Num = $this->Computadoras_model->getDisponibles(); ?>
            <h3><?php echo $Num ?> </h3>

            <p>Equipos en Estado Disponibles</p>
        </div>
        <div class="icon">
            <i class="ion ion-bag"></i>
        </div>

    </div>
</div>
<!-- ./col -->

<!-- ./col -->
<div class="col-lg-4 col-xs-6">
    <!-- small box -->
    <div class="small-box bg-yellow">
        <div class="inner">
            <?php $Num = $this->Solicitudes_model->getAllRequerimiento(); ?>
            <h3><?php echo $Num ?> </h3>

            <p>Requerimientos</p>
        </div>
        <div class="icon">
            <i class="ion ion-person-add"></i>
        </div>

    </div>
</div>
<!-- ./col -->
<div class="col-lg-4 col-xs-6">
    <!-- small box -->
    <div class="small-box bg-red">
        <div class="inner">
                  <?php $Num = $this->Solicitudes_model->getAllIncidente(); ?>
            <h3><?php echo $Num ?> </h3>
         

            <p>Incidentes</p>
        </div>
        <div class="icon">
            <i class="ion ion-pie-graph"></i>
        </div>

    </div>
</div>
<?php endif; ?>
<!-- ./col -->
</div>
<!-- /.row -->
<div class="box box-info">
            <div class="box-header with-border">
              <h3 class="box-title">Solicitudes</h3>

              <div class="box-tools pull-right">

              </div>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <div class="table-responsive">
                <table class="table no-margin">
                  <thead>
                  <tr>
                    <th>Id Solicitud</th>
                    <th>Descripción</th>
                    <th>Estado</th>
                  </tr>
                  </thead>
                  <tbody>
                  <?php
if ($this->session->userdata('rol_id') == '1') {
	$datas = $this->Solicitudes_model->getAll();
} else {
	$datas = $this->Solicitudes_model->getSolicitudID($this->session->userdata('usuario_id'));

}?>
			  <?php foreach ($datas as $data): ?>
                  <tr>
                  <td><?php echo $data->id ?></td>
                  <td><?php echo $data->descripcion ?></td>
                  <td>
                                    <a href="#" class="label label-info btn-sm tooltips" data-original-title="Estado Actual"><?php echo $data->ESDescripcion ?></a>
									</td>
                  </tr>
                <?php endforeach;?>

                  </tbody>
                </table>
              </div>
              <!-- /.table-responsive -->
            </div>
            <!-- /.box-body -->
            <div class="box-footer clearfix">

            </div>
            <!-- /.box-footer -->
          </div>

    </section>
    <!-- right col -->

</body>
</html>

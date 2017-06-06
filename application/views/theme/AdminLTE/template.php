<?php $this->load->view(THEME . 'layouts/_header'); ?>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Dashboard
            <small>Panel de Control</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Inicio</a></li>
            <li class="active">Dashboard</li>
        </ol>
    </section>

    <!-- Main content -->
    <section class="content">
        <!-- Small boxes (Stat box) -->
       <!-- Main row -->
        <div class="row">

         <?php $this->load->view($contenido)  ;?>  
          
        </div>
        <!-- /.row (main row) -->

    </section>
    <!-- /.content -->
</div>
<?php $this->load->view(THEME . 'layouts/_footer'); ?>
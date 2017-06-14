<?php $this->load->view(THEME . 'layouts/_header'); ?>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    

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
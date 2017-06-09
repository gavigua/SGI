 <!-- /.content-wrapper -->
  <footer class="main-footer">
    <div class="pull-right hidden-xs">
      <b>Version</b> <?= $this->config->item('version') ;?>
    </div>
    <strong>Copyright <?php echo date('Y');?>  &copy; <a href="<?php echo base_url();?>"><?= $this->config->item('project_developer'); ?></a>.</strong> All rights
    <?= $this->config->item('project_name') ?>
    reserved.
  </footer>

  <div class="control-sidebar-bg"></div>

<!-- ./wrapper -->

<!-- jQuery 3.1.1 -->
<script src="<?php echo base_url() . TEMPLATEASSETS  ;?>plugins/jQuery/jquery-3.1.1.min.js"></script>
<!-- jQuery UI 1.11.4 -->
<script src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
  $.widget.bridge('uibutton', $.ui.button);
</script>
<!-- Bootstrap 3.3.7 -->
<script src="<?php echo base_url() . TEMPLATEASSETS  ;?>bootstrap/js/bootstrap.min.js"></script>
<!-- Morris.js charts -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
<script src="<?php echo base_url() . TEMPLATEASSETS  ;?>plugins/morris/morris.min.js"></script>
<!-- Sparkline -->
<script src="<?php echo base_url() . TEMPLATEASSETS  ;?>plugins/sparkline/jquery.sparkline.min.js"></script>
<!-- jvectormap -->
<script src="<?php echo base_url() . TEMPLATEASSETS  ;?>plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
<script src="<?php echo base_url() . TEMPLATEASSETS  ;?>plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
<!-- jQuery Knob Chart -->
<script src="<?php echo base_url() . TEMPLATEASSETS  ;?>plugins/knob/jquery.knob.js"></script>
<!-- daterangepicker -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.11.2/moment.min.js"></script>
<script src="<?php echo base_url() . TEMPLATEASSETS  ;?>plugins/daterangepicker/daterangepicker.js"></script>
<!-- datepicker -->
<script src="<?php echo base_url() . TEMPLATEASSETS  ;?>plugins/datepicker/bootstrap-datepicker.js"></script>
<!-- Bootstrap WYSIHTML5 -->
<script src="<?php echo base_url() . TEMPLATEASSETS  ;?>plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
<!-- Slimscroll -->
<script src="<?php echo base_url() . TEMPLATEASSETS  ;?>plugins/slimScroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="<?php echo base_url() . TEMPLATEASSETS  ;?>plugins/fastclick/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="<?php echo base_url() . TEMPLATEASSETS  ;?>dist/js/adminlte.min.js"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="<?php echo base_url() . TEMPLATEASSETS  ;?>dist/js/pages/dashboard.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="<?php echo base_url() . TEMPLATEASSETS  ;?>dist/js/demo.js"></script>
<!-- DataTables JavaScript -->
        <script type="text/javascript" src="<?php echo base_url() . TEMPLATEASSETS ?>plugins/datatables/jquery.dataTables.min.js"></script>
        <script type="text/javascript" src="<?php echo base_url() . TEMPLATEASSETS ?>plugins/datatables/dataTables.bootstrap.min.js"></script>
        <script type="text/javascript" src="<?php echo base_url() . TEMPLATEASSETS  ;?>plugins/datatables/extensions/Responsive/js/dataTables.responsive.min.js"></script>
    <!--Validacion de Formualarios-->
        <script type="text/javascript" src="<?php echo base_url() . TEMPLATEASSETSSGI ?>dist/js/jquery-validate/jquery.validate.min.js"></script>
        <script type="text/javascript" src="<?php echo base_url() . TEMPLATEASSETSSGI ?>dist/js/jquery-validate/localization/messages_es.min.js"></script>
        <!--Block en Ajax-->
        <script type="text/javascript" src="<?php echo base_url() . TEMPLATEASSETSSGI ?>dist/js/jquery-blockUI/jquery.blockUI.js"></script>
        <!--Alertas-->
        <script type="text/javascript" src="<?php echo base_url() . TEMPLATEASSETSSGI ?>dist/js/bootbox.min.js"></script>
        <!--Menu Nestable-->
        <script type="text/javascript" src="<?php echo base_url() . TEMPLATEASSETSSGI ?>dist/js/jquery-nestable/jquery.nestable.js"></script>
        
        <!-- Custom GratiaCms JavaScript -->
        <script type="text/javascript" src="<?php echo base_url() . TEMPLATEASSETSSGI ?>dist/js/gratiacms.js"></script>
 <script>
            $(document).ready(function () {
                GratiaCms.tooltip();
                GratiaCms.eliminar();
            });
            /*
             * Evitar enter en los forms
             */
            $(document).on("keydown", function (e) {
                if (e.which === 8 && !$(e.target).is("input, textarea")) {
                    e.preventDefault();
                }
            });
        </script>
          <script>
  $(function () {
    $("#listaUsuario").DataTable();
  });
</script>
</body>
</html>

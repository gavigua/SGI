<!-- /.content-wrapper -->
<footer class="main-footer">
    <div class="pull-right hidden-xs">
        <b>Version</b> <?= $this->config->item('version'); ?>
    </div>
    <strong>Copyright <?php echo date('Y'); ?>  &copy; <a href="<?php echo base_url(); ?>"><?= $this->config->item('project_developer'); ?></a>.</strong> All rights
    <?= $this->config->item('project_name') ?>
    reserved.
</footer>

<div class="control-sidebar-bg"></div>

<!-- ./wrapper -->


<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
    $.widget.bridge('uibutton', $.ui.button);
</script>
<!-- AdminLTE App -->
<script src="<?php echo base_url() . TEMPLATEASSETS; ?>plugins/jQuery/jquery-3.1.1.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="<?php echo base_url() . TEMPLATEASSETS; ?>bootstrap/js/bootstrap.min.js"></script>
<!-- FastClick -->
<script src="<?php echo base_url() . TEMPLATEASSETS; ?>plugins/fastclick/fastclick.js"></script>


<script src="<?php echo base_url() . TEMPLATEASSETS; ?>plugins/datatables/jquery.dataTables.js"></script>
<script src="<?php echo base_url() . TEMPLATEASSETS; ?>plugins/datatables/dataTables.bootstrap.min.js"></script>

<!-- Sparkline -->
<script src="<?php echo base_url() . TEMPLATEASSETS; ?>plugins/sparkline/jquery.sparkline.min.js"></script>
<!-- jvectormap -->
<script src="<?php echo base_url() . TEMPLATEASSETS; ?>plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
<script src="<?php echo base_url() . TEMPLATEASSETS; ?>plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
<!-- SlimScroll 1.3.0 -->
<script src="<?php echo base_url() . TEMPLATEASSETS; ?>plugins/slimScroll/jquery.slimscroll.min.js"></script>

<!--jquery-validate-->
<script src="<?php echo base_url() . TEMPLATEASSETSSGI; ?>dist/js/jquery-validate/jquery.validate.min.js"></script>
<script src="<?php echo base_url() . TEMPLATEASSETSSGI; ?>dist/js/jquery-validate/localization/messages_es.min.js"></script>
<!-- jquery-blockUI -->
<script src="<?php echo base_url() . TEMPLATEASSETSSGI; ?>dist/js/jquery-blockUI/jquery.blockUI.js"></script>
<!--Alertas-->
<script src="<?php echo base_url() . TEMPLATEASSETSSGI; ?>dist/js/bootbox.min.js"></script>
<!-- jquery-nestable -->
<script src="<?php echo base_url() . TEMPLATEASSETSSGI; ?>dist/js/jquery-nestable/jquery.nestable.js"></script>
<!-- SGI App -->
<script src="<?php echo base_url() . TEMPLATEASSETSSGI; ?>dist/js/app.js"></script>
<script src="<?php echo base_url() . TEMPLATEASSETSSGI; ?>dist/js/gratiacms.js"></script>
<!-- AdminLTE App -->
<script src="<?php echo base_url() . TEMPLATEASSETS; ?>dist/js/adminlte.js"></script>
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
</body>
</html>

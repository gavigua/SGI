<div class="login-box">
    <div class="login-logo">
        <a href="#"><b><?php echo $descripcion; ?></b> </a>
    </div>
    <!-- /.login-logo -->
    <div class="login-box-body">
        <p class="login-box-msg">Ingrese su usuario y clave</p>
        <?php echo form_open('', 'id="form_principal"'); ?>
         <?php echo validation_errors() ?>
        <div class="form-group has-feedback">
            <input type="text" class="form-control" placeholder="Usuario" name="usuario">
            <span class="glyphicon glyphicon-user form-control-feedback"></span>
        </div>
        <div class="form-group has-feedback">
            <input type="password" class="form-control" placeholder="Password" name="password">
            <span class="glyphicon glyphicon-lock form-control-feedback"></span>
        </div>
        <div class="row">
            <div class="col-xs-8">
                <div class="checkbox icheck">
                    <label>
                        <input type="checkbox"> Recordar
                    </label>
                </div>
            </div>
            <!-- /.col -->
            <div class="col-xs-4">
                <button type="submit" class="btn btn-primary btn-block btn-flat">Login</button>
            </div>
            <!-- /.col -->
        </div>
        <?php echo form_close(); ?> 
       


        <a href="#">No recuerdo mi clave</a><br>
        <a href="register.html" class="text-center">Registrar Nuevo Miembro</a>

    </div>
    <!-- /.login-box-body -->
</div>
<!-- /.login-box -->
<script>
/*
* formulario o pagina de usuario
 */
    $(document).ready(function () {
        var reglas = {
            re_password: {
                equalTo: "#password"
            }
        };
        var mensajes = {
            re_password:
                    {
                        equalTo: 'Las contraseñas no coinciden'
                    }
        };
        GratiaCms.validacion_general('#form-principal', reglas, mensajes);
<?php if (isset($data->id)) : ?>
            $('#password, #re-password').removeAttr('required');
            $('#password').on('blur', function () {
                if ($(this).val() !== '') {
                    $('#re-password').attr('required', true);
                } else {
                    $('#re-password').removeAttr('required').valid();
                }
            });
<?php endif ?>
    });
</script>

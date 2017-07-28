    <!-- Logo -->
    <a href="<?php echo base_url() ?>" class="logo">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini"><b>S</b>TI</span>
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg"><font color="#367FA9">.</font></span>
    </a>    

<!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-static-top">
      <!-- Sidebar toggle button-->
      <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
        <span class="sr-only">Navegación</span>
      </a>

      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
          <!-- User Account: style can be found in dropdown.less -->
          <li class="dropdown user user-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <img src="<?php echo base_url() . AVATAR_IMG; print_r($this->session->userdata('avatar'))?>" class="user-image" alt="User Image">
              <span class="hidden-xs"><?php print_r($this->session->userdata('nombre') . ' ' . $this->session->userdata('apellido')) ?></span>
            </a>
            <ul class="dropdown-menu">
              <!-- User image -->
              <li class="user-header">
                <img src="<?php echo base_url() . AVATAR_IMG; print_r($this->session->userdata('avatar'))?>" class="img-circle" alt="User Image">

                <p>
                  <?php print_r($this->session->userdata('nombre') . ' ' . $this->session->userdata('apellido')) ?> - Web Developer
                  
                  
                </p>
              </li>
              <!-- Menu Body -->
          
              <!-- Menu Footer-->
              <li class="user-footer">
                <div class="pull-left">
                  <a href="<?php echo base_url() . 'admin/seguridad/usuario/actualizar/' . $this->session->userdata('usuario_id')   ?>" class="btn btn-default btn-flat">Perfil</a>
                </div>
                <div class="pull-right">
                  <a href="<?php echo base_url();?>admin/acceso/login/salir" class="btn btn-default btn-flat">Cerrar Session</a>
                </div>
              </li>
            </ul>
          </li>
          <!-- Control Sidebar Toggle Button -->
          <li>
            <a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
          </li>
        </ul>
      </div>
    </nav>
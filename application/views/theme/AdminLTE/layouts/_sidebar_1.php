<!-- Left side column. contains the logo and sidebar -->
<aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
        <!-- Sidebar user panel -->
        <div class="user-panel">
            <div class="pull-left image">
                <img src="<?php echo base_url() . TEMPLATEASSETS; ?>dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
            </div>
            <div class="pull-left info">
                <p>Alexander Pierce</p>
                <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
            </div>
        </div>
        <!-- search form -->
        <form action="#" method="get" class="sidebar-form">
            <div class="input-group">
                <input type="text" name="q" class="form-control" placeholder="Buscar...">
                <span class="input-group-btn">
                    <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
                    </button>
                </span>
            </div>
        </form>
        <!-- /.search form -->
        <!-- sidebar menu: : style can be found in sidebar.less -->

        <?php
        $file = FCPATH . '/assets/sgi/menu/1/menu_' . 'principal' . '.json';
        $menus = json_decode(file_get_contents($file), true);
        ?>
        <ul class="sidebar-menu" data-widget="tree">
            <li class="header">NAVEGACIÓN PRINCIPAL</li>
            <li class="active treeview">
                <a href="#">
                    <i class="fa fa-dashboard"></i> <span>Dashboard</span>
                    <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                </a>
                <ul class="treeview-menu">
                    <?php foreach ($menus['original'] as $menu): ?>
                        <?php if ($menu['menu_id'] === NULL): ?>
                            <?php if (isset($menus['predecesor'][$menu['id']])): ?>
                                <li class="treeview">
                                    <a href="javascript:;"><i class="<?php echo $menu['icono'] ?>"></i> <?php echo $menu['etiqueta'] ?><span class="fa arrow"></span></a>
                                    <ul class="nav nav-second-level">
                                        <?php foreach ($menus['predecesor'][$menu['id']] as $menuP): ?>
                                            <?php if (isset($menus['predecesor'][$menuP['id']])): ?>
                                                <li>
                                                    <a href="javascript:;"><i class="<?php echo $menuP['icono'] ?>"></i> <?php echo $menuP['etiqueta'] ?><span class="fa arrow"></span></a>
                                                    <ul class="nav nav-third-level">
                                                        <?php foreach ($menus['predecesor'][$menuP['id']] as $menuS): ?>
                                                            <?php if (isset($menus['predecesor'][$menuS['id']])): ?>
                                                                <li>
                                                                    <a href="javascript:;"><i class="<?php echo $menuS['icono'] ?>"></i> <?php echo $menuS['etiqueta'] ?><span class="fa arrow"></span></a>
                                                                    <ul class="nav nav-third-level">
                                                                        <?php foreach ($menus['predecesor'][$menuS['id']] as $menuSS): ?>
                                                                            <li>
                                                                                <a href="<?php echo base_url() . $menuSS['url'] ?>"><i class="<?php echo $menuSS['icono'] ?>"></i> <?php echo $menuSS['etiqueta'] ?></a>
                                                                            </li>
                                                                        <?php endforeach; ?>
                                                                    </ul>
                                                                </li>
                                                            <?php else: ?>
                                                                <li>
                                                                    <a href="<?php echo base_url() . $menuS['url'] ?>"><i class="<?php echo $menuS['icono'] ?>"></i> <?php echo $menuS['etiqueta'] ?></a>
                                                                </li>
                                                            <?php endif; ?>
                                                        <?php endforeach; ?>
                                                    </ul>
                                                </li>
                                            <?php else: ?>
                                                <li>
                                                    <a href="<?php echo base_url() . $menuP['url'] ?>"><i class="<?php echo $menuP['icono'] ?>"></i> <?php echo $menuP['etiqueta'] ?></a>
                                                </li>
                                            <?php endif; ?>
                                        <?php endforeach; ?>
                                    </ul>
                                </li>
                            <?php else: ?>
                                <li>
                                    <a href="<?php echo base_url() . $menu['url'] ?>"><i class="<?php echo $menu['icono'] ?>"></i> <?php echo $menu['etiqueta'] ?></a>
                                </li>
                            <?php endif; ?>
                        <?php endif; ?>
                    <?php endforeach; ?>
                </ul>
            </li>
            <li class="treeview">
                <a href="#">
                    <i class="fa fa-server"></i>
                    <span>Inventario</span>
                    <span class="pull-right-container">
                        <span class="label label-primary pull-right">4</span>
                    </span>
                </a>
                <ul class="treeview-menu">
                    <li><a href="pages/layout/top-nav.html"><i class="fa fa-circle-o"></i> Top Navigation</a></li>
                    <li><a href="pages/layout/boxed.html"><i class="fa fa-circle-o"></i> Boxed</a></li>
                    <li><a href="pages/layout/fixed.html"><i class="fa fa-circle-o"></i> Fixed</a></li>
                    <li><a href="pages/layout/collapsed-sidebar.html"><i class="fa fa-circle-o"></i> Collapsed Sidebar</a></li>
                </ul>

            <li class="treeview">
                <a href="#">
                    <i class="fa fa-user-plus"></i>
                    <span>Usuarios</span>
                    <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                </a>
                <ul class="treeview-menu">
                    <li><a href=<?php echo base_url(); ?>dashboard/accesos/usuario><i class="fa fa-circle-o"></i>Registros</a></li>
                    <li><a href=<?php echo base_url(); ?>dashboard/accesos/usuario/crear><i class="fa fa-circle-o"></i>Nuevo Usuario</a></li>
                </ul>
            </li>
            <li class="treeview">
                <a href="#">
                    <i class="fa  fa-tasks"></i>
                    <span>Incidencias</span>
                    <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                </a>
                <ul class="treeview-menu">
                    <li><a href="pages/UI/general.html"><i class="fa fa-circle-o"></i> General</a></li>
                    <li><a href="pages/UI/icons.html"><i class="fa fa-circle-o"></i> Icons</a></li>
                    <li><a href="pages/UI/buttons.html"><i class="fa fa-circle-o"></i> Buttons</a></li>
                    <li><a href="pages/UI/sliders.html"><i class="fa fa-circle-o"></i> Sliders</a></li>
                    <li><a href="pages/UI/timeline.html"><i class="fa fa-circle-o"></i> Timeline</a></li>
                    <li><a href="pages/UI/modals.html"><i class="fa fa-circle-o"></i> Modals</a></li>
                </ul>
            </li>
            <li class="treeview">
                <a href="#">
                    <i class="fa fa-line-chart"></i> <span>Obsolescencia</span>
                    <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                </a>
                <ul class="treeview-menu">
                    <li><a href="pages/forms/general.html"><i class="fa fa-circle-o"></i> General Elements</a></li>
                    <li><a href="pages/forms/advanced.html"><i class="fa fa-circle-o"></i> Advanced Elements</a></li>
                    <li><a href="pages/forms/editors.html"><i class="fa fa-circle-o"></i> Editors</a></li>
                </ul>
            </li>




            <li><a href="documentation/index.html"><i class="fa fa-book"></i> <span>Documentation</span></a></li>

        </ul>
    </section>
    <!-- /.sidebar -->
</aside>

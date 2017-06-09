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
            <?php foreach ($menus['original'] as $menu): ?>
                <?php if ($menu['menu_id'] === NULL): ?>
                    <?php if (isset($menus['predecesor'][$menu['id']])): ?>
                        <li class="active treeview">
                            <a href="javascript:;">
                                <i class="<?php echo $menu['icono'] ?>"></i> <span><?php echo $menu['etiqueta'] ?></span>
                                <span class="pull-right-container">
                                    <i class="fa fa-angle-left pull-right"></i>
                                </span>
                            </a>
                            <ul class="treeview-menu">
                                <?php foreach ($menus['predecesor'][$menu['id']] as $menuP): ?>
                                    <?php if (isset($menus['predecesor'][$menuP['id']])): ?>
                                        <li class="treeview"> <!--treeview -->
                                            <a href="javascript:;">
                                                <i class="<?php echo $menuP['icono'] ?>"></i>
                                                <span> <?php echo $menuP['etiqueta'] ?></span>
                                                <span class="pull-right-container"> 
                                                    <i class="fa fa-angle-left pull-right"></i>
                                                </span>
                                            </a>
                                            <ul class="nav nav-third-level"> <!--nav nav-third-level -->
                                                <?php foreach ($menus['predecesor'][$menuP['id']] as $menuS): ?>
                                                    <?php if (isset($menus['predecesor'][$menuS['id']])): ?>   
                                                        <li class="treeview">
                                                            <a href="javascript:;"><i class="<?php echo $menuS['icono'] ?>"></i> <?php echo $menuS['etiqueta'] ?><span class="fa arrow"><i class="fa fa-angle-left pull-right"></i></span></a>
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
                                            </ul>   <!--nav nav-third-level -->
                                        </li><!--/ treeview -->
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
    </section>
    <!-- /.sidebar -->
</aside>

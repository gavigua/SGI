<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>
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




<?php
$file = FCPATH . '/assets/sgi/menu/3/menu_' . $this->session->userdata('rol_id') . '.json';
$menus = json_decode(file_get_contents($file), true);
?>

<ul class="sidebar-menu" data-widget="tree" id="side-menu">
    <?php foreach ($menus['original'] as $menu): ?>
        <?php if ($menu['menu_id'] != NULL): ?>
            <?php if (isset($menus['predecesor'][$menu['id']])): ?>
                <li class="treeview">
                    <a href="javascript:;"><i class="<?php echo $menu['icono'] ?>"></i> <?php echo $menu['etiqueta'] ?><span class="pull-right-container"><i class="fa fa-angle-left pull-right"></i></span></a>
                    <ul class="treeview-menu">
                        <?php foreach ($menus['predecesor'][$menu['id']] as $menuP): ?>
                            <?php if (isset($menus['predecesor'][$menuP['id']])): ?>
                                <li>
                                    <a href="javascript:;"><i class="<?php echo $menuP['icono'] ?>"></i> <?php echo $menuP['etiqueta'] ?></a>
                                    <ul class="treeview-menu">
                                        <?php foreach ($menus['predecesor'][$menuP['id']] as $menuS): ?>
                                            <?php if (isset($menus['predecesor'][$menuS['id']])): ?>
                                                <li>
                                                    <a href="javascript:;"><i class="<?php echo $menuS['icono'] ?>"></i> <?php echo $menuS['etiqueta'] ?></a>
                                                    <ul class="treeview-menu">
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

</body>
</html>
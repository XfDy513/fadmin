<?php if (!defined('THINK_PATH')) exit(); /*a:4:{s:68:"D:\project\fadmin\public/../application/admin\view\vilager\edit.html";i:1573624697;s:60:"D:\project\fadmin\application\admin\view\layout\default.html";i:1572536367;s:57:"D:\project\fadmin\application\admin\view\common\meta.html";i:1572536366;s:59:"D:\project\fadmin\application\admin\view\common\script.html";i:1572536366;}*/ ?>
<!DOCTYPE html>
<html lang="<?php echo $config['language']; ?>">
    <head>
        <meta charset="utf-8">
<title><?php echo (isset($title) && ($title !== '')?$title:''); ?></title>
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
<meta name="renderer" content="webkit">

<link rel="shortcut icon" href="/assets/img/favicon.ico" />
<!-- Loading Bootstrap -->
<link href="/assets/css/backend<?php echo \think\Config::get('app_debug')?'':'.min'; ?>.css?v=<?php echo \think\Config::get('site.version'); ?>" rel="stylesheet">

<!-- HTML5 shim, for IE6-8 support of HTML5 elements. All other JS at the end of file. -->
<!--[if lt IE 9]>
  <script src="/assets/js/html5shiv.js"></script>
  <script src="/assets/js/respond.min.js"></script>
<![endif]-->
<script type="text/javascript">
    var require = {
        config:  <?php echo json_encode($config); ?>
    };
</script>
    </head>

    <body class="inside-header inside-aside <?php echo defined('IS_DIALOG') && IS_DIALOG ? 'is-dialog' : ''; ?>">
        <div id="main" role="main">
            <div class="tab-content tab-addtabs">
                <div id="content">
                    <div class="row">
                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                            <section class="content-header hide">
                                <h1>
                                    <?php echo __('Dashboard'); ?>
                                    <small><?php echo __('Control panel'); ?></small>
                                </h1>
                            </section>
                            <?php if(!IS_DIALOG && !$config['fastadmin']['multiplenav']): ?>
                            <!-- RIBBON -->
                            <div id="ribbon">
                                <ol class="breadcrumb pull-left">
                                    <li><a href="dashboard" class="addtabsit"><i class="fa fa-dashboard"></i> <?php echo __('Dashboard'); ?></a></li>
                                </ol>
                                <ol class="breadcrumb pull-right">
                                    <?php foreach($breadcrumb as $vo): ?>
                                    <li><a href="javascript:;" data-url="<?php echo $vo['url']; ?>"><?php echo $vo['title']; ?></a></li>
                                    <?php endforeach; ?>
                                </ol>
                            </div>
                            <!-- END RIBBON -->
                            <?php endif; ?>
                            <div class="content">
                                <form id="edit-form" class="form-horizontal" role="form" data-toggle="validator" method="POST" action="">

    <div class="form-group">
        <label class="control-label col-xs-12 col-sm-2"><?php echo __('Vilagername'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
            <input id="c-vilagername" data-rule="required" class="form-control" name="row[vilagername]" type="text" value="<?php echo htmlentities($row['vilagername']); ?>">
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-xs-12 col-sm-2"><?php echo __('Phone'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
            <input id="c-phone" data-rule="required" class="form-control" name="row[phone]" type="text" value="<?php echo htmlentities($row['phone']); ?>">
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-xs-12 col-sm-2"><?php echo __('Sex'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
                        
            <select  id="c-sex" data-rule="required" class="form-control selectpicker" name="row[sex]">
                <?php if(is_array($sexList) || $sexList instanceof \think\Collection || $sexList instanceof \think\Paginator): if( count($sexList)==0 ) : echo "" ;else: foreach($sexList as $key=>$vo): ?>
                    <option value="<?php echo $key; ?>" <?php if(in_array(($key), is_array($row['sex'])?$row['sex']:explode(',',$row['sex']))): ?>selected<?php endif; ?>><?php echo $vo; ?></option>
                <?php endforeach; endif; else: echo "" ;endif; ?>
            </select>

        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-xs-12 col-sm-2"><?php echo __('Birthday'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
            <input id="c-birthday" class="form-control" name="row[birthday]" type="text" value="<?php echo htmlentities($row['birthday']); ?>">
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-xs-12 col-sm-2"><?php echo __('Age'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
            <input id="c-age" class="form-control" name="row[age]" type="number" value="<?php echo htmlentities($row['age']); ?>">
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-xs-12 col-sm-2"><?php echo __('Idcode'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
            <input id="c-idcode" data-rule="required" class="form-control" name="row[idcode]" type="text" value="<?php echo htmlentities($row['idcode']); ?>">
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-xs-12 col-sm-2"><?php echo __('Edu_green'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
                        
            <select  id="c-edu_green" class="form-control selectpicker" name="row[edu_green]">
                <?php if(is_array($eduGreenList) || $eduGreenList instanceof \think\Collection || $eduGreenList instanceof \think\Paginator): if( count($eduGreenList)==0 ) : echo "" ;else: foreach($eduGreenList as $key=>$vo): ?>
                    <option value="<?php echo $key; ?>" <?php if(in_array(($key), is_array($row['edu_green'])?$row['edu_green']:explode(',',$row['edu_green']))): ?>selected<?php endif; ?>><?php echo $vo; ?></option>
                <?php endforeach; endif; else: echo "" ;endif; ?>
            </select>

        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-xs-12 col-sm-2"><?php echo __('Marriage'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
                        
            <select  id="c-marriage" class="form-control selectpicker" name="row[marriage]">
                <?php if(is_array($marriageList) || $marriageList instanceof \think\Collection || $marriageList instanceof \think\Paginator): if( count($marriageList)==0 ) : echo "" ;else: foreach($marriageList as $key=>$vo): ?>
                    <option value="<?php echo $key; ?>" <?php if(in_array(($key), is_array($row['marriage'])?$row['marriage']:explode(',',$row['marriage']))): ?>selected<?php endif; ?>><?php echo $vo; ?></option>
                <?php endforeach; endif; else: echo "" ;endif; ?>
            </select>

        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-xs-12 col-sm-2"><?php echo __('Move_in_time'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
            <input id="c-move_in_time" class="form-control datetimepicker" data-date-format="YYYY-MM-DD" data-use-current="true" name="row[move_in_time]" type="text" value="<?php echo $row['move_in_time']; ?>">
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-xs-12 col-sm-2"><?php echo __('Move_out_time'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
            <input id="c-move_out_time" class="form-control datetimepicker" data-date-format="YYYY-MM-DD" data-use-current="true" name="row[move_out_time]" type="text" value="<?php echo $row['move_out_time']; ?>">
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-xs-12 col-sm-2"><?php echo __('V_status'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
            
            <div class="radio">
            <?php if(is_array($vStatusList) || $vStatusList instanceof \think\Collection || $vStatusList instanceof \think\Paginator): if( count($vStatusList)==0 ) : echo "" ;else: foreach($vStatusList as $key=>$vo): ?>
            <label for="row[v_status]-<?php echo $key; ?>"><input id="row[v_status]-<?php echo $key; ?>" name="row[v_status]" type="radio" value="<?php echo $key; ?>" <?php if(in_array(($key), is_array($row['v_status'])?$row['v_status']:explode(',',$row['v_status']))): ?>checked<?php endif; ?> /> <?php echo $vo; ?></label> 
            <?php endforeach; endif; else: echo "" ;endif; ?>
            </div>

        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-xs-12 col-sm-2"><?php echo __('Status'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
            
            <div class="radio">
            <?php if(is_array($statusList) || $statusList instanceof \think\Collection || $statusList instanceof \think\Paginator): if( count($statusList)==0 ) : echo "" ;else: foreach($statusList as $key=>$vo): ?>
            <label for="row[status]-<?php echo $key; ?>"><input id="row[status]-<?php echo $key; ?>" name="row[status]" type="radio" value="<?php echo $key; ?>" <?php if(in_array(($key), is_array($row['status'])?$row['status']:explode(',',$row['status']))): ?>checked<?php endif; ?> /> <?php echo $vo; ?></label> 
            <?php endforeach; endif; else: echo "" ;endif; ?>
            </div>

        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-xs-12 col-sm-2"><?php echo __('Gro_id'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
            <input id="c-gro_id" data-rule="required" data-source="gro/index" class="form-control selectpage" name="row[gro_id]" type="text" value="<?php echo htmlentities($row['gro_id']); ?>">
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-xs-12 col-sm-2"><?php echo __('Fam_id'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
            <input id="c-fam_id" data-rule="required" data-source="fam/index" class="form-control selectpage" name="row[fam_id]" type="text" value="<?php echo htmlentities($row['fam_id']); ?>">
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-xs-12 col-sm-2"><?php echo __('Allocation_cate'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
            <input id="c-allocation_cate" class="form-control" name="row[allocation_cate]" type="text" value="<?php echo htmlentities($row['allocation_cate']); ?>">
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-xs-12 col-sm-2"><?php echo __('Allocation_start_time'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
            <input id="c-allocation_start_time" class="form-control datetimepicker" data-date-format="YYYY-MM-DD" data-use-current="true" name="row[allocation_start_time]" type="text" value="<?php echo $row['allocation_start_time']; ?>">
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-xs-12 col-sm-2"><?php echo __('Allocation_end_time'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
            <input id="c-allocation_end_time" class="form-control datetimepicker" data-date-format="YYYY-MM-DD" data-use-current="true" name="row[allocation_end_time]" type="text" value="<?php echo $row['allocation_end_time']; ?>">
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-xs-12 col-sm-2"><?php echo __('Family_move'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
                        
            <select  id="c-family_move" class="form-control selectpicker" name="row[family_move]">
                <?php if(is_array($familyMoveList) || $familyMoveList instanceof \think\Collection || $familyMoveList instanceof \think\Paginator): if( count($familyMoveList)==0 ) : echo "" ;else: foreach($familyMoveList as $key=>$vo): ?>
                    <option value="<?php echo $key; ?>" <?php if(in_array(($key), is_array($row['family_move'])?$row['family_move']:explode(',',$row['family_move']))): ?>selected<?php endif; ?>><?php echo $vo; ?></option>
                <?php endforeach; endif; else: echo "" ;endif; ?>
            </select>

        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-xs-12 col-sm-2"><?php echo __('Author'); ?>:</label>
        <div class="col-xs-12 col-sm-8">
                        
            <select  id="c-author" data-rule="required" class="form-control selectpicker" name="row[author]">
                <?php if(is_array($authorList) || $authorList instanceof \think\Collection || $authorList instanceof \think\Paginator): if( count($authorList)==0 ) : echo "" ;else: foreach($authorList as $key=>$vo): ?>
                    <option value="<?php echo $key; ?>" <?php if(in_array(($key), is_array($row['author'])?$row['author']:explode(',',$row['author']))): ?>selected<?php endif; ?>><?php echo $vo; ?></option>
                <?php endforeach; endif; else: echo "" ;endif; ?>
            </select>

        </div>
    </div>
    <div class="form-group layer-footer">
        <label class="control-label col-xs-12 col-sm-2"></label>
        <div class="col-xs-12 col-sm-8">
            <button type="submit" class="btn btn-success btn-embossed disabled"><?php echo __('OK'); ?></button>
            <button type="reset" class="btn btn-default btn-embossed"><?php echo __('Reset'); ?></button>
        </div>
    </div>
</form>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script src="/assets/js/require<?php echo \think\Config::get('app_debug')?'':'.min'; ?>.js" data-main="/assets/js/require-backend<?php echo \think\Config::get('app_debug')?'':'.min'; ?>.js?v=<?php echo htmlentities($site['version']); ?>"></script>
    </body>
</html>
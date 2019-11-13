<?php

namespace app\admin\model\register;

use think\Model;


class Family extends Model
{

    

    

    // 表名
    protected $name = 'family';
    
    // 自动写入时间戳字段
    protected $autoWriteTimestamp = false;

    // 定义时间戳字段名
    protected $createTime = false;
    protected $updateTime = false;
    protected $deleteTime = false;

    // 追加属性
    protected $append = [

    ];
    

    







    public function vilager()
    {
        return $this->belongsTo('app\admin\model\Vilager', 'v_id', 'id', [], 'LEFT')->setEagerlyType(0);
    }
}

<?php

namespace app\admin\model;

use think\Model;


class Vilager extends Model
{

    

    

    // 表名
    protected $name = 'vilager';
    
    // 自动写入时间戳字段
    protected $autoWriteTimestamp = false;

    // 定义时间戳字段名
    protected $createTime = false;
    protected $updateTime = false;
    protected $deleteTime = false;

    // 追加属性
    protected $append = [
        'edu_green_text',
        'move_in_time_text',
        'move_out_time_text',
        'allocation_start_time_text',
        'allocation_end_time_text'
    ];
    

    
    public function getEduGreenList()
    {
        return ['无' => __('无'), '小学' => __('小学'), '初中' => __('初中'), '高中' => __('高中'), '大专' => __('大专'), '本科' => __('本科'), '研究生' => __('研究生'), '硕士' => __('硕士'), '博士' => __('博士'), '博士后' => __('博士后'), '院士' => __('院士')];
    }


    public function getEduGreenTextAttr($value, $data)
    {
        $value = $value ? $value : (isset($data['edu_green']) ? $data['edu_green'] : '');
        $list = $this->getEduGreenList();
        return isset($list[$value]) ? $list[$value] : '';
    }


    public function getMoveInTimeTextAttr($value, $data)
    {
        $value = $value ? $value : (isset($data['move_in_time']) ? $data['move_in_time'] : '');
        return is_numeric($value) ? date("Y-m-d H:i:s", $value) : $value;
    }


    public function getMoveOutTimeTextAttr($value, $data)
    {
        $value = $value ? $value : (isset($data['move_out_time']) ? $data['move_out_time'] : '');
        return is_numeric($value) ? date("Y-m-d H:i:s", $value) : $value;
    }


    public function getAllocationStartTimeTextAttr($value, $data)
    {
        $value = $value ? $value : (isset($data['allocation_start_time']) ? $data['allocation_start_time'] : '');
        return is_numeric($value) ? date("Y-m-d H:i:s", $value) : $value;
    }


    public function getAllocationEndTimeTextAttr($value, $data)
    {
        $value = $value ? $value : (isset($data['allocation_end_time']) ? $data['allocation_end_time'] : '');
        return is_numeric($value) ? date("Y-m-d H:i:s", $value) : $value;
    }

    protected function setMoveInTimeAttr($value)
    {
        return $value === '' ? null : ($value && !is_numeric($value) ? strtotime($value) : $value);
    }

    protected function setMoveOutTimeAttr($value)
    {
        return $value === '' ? null : ($value && !is_numeric($value) ? strtotime($value) : $value);
    }

    protected function setAllocationStartTimeAttr($value)
    {
        return $value === '' ? null : ($value && !is_numeric($value) ? strtotime($value) : $value);
    }

    protected function setAllocationEndTimeAttr($value)
    {
        return $value === '' ? null : ($value && !is_numeric($value) ? strtotime($value) : $value);
    }


    public function family()
    {
        return $this->belongsTo('Family', 'fam_id', 'id', [], 'LEFT')->setEagerlyType(0);
    }


    public function gro()
    {
        return $this->belongsTo('Gro', 'gro_id', 'id', [], 'LEFT')->setEagerlyType(0);
    }
}

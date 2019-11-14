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
        'sex_text',
        'edu_green_text',
        'marriage_text',
        'v_status_text',
        'status_text',
        'family_move_text',
        'author_text'
    ];
    

    
    public function getSexList()
    {
        return ['男' => __('男'), '女' => __('女')];
    }

    public function getEduGreenList()
    {
        return ['无' => __('无'), '小学' => __('小学'), '初中' => __('初中'), '高中' => __('高中'), '大专' => __('大专'), '本科' => __('本科'), '研究生' => __('研究生'), '硕士' => __('硕士'), '博士' => __('博士'), '博士后' => __('博士后'), '院士' => __('院士')];
    }

    public function getMarriageList()
    {
        return ['已婚' => __('已婚'), '未婚' => __('未婚')];
    }

    public function getVStatusList()
    {
        return ['村民' => __('村民'), '普通用户' => __('普通用户')];
    }

    public function getStatusList()
    {
        return ['正常' => __('正常'), '失踪' => __('失踪'), '死亡' => __('死亡'), '迁出' => __('迁出')];
    }

    public function getFamilyMoveList()
    {
        return ['已迁出家庭' => __('已迁出家庭'), '未迁出家庭' => __('未迁出家庭')];
    }

    public function getAuthorList()
    {
        return ['户主' => __('户主'), '家庭成员' => __('家庭成员')];
    }


    public function getSexTextAttr($value, $data)
    {
        $value = $value ? $value : (isset($data['sex']) ? $data['sex'] : '');
        $list = $this->getSexList();
        return isset($list[$value]) ? $list[$value] : '';
    }


    public function getEduGreenTextAttr($value, $data)
    {
        $value = $value ? $value : (isset($data['edu_green']) ? $data['edu_green'] : '');
        $list = $this->getEduGreenList();
        return isset($list[$value]) ? $list[$value] : '';
    }


    public function getMarriageTextAttr($value, $data)
    {
        $value = $value ? $value : (isset($data['marriage']) ? $data['marriage'] : '');
        $list = $this->getMarriageList();
        return isset($list[$value]) ? $list[$value] : '';
    }


    public function getVStatusTextAttr($value, $data)
    {
        $value = $value ? $value : (isset($data['v_status']) ? $data['v_status'] : '');
        $list = $this->getVStatusList();
        return isset($list[$value]) ? $list[$value] : '';
    }


    public function getStatusTextAttr($value, $data)
    {
        $value = $value ? $value : (isset($data['status']) ? $data['status'] : '');
        $list = $this->getStatusList();
        return isset($list[$value]) ? $list[$value] : '';
    }


    public function getFamilyMoveTextAttr($value, $data)
    {
        $value = $value ? $value : (isset($data['family_move']) ? $data['family_move'] : '');
        $list = $this->getFamilyMoveList();
        return isset($list[$value]) ? $list[$value] : '';
    }


    public function getAuthorTextAttr($value, $data)
    {
        $value = $value ? $value : (isset($data['author']) ? $data['author'] : '');
        $list = $this->getAuthorList();
        return isset($list[$value]) ? $list[$value] : '';
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

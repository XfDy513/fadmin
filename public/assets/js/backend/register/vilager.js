define(['jquery', 'bootstrap', 'backend', 'table', 'form'], function ($, undefined, Backend, Table, Form) {

    var Controller = {
        index: function () {
            // 初始化表格参数配置
            Table.api.init({
                extend: {
                    index_url: 'register/vilager/index' + location.search,
                    add_url: 'register/vilager/add',
                    edit_url: 'register/vilager/edit',
                    del_url: 'register/vilager/del',
                    multi_url: 'register/vilager/multi',
                    table: 'vilager',
                }
            });

            var table = $("#table");

            // 初始化表格
            table.bootstrapTable({
                url: $.fn.bootstrapTable.defaults.extend.index_url,
                pk: 'id',
                sortName: 'id',
                columns: [
                    [
                        {checkbox: true},
                        {field: 'id', title: __('Id')},
                        {field: 'vilagername', title: __('Vilagername')},
                        {field: 'phone', title: __('Phone')},
                        {field: 'sex', title: __('Sex'), searchList: {"男":__('男'),"女":__('女')}, formatter: Table.api.formatter.normal},
                        {field: 'age', title: __('Age')},
                        {field: 'idcode', title: __('Idcode')},
                        {field: 'edu_green', title: __('Edu_green'), searchList: {"无":__('无'),"小学":__('小学'),"初中":__('初中'),"高中":__('高中'),"大专":__('大专'),"本科":__('本科'),"研究生":__('研究生'),"硕士":__('硕士'),"博士":__('博士'),"博士后":__('博士后'),"院士":__('院士')}, formatter: Table.api.formatter.normal},
                        {field: 'marriage', title: __('Marriage'), searchList: {"已婚":__('已婚'),"未婚":__('未婚')}, formatter: Table.api.formatter.normal},
                        {field: 'status', title: __('Status'), searchList: {"正常":__('正常'),"失踪":__('失踪'),"死亡":__('死亡'),"迁出":__('迁出')}, formatter: Table.api.formatter.status},
                        {field: 'author', title: __('Author'), searchList: {"户主":__('户主'),"家庭成员":__('家庭成员')}, formatter: Table.api.formatter.normal},
                        {field: 'gro.name', title: __('Gro.name')},
                        {field: 'family.family_vilager_ids', title: __('Family.family_vilager_ids')},
                        {field: 'operate', title: __('Operate'), table: table, events: Table.api.events.operate, formatter: Table.api.formatter.operate}
                    ]
                ]
            });

            // 为表格绑定事件
            Table.api.bindevent(table);
        },
        add: function () {
            Controller.api.bindevent();
        },
        edit: function () {
            Controller.api.bindevent();
        },
        api: {
            bindevent: function () {
                Form.api.bindevent($("form[role=form]"));
            }
        }
    };
    return Controller;
});
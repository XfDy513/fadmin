define(['jquery', 'bootstrap', 'backend', 'table', 'form'], function ($, undefined, Backend, Table, Form) {

    var Controller = {
        index: function () {
            // 初始化表格参数配置
            Table.api.init({
                extend: {
                    index_url: 'vilager/index' + location.search,
                    add_url: 'vilager/add',
                    edit_url: 'vilager/edit',
                    del_url: 'vilager/del',
                    multi_url: 'vilager/multi',
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
                        {field: 'sex', title: __('Sex')},
                        {field: 'age', title: __('Age')},
                        {field: 'idcode', title: __('Idcode')},
                        {field: 'edu_green', title: __('Edu_green'), searchList: {"无":__('无'),"小学":__('小学'),"初中":__('初中'),"高中":__('高中'),"大专":__('大专'),"本科":__('本科'),"研究生":__('研究生'),"硕士":__('硕士'),"博士":__('博士'),"博士后":__('博士后'),"院士":__('院士')}, formatter: Table.api.formatter.normal},
                        {field: 'family.family_vilagers', title: __('Family.family_vilagers')},
                        {field: 'gro.name', title: __('Gro.name')},
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
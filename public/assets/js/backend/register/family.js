define(['jquery', 'bootstrap', 'backend', 'table', 'form'], function ($, undefined, Backend, Table, Form) {

    var Controller = {
        index: function () {
            // 初始化表格参数配置
            Table.api.init({
                extend: {
                    index_url: 'register/family/index' + location.search,
                    add_url: 'register/family/add',
                    edit_url: 'register/family/edit',
                    del_url: 'register/family/del',
                    multi_url: 'register/family/multi',
                    table: 'family',
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
                        {field: 'v_id', title: __('V_id')},
                        {field: 'family_vilager_ids', title: __('Family_vilager_ids')},
                        {field: 'vilager.vilagername', title: __('Vilager.vilagername')},
                        {field: 'vilager.phone', title: __('Vilager.phone')},
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
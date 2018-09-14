$(function () {
    $("#jqGrid").Grid({
        url: '../tag/list',
        colModel: [
            {label: 'id', name: 'id', index: 'id', key: true},
            {label: '标签名称', name: 'name', index: 'name', width: 80},
            {label: '创建时间', name: 'createTime', index: 'create_time', width: 80,
                formatter:function (value) {
                    return transDate(value);
                }
            },
            {label: '更新时间', name: 'updateTime', index: 'update_time', width: 80,
                formatter:function (value) {
                    return  transDate(value);
                }
            }
        ]
});
});

let vm = new Vue({
    el: '#rrapp',
    filters:{
        myCurrency:function(myInput,cent){
            return "¥ "+ formatNumber(myInput,cent,1);
        },
        transDate:function (myInput) {
            return myInput ? transDate(myInput) : '-';
        }
    },
    data: {
        showList: true,
        title: null,
        tag: {id:'', name:'', createTime:'', updateTime:'',   },
        ruleValidate: {
          name: [
        {required: true, message: '名称不能为空', trigger: 'blur'}
    ]
},
q: {
    name: ''
}
},
methods: {
    query: function () {
        vm.reload();
    },
    add: function () {
        vm.showList = false;
        vm.title = "新增";
        vm.tag = {id:'', name:'', createTime:'', updateTime:'', };
    },
    update: function (event) {
        let id = getSelectedRow("#jqGrid");
        if (id == null) {
            return;
        }
        vm.showList = false;
        vm.title = "修改";

        vm.getInfo(id)
    },
    saveOrUpdate: function (event) {
        let url = vm.tag.id == (null || '') ? "../tag/save" : "../tag/update";
        Ajax.request({
            url: url,
            params: JSON.stringify(vm.tag),
            type: "POST",
            contentType: "application/json",
            successCallback: function (r) {
                alert('操作成功', function (index) {
                    vm.reload();
                });
            }
        });
    },
    del: function (event) {
        let ids = getSelectedRows("#jqGrid");
        if (ids == null){
            return;
        }

        confirm('确定要删除选中的记录？', function () {
            Ajax.request({
                url: "../tag/delete",
                params: JSON.stringify(ids),
                type: "POST",
                contentType: "application/json",
                successCallback: function () {
                    alert('操作成功', function (index) {
                        vm.reload();
                    });
                }
            });
        });
    },
    getInfo: function(id){
        Ajax.request({
            url: "../tag/info/"+id,
            async: true,
            successCallback: function (r) {
                vm.tag = r.tag;
            }
        });
    },
    reload: function (event) {
        vm.showList = true;
        let page = $("#jqGrid").jqGrid('getGridParam', 'page');
        $("#jqGrid").jqGrid('setGridParam', {
            postData: {'name': vm.q.name},
            page: page
        }).trigger("reloadGrid");
        vm.handleReset('formValidate');
    },
    reloadSearch: function() {
        vm.q = {
            name: ''
        }
        vm.reload();
    },
    handleSubmit: function (name) {
        handleSubmitValidate(this, name, function () {
            vm.saveOrUpdate()
        });
    },
    handleReset: function (name) {
        handleResetForm(this, name);
    }
}
});
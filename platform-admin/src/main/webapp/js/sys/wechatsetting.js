$(function () {
    $("#jqGrid").Grid({
        url: '../wechatsetting/list',
        colModel: [
            {label: 'id', name: 'id', index: 'id', key: true, hidden: true},
            {label: '开发者id', name: 'appid', index: 'appid', width: 80},
            {label: '服务器令牌', name: 'appsecret', index: 'appsecret', width: 80},
            {label: '', name: 'token', index: 'token', width: 80},
            {label: '消息加解密密钥', name: 'encodingaeskey', index: 'encodingAESKey', width: 80}
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
        wechatSetting: {id:'', appid:'', appsecret:'', token:'', encodingaeskey:'',   },
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
        vm.wechatSetting = {id:'', appid:'', appsecret:'', token:'', encodingaeskey:'', };
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
        let url = vm.wechatSetting.id == (null || '') ? "../wechatsetting/save" : "../wechatsetting/update";
        Ajax.request({
            url: url,
            params: JSON.stringify(vm.wechatSetting),
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
                url: "../wechatsetting/delete",
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
            url: "../wechatsetting/info/"+id,
            async: true,
            successCallback: function (r) {
                vm.wechatSetting = r.wechatSetting;
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
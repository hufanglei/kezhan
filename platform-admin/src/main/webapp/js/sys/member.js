$(function () {
    let tagId = vm.tagId;
    // let url = '../member/list';
    // if (tagId) {
    //     url += '?tagId=' + tagId;
    // }
    $("#jqGrid").Grid({
        url: '../member/list',
        colModel: [
            {label: 'id', name: 'id', index: 'id', key: true, hidden: true},
            {label: '', name: 'avatar', index: 'avatar', width: 80,
                formatter:function (value) {
                    return transImg(value);
                }
            },
            {label: '微信openid', name: 'openid', index: 'openid', width: 80},
            {label: '昵称', name: 'nickName', index: 'nick_name', width: 80},

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
    member: {id:'', openid:'', nickName:'', avatar:'',   },
    ruleValidate: {
        name: [
            {required: true, message: '名称不能为空', trigger: 'blur'}
        ]
    },
    q: {
        name: ''
    },
    tagId:getQueryString("tagId"),
},
methods: {
    query: function () {
        vm.reload();
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
        let url = vm.member.id == null ? "../member/save" : "../member/update";
        Ajax.request({
            url: url,
            params: JSON.stringify(vm.member),
            type: "POST",
            contentType: "application/json",
            successCallback: function (r) {
                alert('操作成功', function (index) {
                    vm.reload();
                });
            }
        });
    },
    band: function (event) {
        let ids = getSelectedRows("#jqGrid");
        if (ids == null){
            return;
        }
        let obj = {};
        obj.tagId = vm.tagId;
        obj.ids = ids;
        confirm('确定要绑定选中的记录？', function () {
            Ajax.request({
                url: "../member/band",
                params: JSON.stringify(obj),
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
    unband: function (event) {
        let ids = getSelectedRows("#jqGrid");
        if (ids == null){
            return;
        }
        let obj = {};
        obj.tagId = vm.tagId;
        obj.ids = ids;
        confirm('确定要绑定选中的记录？', function () {
            Ajax.request({
                url: "../member/unband",
                params: JSON.stringify(obj),
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
            url: "../member/info/"+id,
            async: true,
            successCallback: function (r) {
                vm.member = r.member;
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
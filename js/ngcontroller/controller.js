var controllers = angular.module("controller",[
  "factory",
  "ui.router"
])
.controller("navview",function($scope,$state){

  $scope.list = [{name:"学习记录",img:"glyphicon glyphicon-home cellimg",active:"true",page:0,url:"index"},
                {name:"我的项目",img:"glyphicon glyphicon-book cellimg",active:"false",page:1,url:"project"},
                {name:"添加项目",img:"glyphicon glyphicon-plus-sign cellimg",active:"false",page:2,url:"newproject"},
                {name:"随身笔记",img:"glyphicon glyphicon-edit cellimg",active:"false",page:3,url:"note"},
                {name:"笔记管理",img:"glyphicon glyphicon-edit cellimg",active:"false",page:4,url:"notelist"}];
  var myDate = new Date();
  $scope.datetime = myDate.toLocaleDateString();     //获取当前日期

  //默认进入首页
  $state.go("index");

  //按钮点击 添加选中的颜色
  var lastclick = 0;
  $scope.click = function(item){
    item.active = true;

    var olditem = $scope.list[lastclick];
    olditem.active = false;

    lastclick = item.page;
    $scope.list = $scope.list;

    //进入页面
    $state.go(item.url);
  }

  //经过按钮 添加选中的颜色
  $scope.over = function(item){
    item.active = true;
    $scope.list = $scope.list;
  }

  //离开按钮 去掉选中的颜色
  $scope.leave = function(item){
    item.active = false;

    var olditem = $scope.list[lastclick];
    olditem.active = true;

    $scope.list = $scope.list;
  }
})
.controller("indexlist",function($scope,$state,urlService,netReuqest,localstorage){

  //请求网络
  netReuqest.updatedata(urlService.gettasklist,{page:"0"},function(response){

    $scope.list = response.data["data"];
    for (var i = 0; i < $scope.list.length; i++) {

      var item = $scope.list[i];
      item.active = "0";
      item.username = "吴志强"; //localstorage.getItem("username");
      item.usrimg = "http://localhost/progman/imgs/logo.jpg"; //localstorage.getItem("userimg");

      var array = item["datetime"].split(" ");
      item.date = array[0];
      item.time = array[1];
    }

    $scope.list = $scope.list;
  });

  //按钮点击 添加选中的颜色
  $scope.click = function(item){
    item.active = 2;
    $scope.list = $scope.list;

    $state.go("detial");
  }

  //经过按钮 添加选中的颜色
  $scope.over = function(item){
    if (item.active != 2) {
      item.active = 1;
      $scope.list = $scope.list;
    }
  }

  //离开按钮 去掉选中的颜色
  $scope.leave = function(item){
    if (item.active != 2) {
      item.active = 0;
      $scope.list = $scope.list;
    }
  }

  //分享
  $scope.func = function(tag){

    if (tag == 0) {

      alert("点赞");
    }else if (tag == 1) {

      alert("评论");
    }else if (tag == 2) {

      alert("分享");
    }
  }
})
.controller("project",function($scope){


})
.controller("newproject",function($scope){


})
.controller("note",function($scope,$state,urlService,netReuqest,datashare){

  $scope.title = "";
  $scope.brief = "";
  $scope.tag = "";
  $scope.text = "";

  //判断是否有id
  if (datashare.id != 0) {

    //请求网络
    netReuqest.updatedata(urlService.gettasklist,{page:"0",filter:"where id ="+datashare.id},function(response){

      var array = response.data["data"];
      var obj = array[0];

      $scope.title = obj.title;
      $scope.brief = obj.brief;
      $scope.tag = obj.tag;
      $scope.text = obj.text;
    });
  }

  //========================保存===================
  $scope.save = function (){

    var obj = {};
    obj.title = $scope.title;
    obj.brief = $scope.brief;
    obj.tag = $scope.tag;
    obj.text = $scope.text;

    //判断是否有id
    if (datashare.id == 0) { //增加

      //请求网络
      netReuqest.updatedata(urlService.addtasklist,obj,function(response){

        alert(response.data["msg"]);
        if (response.data["result"]) {

        }
      });
    }else { //修改

      //请求网络
      netReuqest.updatedata(urlService.updatetasklist,obj,function(response){

        alert(response.data["msg"]);
        if (response.data["result"]) {

        }
      });
    }
  }

  //===============添加文章内容按钮===============
  //添加字符串
  $scope.string = function (){

    $scope.text = $scope.text+"\n[string] [end]";
  };
  //添加标题
  $scope.subtitle = function (){

    $scope.text = $scope.text+"\n[subtitle] [end]";
  };
  //添加代码
  $scope.code = function (){

    $scope.text = $scope.text+"\n[code] [end]";
  };
  //添加图片
  $scope.img = function (){

    $scope.text = $scope.text+"\n[img] [end]";
  };

  //===============下面的功能===============
  //返回列表
  $scope.backtolist = function (){

    $state.go("pageman");
  };
  //查看文章
  $scope.see = function (){

    window.location.href = urlService.pagedetial+"?id="+id;
  }
})
.controller("detial",function($scope){


})
.controller("notelist",function($scope){


});

var controllers = angular.module("controller",[
  "factory",
  "ui.router"
])
.controller("navview",function($scope,$state){

  $scope.list = [{name:"学习记录",img:"glyphicon glyphicon-home cellimg",active:"true",page:0,url:"index"},
                {name:"我的项目",img:"glyphicon glyphicon-book cellimg",active:"false",page:1,url:"project"},
                {name:"添加项目",img:"glyphicon glyphicon-plus-sign cellimg",active:"false",page:2,url:"newproject"},
                {name:"随身笔记",img:"glyphicon glyphicon-edit cellimg",active:"false",page:3,url:"note"}];
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
.controller("note",function($scope){

})
.controller("detial",function($scope){

});

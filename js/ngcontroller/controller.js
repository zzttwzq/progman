var controllers = angular.module("controller",[
  "factory",
  "ui.router"
])
.controller("navview",function($scope,$state){

  $scope.list = [{name:"学习记录",img:"glyphicon glyphicon-home cellimg",active:"true",page:0,url:"index"},
                {name:"我的项目",img:"glyphicon glyphicon-book cellimg",active:"false",page:1,url:"project"},
                {name:"添加项目",img:"glyphicon glyphicon-plus-sign cellimg",active:"false",page:2,url:"addproject"},
                {name:"随身笔记",img:"glyphicon glyphicon-edit cellimg",active:"false",page:3,url:"note"}];


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
.controller("indexlist",function($scope){



})
.controller("project",function($scope){



})
.controller("addproject",function($scope){



})
.controller("note",function($scope){



});

var controllers = angular.module("controller",[
  "factory"
])
.controller("navview",function($scope){



  $scope.list = [{name:"学习记录",img:"glyphicon glyphicon-home cellimg",active:"true",page:0},
                {name:"我的项目",img:"glyphicon glyphicon-book cellimg",active:"false",page:1},
                {name:"添加项目",img:"glyphicon glyphicon-plus-sign cellimg",active:"false",page:2},
                {name:"随身笔记",img:"glyphicon glyphicon-edit cellimg",active:"false",page:3}];

  var lastclick = 0;
  $scope.click = function(item){
    item.active = true;

    var olditem = $scope.list[lastclick];
    olditem.active = false;

    lastclick = item.page;
    $scope.list = $scope.list;
  }

  var inint = function (){
    
    $scope.list = $scope.list;
  }
  inint();

  $scope.over = function(item){
    item.active = true;
    $scope.list = $scope.list;
  }

  $scope.leave = function(item){
    item.active = false;

    var olditem = $scope.list[lastclick];
    olditem.active = true;

    $scope.list = $scope.list;
  }

})
.controller("indexlist",function($scope){



});

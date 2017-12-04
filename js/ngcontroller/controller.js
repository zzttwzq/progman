var controllers = angular.module("controller",[
  "factory",
  "ui.router"
])
.controller("navview",function($scope,$state){

  $scope.list = [{name:"学习记录",img:"glyphicon glyphicon-home cellimg",active:"true",page:0,url:"index"},
                {name:"我的项目",img:"glyphicon glyphicon-book cellimg",active:"false",page:1,url:"project"},
                {name:"添加项目",img:"glyphicon glyphicon-plus-sign cellimg",active:"false",page:2,url:"newproject"},
                {name:"随身笔记",img:"glyphicon glyphicon-edit cellimg",active:"false",page:3,url:"note"},
                {name:"笔记管理",img:"glyphicon glyphicon-th-list cellimg",active:"false",page:4,url:"notelist"}];
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

    //默认进入首页
    window.location.href = "http://localhost/progman/#!/detial?id="+item.id;
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
.controller("note",function($scope,$state,urlService,netReuqest){

  $scope.title = "";
  $scope.brief = "";
  $scope.tag = "";
  $scope.text = "";

  var itemid = window.location.href.split("?");

  //判断是否有id
  if (itemid.length > 1) {

    //请求网络
    netReuqest.updatedata(urlService.gettasklist,{page:"0",filter:"where "+itemid[1]},function(response){

      var array = response.data["data"];
      var obj = array[0];

      $scope.title = obj.title;
      $scope.brief = obj.brief;
      $scope.tag = obj.tag;
      $scope.text = obj.text;
      $scope.id = obj.id;
    });
  }

  //========================保存===================
  $scope.save = function (item){

    var obj = {};
    obj.title = $scope.title;
    obj.brief = $scope.brief;
    obj.tag = $scope.tag;
    obj.text = $scope.text;

    //判断是否有id
    if (itemid.length == 1) { //增加

      //请求网络
      netReuqest.updatedata(urlService.addtasklist,obj,function(response){

        alert(response.data["msg"]);
        if (response.data["result"]) {

        }
      });
    }
    else { //修改

      obj.id = $scope.id;

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
.controller("detial",function($scope,netReuqest,urlService){

  $scope.data = {"title":"asdf"};
  var itemid = window.location.href.split("?");
  //请求网络
  netReuqest.updatedata(urlService.gettasklist,{page:"0",filter:"where "+itemid[1]},function(response){

    $scope.data = response.data["data"][0];

    var list = $scope.data.text.split("[end]");
    for (var i = 0; i < list.length; i++) {
      var string = list[i];

      if (string.indexOf("[subtitle]") >= 0) {

        string = string.replace("[subtitle]","");
        string = "<h3 class='subtitle'>"+string.split("\n").join("<br>")+"</h3>";
      }else if (string.indexOf("[code]") >= 0) {

        string = string.replace("[code]","");
        string = string.replace(/</g, '&lt;');
        string = string.replace(/>/g, '&gt;');
        string = "<pre class='code'><code>"+string.split("\n").join("<br>")+"</code></pre>";
        string = string.replace("<br>","");

      }else if (string.indexOf("[img]") >= 0) {

        string = string.replace("[img]","");
        string = "<img src='"+string+"'></img>";
      }else if (string.indexOf("[string]") >= 0) {

        string = string.replace("[string]","");
        string = "<p class='discription'>"+string+"</p>";
      }

      $("#content").append(string);
    }
  });
})
.controller("notelist",function($scope,netReuqest,urlService){

  //请求网络
  netReuqest.updatedata(urlService.gettasklist,{page:"0"},function(response){

    $scope.list = response.data["data"];
    for (var i = 0; i < $scope.list.length; i++) {

      var item = $scope.list[i];
    }

    $scope.list = $scope.list;
  });

  //删除
  $scope.delete = function (item){

    //请求网络
    netReuqest.updatedata(urlService.deletetasklist,{id:item.id},function(response){

      alert(response.data["msg"]);
      if (response.data["result"] == 1) {

        for (var i = 0; i <$scope.list.length; i++) {

          if ($scope.list[i] == item) {

            $scope.list.splice(i,1);
          }
        }

        $scope.list = $scope.list;
      }
    });
  }

  //编辑
  $scope.edit = function (item){

    //默认进入首页
    window.location.href = "http://localhost/progman/#!/note?id="+item.id;
  }

  //查看
  $scope.see = function (item){

    //默认进入首页
    window.location.href = "http://localhost/progman/#!/detial?id="+item.id;
  }
});

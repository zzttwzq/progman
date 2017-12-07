var factorys = angular.module("factory",[])
.factory("localstorage",function(){
  var factory = {};
  //保存的数据
  factory.setvalue = function (key,value){

    localStorage.setItem(key,value);
  };
  //获取保存的数据
  factory.getvalue = function (key){

    return localStorage.getItem(key);
  };
  //删除保存的数据
  factory.deletevalue = function (key){

    localStorage.removeItem(key);
  };
  //删除所有保存的数据
  factory.deleteAllValue = function (){

    localStorage.clear();
  };
  return factory;
})
.factory('urlService', function() {
  var service = {
    mainservice:"http://120.78.131.83/progman/",

    adduser:"/myphp/business/login_register/login_register.php?action=add",
    login:"/myphp/business/progman/login.php?action=login",
    logout:"/myphp/business/login_register/login_register.php?action=logout",

    gettasklist:"/myphp/business/progman/project.php?action=getTaskList",
    addtasklist:"/myphp/business/progman/project.php?action=addTaskList",
    deletetasklist:"/myphp/business/progman/project.php?action=deleteTaskList",
    updatetasklist:"/myphp/business/progman/project.php?action=updateTaskList",

    addscorelist:"/myphp/business/progman/project.php?action=addScoreList",
    getscorelist:"/myphp/business/progman/project.php?action=getScoreList",
  };
  return service;
})
.factory("netReuqest",function(urlService,$http){
  var factory = {};
  factory.getlist = function (url,data,back){

    //请求网络
    $http.post(url,data)
    .then(function (response){

      if (response.data.total >= 0) {

        back(response);

      }else {

        alert(response.data.msg);
      }
    });
  };
  factory.updatedata = function (url,data,back){

    //请求网络
    $http.post(url,data)
    .then(function (response){

      if (response.data.result == 1||
        response.data.total > 0) {

        back(response);

      }else {

        alert(response.data.msg);
      }
    });
  };

  return factory;
})
.factory("datashare",function(){
  var service = {
    id:0,
  };

  return service;
})
.factory("checkLoginStatue",function(localstorage){

  var factory = {};
  factory.isLogin = function (){

    //判断自动登录
    var userid = localstorage.getvalue('userid');
    var token = localstorage.getvalue('token');
    var username = localstorage.getvalue('username');
    var password = localstorage.getvalue('password');
    if (username &&
        password&&
        token != ""&&
        userid!= "") {

          return true;
    }else{

      return false;
    }
  }

  return factory;
})
.factory("getlistservice",function(netReuqest,localstorage){

  var service = {};
  service.getlist = function (list,listpage,url,page,filter){

    list.splice(0,list.length); //清空数组
    listpage.splice(0,listpage.length); //清空数组

    var data = {};
    data.page = page;
    if (filter == "") {

      data.filter = "where username = '"+localstorage.getvalue("username")+"'";
    }else {

      data.filter = filter+" and username = '"+localstorage.getvalue("username")+"'";
    }
    netReuqest.getlist(url,data,function(response){

      //列表数据
      for (var i = 0; i < response.data.rows.length; i++) {

        list.push(response.data.rows[i]);
      }

      //分页数组
      for (var i = 0; i < Math.ceil(response.data.total/10); i++) {

        var obj = {};
        obj.page = i;
        if(i == page){

          obj.active = true;
        }else{

          obj.active = false;
        }
        listpage.push(obj);
      }
    });
  }

  service.next = function (list,listpage,url,page,filter){
    var obj = listpage[page];
    obj.active = false;

    page ++ ;
    if (page > listpage) {

      page = listpage.length-1;
    }

    var obj = listpage[page];
    obj.active = true;

    listpage = listpage;

    this.getlist(list,listpage,url,page,filter);

    return page;
  }

  service.prevois = function (list,listpage,url,page,filter){

    var obj = listpage[page];
    obj.active = false;

    page -- ;
    if (page < 0) {

      page = 0;
    }

    var obj = listpage[page];
    obj.active = true;

    listpage = listpage;

    this.getlist(list,listpage,url,page,filter);

    return page;
  }

  return service;
})
;

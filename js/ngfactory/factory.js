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
    mainservice:"http://114.67.71.172/progman/",

    adduser:"/myphp/business/progman/login.php?action=adduser",
    saveuser:"/myphp/business/progman/login.php?action=saveuser",
    login:"/myphp/business/progman/login.php?action=login",
    logout:"/myphp/business/progman/login.php?action=logout",

    addscorelist:"/myphp/business/progman/learning.php?action=addScoreList",
    getscorelist:"/myphp/business/progman/learning.php?action=getScoreList",

    gettasklist:"/myphp/business/progman/learning.php?action=getTaskList",
    addtasklist:"/myphp/business/progman/learning.php?action=addTaskList",
    deletetasklist:"/myphp/business/progman/learning.php?action=deleteTaskList",
    updatetasklist:"/myphp/business/progman/learning.php?action=updateTaskList",

    getProjectList:"/myphp/business/progman/project.php?action=getProjectList",
    addProject:"/myphp/business/progman/project.php?action=addProject",
    deleteProject:"/myphp/business/progman/project.php?action=deleteProject",
    udpateProject:"/myphp/business/progman/project.php?action=udpateProject",
  };
  return service;
})
.factory("netReuqest",function(urlService,$http){
  var factory = {};
  factory.getlist = function (url,data,back){

    //请求网络
    $http.post(url,data)
    .then(function (response){

      if (response.data.result == 1||
        response.data.total >= 0) {

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
.factory("userManager",function(localstorage){

  var factory = {};
  factory.getUsrInfo = function (){

    //判断自动登录
    var usrItem = {};
    usrItem.userid = localstorage.getvalue('userid');
    usrItem.token = localstorage.getvalue('token');
    usrItem.username = localstorage.getvalue('username');
    usrItem.userimg = localstorage.getvalue('userimg');

    if (usrItem.username &&
        usrItem.token != ""&&
        usrItem.userid!= ""&&
        usrItem.userimg!= "") {

          return usrItem;
    }else{

      return null;
    }
  }

  factory.userLogin = function (userid,username,token,userimg){

    //判断自动登录
    localstorage.setvalue('userid',userid);
    localstorage.setvalue('token',token);
    localstorage.setvalue('username',username);
    localstorage.setvalue('userimg',userimg);
  }

  factory.userLogout = function (){

    //判断自动登录
    localstorage.deletevalue('userid');
    localstorage.deletevalue('token');
    localstorage.deletevalue('username');
    localstorage.deletevalue('userimg');
  }

  return factory;
})
.factory("getlistservice",function(netReuqest,localstorage,userManager){

  var service = {};
  service.getlist = function (list,listpage,url,page,filter){

    list.splice(0,list.length); //清空数组
    listpage.splice(0,listpage.length); //清空数组

    var data = {};
    data.page = page;
    data.filter = filter;
    netReuqest.getlist(url,data,function(response){

      //列表数据
      for (var i = 0; i < response.data.data.length; i++) {

        var cellItem = response.data.data[i];

        var array1 = cellItem.datetime.split(" ");
        var array2 = array1[0].split("-");

        cellItem.year = array2[0];
        cellItem.month = array2[1]+"月"+array2[2]+"日";

        var usrItem = userManager.getUsrInfo();
        if (usrItem) {
          cellItem.usrimg = usrItem.userimg;
        }

        list.push(cellItem);
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
    }else {
      page --;
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
.factory("initLib",function(){

    var service = {};
    service.startConfig = function (){

      alert('asdf');
    };
    return service;
})
.factory("eventService", function () {

    var onEventFunc = {};
    return {
        on: function (type, f) {
            //事件绑定
            onEventFunc[type] = f;
        },
        trigger: function (type, data) {
            //触发事件
            for (var item in onEventFunc) {
                if (item == type)
                    onEventFunc[item](data);
            }
        }
    }
});

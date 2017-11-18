var app = angular.module("app",[
  "ui.router",
  "controller",
  "factory",
  "directive"
])
.config(function($stateProvider,$urlRouterProvider){
  $urlRouterProvider.when("/","index");
  $stateProvider
  .state('index',{
    url: '/index',
    templateUrl: "/progman/tpls/index.php",
    controller:'indexlist',
    cache: false,
  })
  .state('project',{
    url: '/project',
    templateUrl: "/progman/tpls/myproject.php",
    controller:'project',
    cache: false,
  })
  .state('addproject',{
    url: '/addproject',
    templateUrl: "/progman/tpls/addproject.php",
    controller:'addproject',
    cache: false,
  })
  .state('note',{
    url: '/note',
    templateUrl: "/progman/tpls/note.php",
    controller:'note',
    cache: false,
  })

});

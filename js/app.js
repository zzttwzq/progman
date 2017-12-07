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
  .state('newproject',{
    url: '/newproject',
    templateUrl: "/progman/tpls/newproject.php",
    controller:'newproject',
    cache: false,
  })
  .state('note',{
    url: '/note',
    templateUrl: "/progman/tpls/note.php",
    controller:'note',
    cache: false,
  })
  .state('detial',{
    url: '/detial',
    templateUrl: "/progman/tpls/learningdetial.php",
    controller:'detial',
    cache: false,
  })
  .state('notelist',{
    url: '/notelist',
    templateUrl: "/progman/tpls/notelist.php",
    controller:'notelist',
    cache: false,
  })
  .state('datemanager',{
    url: '/datemanager',
    templateUrl: "/progman/tpls/datemanager.php",
    controller:'datemanager',
    cache: false,
  })

});

var app = angular.module("app",[
  "ui.router",
  "controller",
  "factory",
  "directive"
])
.config(function($stateProvider,$urlRouterProvider){
  $urlRouterProvider.when("/","/learnlist");
  $stateProvider
  .state('learnlist',{
    url: '/learnlist',
    templateUrl: "/progman/tpls/index.html",
    controller:'learnlist',
    cache: false,
  })
  .state('project',{
    url: '/project',
    templateUrl: "/progman/tpls/myproject.html",
    controller:'project',
    cache: false,
  })
  .state('newproject',{
    url: '/newproject',
    templateUrl: "/progman/tpls/newproject.html",
    controller:'newproject',
    cache: false,
  })
  .state('note',{
    url: '/note',
    templateUrl: "/progman/tpls/note.html",
    controller:'note',
    cache: false,
  })
  .state('detial',{
    url: '/detial',
    templateUrl: "/progman/tpls/learningdetial.html",
    controller:'detial',
    cache: false,
  })
  .state('notelist',{
    url: '/notelist',
    templateUrl: "/progman/tpls/notelist.html",
    controller:'notelist',
    cache: false,
  })
  .state('datemanager',{
    url: '/datemanager',
    templateUrl: "/progman/tpls/datemanager.html",
    controller:'datemanager',
    cache: false,
  })
});

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

});

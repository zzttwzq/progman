var directives = angular.module("directive",[])
.directive("navigatior",function(){
    return {
            restrict: 'E',
            template: '<div class="text-center">'+
                      '<ul class="pagination">'+
                      '<li ng-click="prevois()"><a href="#">上一页</a></li>'+
                      "<li ng-class={true:'active',false:'inactive'}[item.active] ng-repeat='item in listpage' ng-click='clickpage(item)'><a href=''>{{$index+1}}</a></li>"+
                      '<li ng-click="next()"><a href="#">下一页</a></li>'+
                      '</ul>'+
                      '</div>',
            replace: true
        };
  })
;

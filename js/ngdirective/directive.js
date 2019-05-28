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
.directive("linkview",function(){
  return {
    restrict: 'E',
    template: '<div class="linkview">'+
                '<div class="linksepline"></div>'+
                '<div class="">'+
                  '<h3 class="linktag_title">分类标签</h3>'+
                  '<div class="linktag" ng-click="tagclick($index)" ng-repeat="item in taglist" ng-class="{true:\'linktag_active\',fasle:\'linktag_disactive\'}[item.active]">{{item.title}}</div>'+
                '</div>'+
                '<div class="linksepline_gray"></div>'+
                '<div class="">'+
                  '<h3 class="linktag_title" style="margin-bottom:20px;">查看最多</h3>'+
                  '<div class="linkviewcell_most" ng-repeat="item in mostlist" ng-class="{true:\'\',fasle:\'linkviewcell_most_active\'}[item.active]>{{item.title}}</div>'+
                '</div>'+
              '</div>',
    replace: true
  };
})
;

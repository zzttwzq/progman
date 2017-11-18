<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>我的首页</title>

    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="apple-touch-fullscreen" content="yes" />
    <meta name="format-detection" content="telephone=no"/>
    <meta name="apple-mobile-web-app-status-bar-style" content="black" />
    <meta name="format-detection" content="telephone=no" />
    <meta name="msapplication-tap-highlight" content="no" />
    <meta name="viewport" content="initial-scale=1,maximum-scale=1,minimum-scale=1" />

    <!-- icon图标 -->
    <link rel="icon" href="http://120.78.131.83/progman/imgs/favicon.ico" type="image/x-icon">

    <!-- 引入自己的主题 -->
    <link rel="stylesheet" href="http://120.78.131.83/progman/css/theme.css">

    <!-- 引入动画库 -->
    <link rel="stylesheet" href="http://apps.bdimg.com/libs/animate.css/3.1.0/animate.min.css">

    <!-- jqury -->
    <script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>

    <!-- bootstrap -->
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <!-- angular -->
    <script src="https://cdn.bootcss.com/angular.js/1.6.6/angular.min.js"></script>

    <!-- chartjs -->
    <!-- <script src="http://120.78.131.83/progman/lib/Chart.min.js"></script> -->

    <!-- ui.route -->
    <script src="https://cdn.bootcss.com/angular-ui-router/1.0.3/angular-ui-router.min.js"></script>

    <!-- 自己的js -->
    <script src='http://120.78.131.83/progman/js/ngfactory/factory.js' charset='utf-8'></script>
    <script src='http://120.78.131.83/progman/js/ngdirective/directive.js' charset='utf-8'></script>
    <script src='http://120.78.131.83/progman/js/ngcontroller/controller.js' charset='utf-8'></script>
    <script src='http://120.78.131.83/progman/js/app.js' charset='utf-8'></script>

    <style media="screen">

    </style>
  </head>
  <body ng-app="app">

    <!-- 左侧导航界面 -->
    <div class="leftview-web" ng-controller="navview">

      <!-- 电脑显示的界面 -->
      <div class="webleft">

        <!-- 用户头像 -->
        <img class="userimg" src="" alt="头像">
        <!-- 用户头像 -->

        <!-- 用户名 -->
        <h2 class="usertitle">pliro</h2>
        <!-- 用户名 -->

        <!-- 清楚浮动 -->
        <div class="clearfix"></div>
        <!-- 清楚浮动 -->

        <!-- 标题列表 -->
        <ul style="margin-top:30px">
          <li class="cell" ng-mouseover="over(item)" ng-mouseleave="leave(item)" ng-click="click(item)" ng-repeat="item in list" style="color:white">
            <div class="cellcontent" ng-class="{true:'actives',false:'deactive'}[item.active]">
              <span ng-show="item.active" class="line"></span>
              <span class="{{item.img}}"></span>
              <span class="celltitle">{{item.name}}</span>
            </div>
          </li>
        </ul>
        {{inint();}}
        <!-- 标题列表 -->
      </div>
      <!-- 电脑显示的界面 -->


      <!-- 手机端显示的界面 -->
      <div class="leftview-mobile">


      </div>
      <!-- 手机端显示的界面 -->

    </div>
    <!-- 左侧导航界面 -->


    <div class="content" ui-view></div>


    <div class="clearfix"></div>
  </body>
</html>

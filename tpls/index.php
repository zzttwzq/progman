<style media="screen">
  .titles{
    margin-top: 60px;
    margin-bottom: 30px;
  }
  .main{
    margin-left: 60px;
  }
  .indexlistcell{
    cursor: pointer;
  }
  .indexlistcell:hover{
    background: rgb(245,245,245);
  }

  .listview{
    background: white;
    border-radius: 10px;
    width: 700px;
    height: 900px;
    float: left;
    margin-bottom: 60px;
    overflow: hidden;
  }
  .linkview{
    background: white;
    border-radius: 10px;
    width: 310px;
    height: 200px;
    float: left;
    margin-left: 30px;
    overflow: hidden;
  }
  .line2{
    width: 100%;
    background: black;
    height: 2px;
  }

  /*cell*/
  .listcellimg{
    width: 100px;
    height: 100px;
    float: left;
    margin: 30px 30px;
    border-radius: 5px;
  }
  .cellright{
    float: left;
  }
  .line3{
    margin-left: 30px;
    width: 640px;
    height: 1px;
    background: rgb(218, 218, 218);
  }


  .celrighttop{
    margin-top: 25px;
  }
  .celltiles{
    font-size: 25px;
  }
  .celldetial{
    margin-top: -10px;
    font-size: 15px;
    color: rgb(122, 122, 122);
  }

  .celrightbottom{
    margin-top: 20px;
  }
  .celluserimg{
    width: 30px;
    height: 30px;
    border-radius: 15px;
    float: left;
    margin-top: -5px;
  }

  .cellname{
    margin-left: 10px;
    font-size: 16px;
    color: rgb(122, 122, 122);
  }
  .celldate{
    margin-left: 30px;
    font-size: 16px;
    color: rgb(122, 122, 122);
  }
  .celltime{
    margin-left: 10px;
    font-size: 15px;
    color: rgb(122, 122, 122);
  }

  .celltitleactive{
    color: rgb(255, 195, 63);
  }
  .celltitleactive2{
    color: rgb(122, 122, 122);
  }
  .celltitledeactive{
    color: black;
  }
</style>

<div class="main animated fadeInRight">

  <!-- 标题 -->
  <h2 class="titles">学习记录</h2>
  <!-- 标题 -->

  <div class="">

    <!-- 列表界面 -->
    <div class="listview">

      <!-- cell -->
      <div class="indexlistcell" ng-mouseover="over(item)" ng-mouseleave="leave(item)" ng-click="click(item)" ng-repeat="item in list">

        <!-- cell图片 -->
        <img class="listcellimg" ng-src="{{item.img}}" alt="">
        <!-- cell图片 -->

        <div class="cellright">

          <!-- cell头部，包括标题和摘要 -->
          <div class="celrighttop">
            <p class="celltiles" ng-class="{2:'celltitleactive2',1:'celltitleactive',0:'celltitledeactive'}[item.active]"><strong>{{item.title}}</strong></p>
            <p class="celldetial">{{item.brief}}</p>
          </div>
          <!-- cell头部，包括标题和摘要 -->

          <!-- cell底部，包括用户头像，用户名称，时间，评论赞等 -->
          <div class="celrightbottom">
            <img class="celluserimg" ng-src="{{item.usrimg}}" alt="">
            <span class="cellname">{{item.username}}</span>
            <span class="celldate">{{item.date}}</span>
            <span class="celltime">{{item.time}}</span>

            <!-- 评论，赞等 -->
            <div class="functions" style="margin-left:79px;margin-top:2px;float:right;color:rgb(122, 122, 122)">

              <div style="float:right;cursor:pointer;" ng-click="func(0)">
                <span class="glyphicon glyphicon-thumbs-up"></span>
                <span>{{item.star}}</span>
              </div>

              <div style="float:right;cursor:pointer;" ng-click="func(1)">
                <span class="glyphicon glyphicon-comment"></span>
                <span>{{item.comment}}</span>
                <div style="margin-left:8px;margin-right:8px;float:right;width:1px;height:20px;background:rgb(218, 218, 218)"></div>
              </div>

              <div style="float:right;cursor:pointer;" ng-click="func(2)">
                <span class="glyphicon glyphicon-share"></span>
                <span>{{item.share}}</span>
                <div style="margin-left:8px;margin-right:8px;float:right;width:1px;height:20px;background:rgb(218, 218, 218)"></div>
              </div>
            </div>
            <!-- 评论，赞等 -->
          </div>
          <!-- cell底部，包括用户头像，用户名称，时间，评论赞等 -->
        </div>

        <div class="clearfix"></div>

        <div class="line3"></div>
      </div>
      <!-- cell -->

      <!-- 分页 -->
      <navigatior class="animated fadeInUp" style="margin-top:30px;"></navigatior>
      <!-- 分页 -->
    </div>
    <!-- 列表界面 -->

    <!-- 右侧导航界面 -->
    <div class="linkview">
      <div class="line2">

      </div>
    </div>
    <!-- 右侧导航界面 -->
  </div>
</div>

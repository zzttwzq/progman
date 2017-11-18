<style media="screen">
  .titles{
    margin-top: 60px;
    margin-bottom: 30px;
  }
  .main{
    margin-left: 60px;
  }
  .listview{
    background: white;
    border-radius: 10px;
    width: 700px;
    height: 900px;
    float: left;
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
    background: red;
    float: left;
    margin: 30px 30px;
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
    color: rgb(108, 108, 108);
  }

  .celrightbottom{
    margin-top: 20px;
  }
  .celluserimg{
    width: 30px;
    height: 30px;
    border-radius: 15px;
    background: green;
    float: left;
    margin-top: -5px;
  }

  .cellname{
    margin-left: 10px;
    font-size: 16px;
    color: rgb(108, 108, 108);
  }
  .celldate{
    margin-left: 30px;
    font-size: 16px;
    color: rgb(108, 108, 108);
  }
  .celltime{
    margin-left: 10px;
    font-size: 15px;
    color: rgb(108, 108, 108);
  }
</style>

<div class="main animated fadeInRight">

  <h2 class="titles">学习记录</h2>

  <div class="">
    <div class="listview">

      <div class="indexlistcell" ng-mouseover="over(item)" ng-mouseleave="leave(item)" ng-click="click(item)" ng-repeat="item in list">
        <img class="listcellimg" src="" alt="">
        <div class="cellright">

          <div class="celrighttop">
            <p class="celltiles"><strong>{{item.title}}</strong></p>
            <p class="celldetial">{{item.detial}}</p>
          </div>

          <div class="celrightbottom">
            <img class="celluserimg" src="" alt="">
            <span class="cellname">{{item.username}}</span>
            <span class="celldate">{{item.date}}</span>
            <span class="celltime">{{item.time}}</span>

            <div class="functions" style="margin-left:79px;margin-top:2px;float:right;color:rgb(108, 108, 108)">

              <div style="float:right;cursor:pointer;" ng-click="func(0)">
                <span class="glyphicon glyphicon-thumbs-up"></span>
                <span>{{item.good}}</span>
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
          </div>
        </div>

        <div class="clearfix"></div>

        <div class="line3"></div>
      </div>
    </div>

    <div class="linkview">
      <div class="line2">

      </div>
    </div>
  </div>
</div>

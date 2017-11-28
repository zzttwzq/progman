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
    /*height: 900px;*/
    float: left;
    padding: 15px 15px;
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

  .leftinput{
    width: 49%;
    float: left;
    margin-right: 2%;
  }
  .rightinput{
    width: 49%;
    float: left;
  }
  .mybtn{
    float: right;
    margin-left: 10px;
  }
</style>

<div class="main animated fadeInRight">

  <h2 class="titles">随身笔记</h2>

  <div class="">
    <div class="listview">

      <!-- 标题和简介部分 -->
      <div class="group">
        <div class="input-group leftinput">
            <span class="input-group-addon">标题</span>
            <input type="text" class="form-control" placeholder="请输入文章标题(必须)" ng-model="title">
        </div>
        <div class="input-group rightinput">
            <span class="input-group-addon">简介</span>
            <input type="text" class="form-control" placeholder="请输入简介" ng-model="brief">
        </div>
      </div>

      <div class="clearfix"></div>
      <div class="" style="width:100%;height:10px;"></div>
      <!-- 标题和简介部分 -->

      <!-- 标签部分 -->
      <div class="group group ">
        <div class="input-group rightinput">
            <span class="input-group-addon">标签</span>
            <input type="text" class="form-control leftinput" placeholder="请选择文章标签" ng-model="tag">
        </div>
      </div>

      <div class="clearfix"></div>
      <div class="" style="width:100%;height:10px;"></div>
      <!-- 标签部分 -->

      <!-- 按钮部分 -->
      <div class="btnlist">
        <button type="button" class="btn btn-info" ng-click="string()">文字</button>
        <button type="button" class="btn btn-info" ng-click="subtitle()">副标题</button>
        <button type="button" class="btn btn-info" ng-click="code()">代码段</button>
        <button type="button" class="btn btn-info" ng-click="img()">插入图片</button>
      </div>

      <div class="clearfix"></div>
      <div class="" style="width:100%;height:10px;"></div>
      <!-- 按钮部分 -->

      <!-- 输入框部分 -->
      <textarea class="form-control" name="name" rows="20" cols="80" ng-model="text"></textarea>
      <div class="clearfix"></div>
      <div class="" style="width:100%;height:10px;"></div>
      <!-- 输入框部分 -->

      <!-- 保存部分 -->
      <div class="">
        <!-- 查看 -->
        <button type="button" class="btn btn-warning mybtn" ng-click="see()">预览</button>
        <!-- 保存 -->
        <button type="button" class="btn btn-success mybtn" ng-click="save()">保存文章</button>
        <!-- 返回 -->
        <button type="button" class="btn btn-default mybtn" ng-click="backtolist()">返回列表</button>
      </div>
      <div class="clearfix"></div>
      <div class="" style="width:100%;height:50px;"></div>
      <!-- 保存部分 -->
    </div>

    <div class="linkview">
      <div class="line2">

      </div>

    </div>
  </div>
</div>

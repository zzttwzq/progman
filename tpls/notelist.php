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
    width: 900px;
    height: 900px;
    float: left;
  }
  .td{
    text-align: center;
    margin-top: 10px;
  }
  .cell{
    cursor: pointer;
  }
</style>

<div class="main animated fadeInRight">

  <h2 class="titles">笔记管理</h2>

  <div class="">
    <div class="listview">

      <table class="table table-responsive table-hover table-bordered text-left">
        <thead>
          <tr>
            <th class="col-md-1 tdb">序号</th>
            <th class="col-md-4 tdb">文章标题</th>
            <th class="col-md-2 tdb">发布时间</th>
            <th class="col-md-1 tdb">浏览量</th>
            <th class="col-md-1 tdb">标签</th>
            <th class="col-md-2 tdb">操作</th>
          </tr>
        </thead>
        <tbody>
          <tr class="cell" ng-repeat="item in list" ng-click="see(item)">
            <td class="col-md-1 tdb"><p class="td">{{$index}}</p></td>
            <td class="col-md-4 tdb"><p class="td">{{item.title}}</p></td>
            <td class="col-md-2 tdb"><p class="td">{{item.datetime}}</p></td>
            <td class="col-md-1 tdb"><p class="td">{{item.star}}</td>
            <td class="col-md-1 tdb"><p class="td">{{item.tag}}</td>
            <td class="col-md-2">
              <button type="button" class="btn btn-default tablebtn1" ng-click="edit(item)"><span class="glyphicon glyphicon-pencil"></span>编辑</button>
              <button type="button" class="btn btn-default tablebtn2" ng-click="delete(item)"><span class="glyphicon glyphicon-remove-sign"></span>删除</button>
            </td>
          </tr>
        </tbody>
      </table>
    </div>
  </div>
</div>

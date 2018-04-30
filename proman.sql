-- MySQL dump 10.13  Distrib 5.7.11, for osx10.9 (x86_64)
--
-- Host: localhost    Database: PROGMAN
-- ------------------------------------------------------
-- Server version	5.7.11

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `DATE`
--

DROP TABLE IF EXISTS `DATE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DATE` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `datetime` varchar(8) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `datetime` (`datetime`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DATE`
--

LOCK TABLES `DATE` WRITE;
/*!40000 ALTER TABLE `DATE` DISABLE KEYS */;
INSERT INTO `DATE` VALUES (1,'2017125',5);
/*!40000 ALTER TABLE `DATE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LOGIN`
--

DROP TABLE IF EXISTS `LOGIN`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LOGIN` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(15) DEFAULT NULL,
  `username` varchar(15) DEFAULT NULL,
  `password` varchar(15) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `mobile` varchar(11) DEFAULT NULL,
  `cent` int(11) DEFAULT NULL,
  `token` varchar(40) DEFAULT NULL,
  `lastlogin` varchar(20) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `usrimg` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LOGIN`
--

LOCK TABLES `LOGIN` WRITE;
/*!40000 ALTER TABLE `LOGIN` DISABLE KEYS */;
INSERT INTO `LOGIN` VALUES (1,'吴志强','wu','111',27,'13023628319',100,'','2017-9-14 7:41',1,'http://114.67.71.172/progman/imgs/logo.jpg'),(2,'','','',0,'',100,'a00b8a3edd1d1d6e322303fe9d44f608','18-04-25 02:31:21',1,'http://114.67.71.172/progman/imgs/logo.jpg'),(4,'aaa','aaa','111',0,'',100,'d00d6b637379b441ac6c4d31b4ee7aeb','18-04-26 03:17:42',1,'http://114.67.71.172/progman/imgs/logo.jpg'),(8,'123','123','1313',0,'',100,'2482d75329e177a01874d36290a92fc6','18-04-30 03:18:39',1,'http://114.67.71.172/progman/imgs/logo.jpg');
/*!40000 ALTER TABLE `LOGIN` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PROJECT`
--

DROP TABLE IF EXISTS `PROJECT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PROJECT` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `tag` varchar(30) DEFAULT NULL,
  `lastItem` varchar(100) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `linkLearnID` int(11) DEFAULT NULL,
  `listArray` varchar(1000) DEFAULT NULL,
  `img` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PROJECT`
--

LOCK TABLES `PROJECT` WRITE;
/*!40000 ALTER TABLE `PROJECT` DISABLE KEYS */;
INSERT INTO `PROJECT` VALUES (37,'学习unity3d','html','各个板块的功能','2018-04-30 12:07:15',0,'[{\"title\":\"unity编辑器熟悉\",\"timer\":\"5m\",\"subitems\":[{\"title\":\"各个板块的功能\",\"timer\":\"5m\",\"subitems\":[],\"isfinished\":false,\"finishlabel\":\"完成\",\"$$hashKey\":\"object:17\"}],\"isfinished\":true,\"finishlabel\":\"已完成\",\"$$hashKey\":\"object:15\"},{\"title\":\"3\",\"timer\":\"5m\",\"subitems\":[{\"title\":\"4\",\"timer\":\"5m\",\"subitems\":[],\"isfinished\":false,\"finishlabel\":\"完成\",\"$$hashKey\":\"object:21\"}],\"isfinished\":true,\"finishlabel\":\"已完成\",\"$$hashKey\":\"object:19\"}]',NULL);
/*!40000 ALTER TABLE `PROJECT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TASK`
--

DROP TABLE IF EXISTS `TASK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TASK` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(30) DEFAULT NULL,
  `brief` varchar(100) DEFAULT NULL,
  `text` varchar(20000) DEFAULT NULL,
  `datetime` datetime DEFAULT NULL,
  `share` int(11) DEFAULT NULL,
  `comment` int(11) DEFAULT NULL,
  `star` int(11) DEFAULT NULL,
  `tag` varchar(30) DEFAULT NULL,
  `category` varchar(10) DEFAULT NULL,
  `usrid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TASK`
--

LOCK TABLES `TASK` WRITE;
/*!40000 ALTER TABLE `TASK` DISABLE KEYS */;
INSERT INTO `TASK` VALUES (6,'swift学习（1）','swift学习（1）','[subtitle] swift学习（1）[end]\n\n[string]1.变量和常量：  [end]\n[code]\n  \n 变量用var ：\n  var a = 1;\n  var b = 3;\n\n 常量用let：\n let a = 10;\n let b = a;\n\n var str: String?\n>问号代表可选变量\n\n>定义变量时，如果指定该变量是可选的，表示该变量可以有一个指定类型的值，也可以是 nil。\n\n>此外，Swift的nil也和Objective-C有些不一样，在Objective-C中，只有对象才能为nil，而在Swift里，当基础类型（整形、浮点、布尔等）没有值时，也是nil，而不是一个初始值，没有初始值的值，是不能使用的，这就产生了Optional类型。\n\n>一个Optional值和非Optional值的区别就在于：Optional值未经初始化虽然为nil，但普通变量连nil都没有：\n[end]\n\n[string]1.类型：  [end]\n[code]\n var s:String=\"world\";\n var i:Int=10;\n var str = \"asfdasdf\";\n var str:String = \"asdf\";\n[end]\n\n[string]1.字符串的连接：  [end]\n[code]\n  1.通过+号连接；\n  2.str = “(str),asdfasdf,asdfasdf(i)”;\n[end]\n\n[string]1.创建数组:中括号直接写类型，不用转换 [end]\n[code]\nvar arr1 = [];\nvar arr2 = [\'string\',100,10.9];\n [end]\n\n[string]1.创建字典: [end]\n[code]\n格式\nvar dict1 = [“key”:”value”,…];\ndict1[‘sex’] =“sadfasdf”;\n\n [end]\n\n\n[string]循环: [end]\n[code]\nvar arr = String[]();\n\nfor index in 0..100{\n\n}\n\nfor value in arr{\n\n}\n\nvar dict = [‘name’:”asdfasdf”,”age”:”16”];\nfor (key, value) in dict{\n\n}\n [end]\n\n[string]流程控制: [end]\n[code]\n	for index in 0..100{\n		if index%2 == 0{\n\n		}\n	}\n\n [end]','2018-03-05 14:06:54',0,0,0,'ios','ios',NULL),(7,'swift学习（2）','swift学习（2）','[subtitle] swift学习（2） [end]\n[subtitle] swift学习（2）swift中可选值?和!使用的方法示例 [end]\n[string]Optional 可选值 [end]\n[string]Optional是 Swift 的一大特色，也是 Swift 初学者最容易困惑的问题。 [end]\n[string]定义变量时，如果指定该变量是可选的，表示该变量可以有一个指定类型的值，也可以是 nil。 [end]\n[string]此外，Swift的nil也和Objective-C有些不一样，在Objective-C中，只有对象才能为nil，而在Swift里，当基础类型（整形、浮点、布尔等）没有值时，也是nil，而不是一个初始值，没有初始值的值，是不能使用的，这就产生了Optional类型。定义一个Optional的值很容易，只需要在类型后面加上问号(?)就行了，如： [end]\n\n [code]\nvar str: String?\n [end]\n\n[string]一个Optional值和非Optional值的区别就在于：Optional值未经初始化虽然为nil，但普通变量连nil都没有：[end]\n\n [code]\n//未被初始化，但是是一个Optional类型，为nil\nvar str: String?\nstr //输出nil\n//未被初始化，也不是Optional类型\nvar str2: String\nstr2  //使用时出错\n [end]\n\n[subtitle]关于可选值 ！和 ？ 使用 [end]\n[string]\nclass House {\n //房子有几个房间\n var numRooms:Int = 5\n}\n \nclass Person {\n //一个人可能有房子也可能没有房子，所以将房子的属性设为可选\n var house: House?\n}\n \nlet xiaowang = Person()\n//此时xiaowang没有房子\n//如果试图调用xiaowang的house属性，访问house的numRooms属性。过程如下：\n//1. 第一种方式: 将house强行解包，用 ！。但此时 house 没有值，所以结果是直接崩溃的。\nlet numroom = xiaowang.house!.numRooms\n \n//2. 用 if let\nif let house = xiaowang.house {\n let roomCount = house.numRooms\n}\n \n//3. 用 ？\nif let numRooms = xiaowang.house?.numRooms {\n let numroom = numRooms\n}\n[end]\n\n[string]\n现在问题来了\n[end]\n[string]\nhouse后面怎么可以直接接问号呢？不是接了问号编译器就知道它是否有值会报错吗？\n[ed]\n[string]\nhouse的numRooms属性不是必选属性吗? 为什么用if let来做可选绑定了呢？\n[ed]\n[string]\n这个涉及到一个新的知识，叫可空链式调用。\n可空链式调用。是指当调用可选一个对象的属性或方法时，可以直接使用问号，此时，不管它的属性是否可选。最终都返回一个该可选值。\n[end]\n\n[subtitle] 可空链式调用 [end]\n[string]\n可空链式调用。是指当调用一个 可选对象 的属性和方法时。可以先不对该可选对象强行解包。直接使用？此时 可选 这个特征，一直往后传递到 最后要调用的属性和方法，最后返回一个可选的值的过程。\n还举上面的例子。\n[end]\n[code]\nif let numRooms = xiaowang.house?.numRooms {\n let numroom = numRooms\n}\n[end]\n\n[string]\n此时调用的是可选对象 house 的 numRooms属性。满足条件：\n1. house是可选对象\n2. 调用可选对象 house 的属性 numRooms\n3. 此时不用给可选对象 house 强行解包\n4. 可选这个特征，传递给了 numRooms\n5. 所以，返回一个numRooms 的可选值。\n[end]\n[code]\nclass Room {\n //房间有四个窗子\n var numWindows:Int = 4\n}\n \nclass House {\n //房子有几个房间\n var room: Room?\n}\n \nclass Person {\n //一个人可能有房子也可能没有房子，所以将房子的属性设为可选\n var house: House?\n}\n \nlet windows = Person().house?.room?.numWindows\n \nif let w = windows {\n //windows是可选值\n}\n[end]\n[string]\n1. 访问了一个 可选对象 house的属性Room\n2. 那么 house 不用强行解包，不用管Room之前是否可选，此时可选的特征传给了Room，那么Room也变成了可选。\n3. 再访问可选对象 Room 的 numWindows属性，此时可选特征传递给 numWindows。\n4. 返回一个可选的 numWindows. 此时 windows 是可选的。\n[end]\n\n[subtitle] 再说说调用可选对象的方法[end]\n[string]\n调方法的原理是一样的。\n先说方法。在swift中任何方法都有返回值。没有返回值，只是说它返回了Void。Void也是一个返回值。\n如果调用可选对象的某个方法。则可选对象的 可选特征 会自动传递给该方法的返回值。\n[end]\n\n[code]\nclass Room {\n //房间有四个窗子\n var numWindows:Int = 4\n \n func closeWindow() {\n print(\"关窗\")\n }\n}\n \nclass House {\n //房子有几个房间\n var room: Room?\n \n func closeDoor() {\n print(\"关门\")\n }\n}\n \nclass Person {\n //一个人可能有房子也可能没有房子，所以将房子的属性设为可选\n var house: House?\n}\n \nlet person = Person()\n//下面这一句，house 的可选特征，传给了 closeDoor() 的返回值 Void， 所以实际上返回的是一个 可选的Void类型\nperson.house?.closeDoor()\n \n//所以，判断方法是否存在，可以判断是否为 nil\nif person.house?.closeDoor() != nil {\n //closeDoor关门的方法调用成功了\n} \n \nif person.house?.room?.closeWindow() != nil {\n //closeWindow 关窗的方法调用成功了\n}\n[end]\n\n[string]\n如果你不关心是否调用成功，则判断是否为nil那一步不是必须的\n最后做个总结\n1. 访问可选对象的属性或方法时，可以用 ？ 号\n2. 访问可选对象的属性时，从 ？后面都变可选了，返回的一定是一个可选值。\n3. 访问可选对象的方法时。判断是否为 nil 来确认方法是否并调用成功。\n[end]\n\n[string]来看项目当中的栗子[end]\n[code]\n//先看调用属性\nclass PersonCell: UITableViewCell {\n \n var person: Person? {\n didSet {\n  //此两处，person是可选的。访问person的属性用？，返回的是一个可选的 name\n  textLabel?.text = person?.name\n  detailTextLabel?.text = person?.phone\n }\n }\n \n override init(style: UITableViewCellStyle, reuseIdentifier: String?) {\n super.init(style: .Subtitle, reuseIdentifier: reuseIdentifier)\n \n accessoryType = .DisclosureIndicator\n }\n \n required init?(coder aDecoder: NSCoder) {\n fatalError(\"init(coder:) has not been implemented\")\n }\n}\n \n//再看调方法\n func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {\n let detailVC = DetailViewController()\n \n detailVC.person = persons[indexPath.row]\n detailVC.finishedCallBack = {\n  self.tableView.reloadRowsAtIndexPaths([indexPath], withRowAnimation: .Top)\n }\n \n//此处， navigationController是一个可选属性，则 pushViewController 方法返回一个可选的Void。navigationController?.pushViewController(detailVC, animated: true)\n }\n \n //要想判断 pushViewController 是否成功，可以做下面的活\n if navigationController?.pushViewController(detailVC, animated: true) != nil {\n //推成功了\n}\n[end]','2018-03-05 14:40:59',0,0,0,'ios','ios',NULL),(9,'swift学习修饰的说明','swift 中关于open ,public ,fileprivate,private ,internal,修饰的说明','[subtitle] swift学习（3）swift 中关于open ,public ,fileprivate,private ,internal,修饰的说明 [end]\n[string]\n关于 swift 中的open ,public ,fileprivate,private, internal的区别 以下按照修饰关键字的访问约束范围 从约束的限定范围大到小的排序进行说明\n[end]\n\n[string]\nopen,public,fileprivate,private,internal 这几个修饰词的作用是用于修饰访问级别的。\n[end]\n\n[string]\nopen,public 对应的级别是该模块或者是引用了该模块的模块可以访问 即 a belong to A , B import A 这两种情况都可以对 a进行访问\n[end]\n\n[string]\n>public： 类用public(或级别更加等级更低的约束(如private等))修饰后只能在本模块（sdk）中被继承，如果public是修饰属性的话也是只能够被这个module(sdk)中的子类重写\n[end]\n\n[string]\n>open：用open修饰的类可以在本模块(sdk),或者其他引入本模块的(sdk,module)继承，如果是修饰属性的话可以被此模块或引入了此某块(sdk)的模块（sdk）所重写\n[end]\n\n[string]\n>internal 是在模块内部可以访问，在模块外部不可以访问，a belong A , B import A, A 可以访问 a, B 不可以访问a.比如你写了一个sdk。那么这个sdk中有些东西你是不希望外界去访问他，这时候你就需要internal这个关键字（我在导入第三方框架时发现其实没有定义的话sdk里面是默认internal的）\n[end]\n\n[string]\n>fileprivate 这个修饰跟名字的含义很像，file private 就是文件之间是private的关系，也就是在同一个source文件中还是可以访问的，但是在其他文件中就不可以访问了  a belong to file A, a not belong to file B , 在 file A 中 可以访问 a，在 file B不可以访问a\n[end]\n\n[string]\n>private 这个修饰约束性比fileprivate的约束性更大，private 作用于某个类，也就是说，对于 class A ,如果属性a是private的，那么除了A外其他地方都不能访问了(fileprivate 和private都是一种对某个类的限制性约束。fileprivate的适用场景可以是某个文件下的extension，如果你的类中的变量定义成了private那么这个变量在你这个类在这个类的文件的拓展中就无法访问了，这时就需要定义为fileprivate)\n[end]','2018-03-05 14:52:50',0,0,0,'ios','ios',NULL),(10,'java tomcat 安装','tomcat 安装','[subtitle]tomcat 服务器安装 [end]\n[code]\n//安装jdk\nyum install java-1.8.0-openjdk\n\n//安装tomcat\nwget http://mirrors.hust.edu.cn/apache/tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz\ntar -vxf apache-tomcat-8.0.50.tar.gz\ncd /apache-tomcat-8.0.50.tar.gz/bin\n./catalina.sh start\n\n//搞定 修改管理app的用户名和权限\ncd ../conf/tomcat-users.xml\n\n添加以下代码\n<role rolename=\"manager-gui\"/>\n<user username=\"admin\" password=\"111\" roles=\"manager-gui\"/>\n<role rolename=\"admin-gui\"/>\n<user username=\"admin\" password=\"111\" roles=\"admin-gui\"/>\n\n [end]','2018-04-08 22:26:36',0,0,0,'java','java',NULL),(13,'搭建LAMP环境','阿里云Centos7以上版本搭建Apache+PHP+Mysql+PhpMyAdmin环境','[subtitle] 阿里云Centos7以上版本搭建Apache+PHP+Mysql+PhpMyAdmin环境[end]\n[string]安装apache [end]\n[code] yum -y install httpd[end]\n[string] [end]\n[string]安装php [end]\n[code]yum -y install php [end]\n[string] [end]\n[string]安装php-fpm [end]\n[code]yum -y install php-fpm [end]\n[string] [end]\n[string]安装mysql [end]\n[code]\nyum -y install mysql \nyum install -y mariadb\n[end]\n[subtitle]安装扩展 [end]\n[string]安装php-mysql [end]\n[string] yum -y install php-mysql[end]\n[string]PHP 其他扩展 [end]\n[code]yum -y install php-gd php-xml php-mbstring php-ldap php-pear php-xmlrpc php-devel [end]\n[string] [end]\n[string]安装Apache扩展包 [end]\n[code] yum -y install httpd-manual mod_ssl mod_perl mod_auth_mysql[end]\n[string] [end]\n[string]安装Mysql扩展包 [end]\n[code]yum -y install mysql-connector-odbc mysql-devel libdbi-dbd-mysql [end]\n[subtitle]启动 [end]\n[string]Apache服务的启动暂停，开机启动 [end]\n[code]\nsystemctl start httpd.service #启动apache\n\nsystemctl stop httpd.service #停止apache\n\nsystemctl restart httpd.service #重启apache\n\nsystemctl enable httpd.service #设置apache开机启动\n [end]\n[string] [end]\n[string]mysql服务的启动暂停，开机启动 [end]\n[code]\nsystemctl start mariadb.service #启动mysql\n\nsystemctl stop mariadb.service #停止mysql\n\nsystemctl restart mariadb.service #重启mysql\n\nsystemctl enable mariadb.service #设置mysql开机启动\n [end]\n[string] [end]\n[string]php-fpm服务的启动暂停，开机启动 [end]\n[code]\nsystemctl start php-fpm #启动php-fpm\n\nsystemctl stop php-fpm #停止php-fpm\n\nsystemctl restart php-fpm #重启php-fpm\n\nsystemctl enable php-fpm #设置php-fpm开机启动\n [end]\n[subtitle]mysql初始化配置 [end]\n[code] mysql_secure_installation 根据提示设置密码和其他的功能。 [end]\n[subtitle]防火墙配置 [end]\n[code]systemctl stop firewalld.service 关闭防火墙 [end]\n[string]开放端口 [end]\n[code]\niptables -A INPUT -p tcp --dport 22 -j ACCEPT  \n\niptables -A OUTPUT -p tcp --sport 22 -j ACCEPT  \n\niptables\n -A INPUT -p tcp --dport 80 -m state --state NEW,ESTABLISHED -j ACCEPT   \niptables -A OUTPUT -p tcp --sport 80 -m state --state NEW,ESTABLISHED -j ACCEPT\n [end]\n[string] [end]\n[string]安装PhpMyAdmin [end]\n[code]yum install phpmyadmin php-mcrypt [end]','2018-04-09 11:39:20',0,0,0,'linux','linux',NULL),(14,'vue+webpack+vue-router(1)','vue+webpack+vue-router','[subtitle] asdfasdfasdfasdfasdfasdf [end]','2018-04-16 11:54:46',0,0,0,'vue','vue',NULL),(16,'linux下mysql数据导入导出','linux下mysql数据导入导出','[subtitle] linux下mysql数据导入导出[end]\n[string]数据导入 [end]\n[code]\n1、导出数据和表结构：\nmysqldump -u用户名 -p密码 数据库名 > 数据库名.sql\n2、只导出表结构\nmysqldump -u用户名 -p密码 -d 数据库名 > 数据库名.sql\n[end]\n[string]数据导入 [end]\n[code]mysql -u用户名 -p密码 数据库名 < 数据库名.sql [end]','2018-04-17 22:22:31',0,0,0,'mysql','mysql',NULL),(17,'swift学习（3）','swift 中关于open ,public ,fileprivate,private ,internal,修饰的说明','[subtitle] swift学习（3）swift 中关于open ,public ,fileprivate,private ,internal,修饰的说明 [end]\n[string]\n关于 swift 中的open ,public ,fileprivate,private, internal的区别 以下按照修饰关键字的访问约束范围 从约束的限定范围大到小的排序进行说明\n[end]\n\n[string]\nopen,public,fileprivate,private,internal 这几个修饰词的作用是用于修饰访问级别的。\n[end]\n\n[string]\nopen,public 对应的级别是该模块或者是引用了该模块的模块可以访问 即 a belong to A , B import A 这两种情况都可以对 a进行访问\n[end]\n\n[string]\n>public： 类用public(或级别更加等级更低的约束(如private等))修饰后只能在本模块（sdk）中被继承，如果public是修饰属性的话也是只能够被这个module(sdk)中的子类重写\n[end]\n\n[string]\n>open：用open修饰的类可以在本模块(sdk),或者其他引入本模块的(sdk,module)继承，如果是修饰属性的话可以被此模块或引入了此某块(sdk)的模块（sdk）所重写\n[end]\n\n[string]\n>internal 是在模块内部可以访问，在模块外部不可以访问，a belong A , B import A, A 可以访问 a, B 不可以访问a.比如你写了一个sdk。那么这个sdk中有些东西你是不希望外界去访问他，这时候你就需要internal这个关键字（我在导入第三方框架时发现其实没有定义的话sdk里面是默认internal的）\n[end]\n\n[string]\n>fileprivate 这个修饰跟名字的含义很像，file private 就是文件之间是private的关系，也就是在同一个source文件中还是可以访问的，但是在其他文件中就不可以访问了  a belong to file A, a not belong to file B , 在 file A 中 可以访问 a，在 file B不可以访问a\n[end]\n\n[string]\n>private 这个修饰约束性比fileprivate的约束性更大，private 作用于某个类，也就是说，对于 class A ,如果属性a是private的，那么除了A外其他地方都不能访问了(fileprivate 和private都是一种对某个类的限制性约束。fileprivate的适用场景可以是某个文件下的extension，如果你的类中的变量定义成了private那么这个变量在你这个类在这个类的文件的拓展中就无法访问了，这时就需要定义为fileprivate)\n[end]','2018-04-18 14:00:54',0,0,0,'ios','swift',NULL),(18,'swift学习（4）','函数','[subtitle] swift学习（4）[end]\n[string]函数[end]\n[code]\n	func sayHello(name:String, age:Int){\n		NSLog(“%@”,name);\n	}\n\n	sayHello(name:”asdfafds”,age:10);\n[end]\n\n[string]返回值[end]\n[code]\n	func sayHello(name:String, age:Int) ->(String,Int){\n		return (name,age);\n	}\n	let (a,b) = sayHello(name:”asdfafds”,age:10);\n	NSLog(a);\n[end]','2018-04-18 15:11:45',0,0,0,'ios','swift',NULL),(19,'swift面向对象（5）','创建对象','[subtitle] swift面向对象（4）[end]\n[string]创建对象[end]\n[code]\nclass person {\n	\n	say(){\n		NSLog(“person”);\n	}\n}\n\nvar p = person();\np.say();\n[end]\n\n\n[string]继承[end]\n[code]\nclass person {\n\n    func say(){\n        NSLog(\"person\");\n    }\n}\n\nclass zhongshan:person {\n\n    var name:String;\n\n    init(name:String){\n        self.name = name;\n    }\n\n    override func say(){\n        NSLog(\"(name) say hi\");\n    }\n}\n\n[end]','2018-04-18 15:12:23',0,0,0,'ios','swift',NULL),(20,'搭建流媒体服务器','CentOS搭建nginx与nginx-rtmp-module搭建流媒体服务器','[subtitle]1、下载nginx-rtmp-module： [end]\n[string] nginx-rtmp-module的官方github地址：https://github.com/arut/nginx-rtmp-module[end]\n[code]git clone https://github.com/arut/nginx-rtmp-module.git [end]\n[subtitle]2、安装nginx： [end]\n[string]nginx的官方网站为：http://nginx.org/en/download.html [end]\n[code]\nyum -y install openssl openssl-devel gcc gcc-c++\nwget http://nginx.org/download/nginx-1.8.1.tar.gz \ntar -zxvf nginx-1.8.1.tar.gz \ncd nginx-1.8.1 \n./configure --prefix=/usr/local/nginx  --add-module=../nginx-rtmp-module  --with-http_ssl_module   \nmake && make install\n [end]\n[subtitle] 3、修改nginx配置文件：[end]\n[code]vi /usr/local/nginx/conf/nginx.conf [end]\n[code]\nrtmp {   \n     \n    server {   \n     \n        listen 1935;  #监听的端口 \n     \n        chunk_size 4000;   \n           \n            \n        application hls {  #rtmp推流请求路径 \n            live on;   \n            hls on;   \n            hls_path /usr/share/nginx/html/hls;   \n            hls_fragment 5s;   \n        }   \n    }   \n} \n [end]\n[subtitle]播放和推流 [end]\n[string]播放 [end]\n[code] http://xxx/hls/test.m3u8 [end]\n[string]推流 [end]\n[code]rtmp://114.67.71.172:1935/hls/test[end]','2018-04-25 08:50:05',0,0,0,'linux','linux',NULL),(22,'CentOS解决服务器存在大量time_wait的问题','CentOS解决服务器存在大量time_wait的问题','[subtitle]CentOS解决服务器存在大量time_wait的问题 [end]\n[code]\nvi /etc/sysctl.conf \n\n#对于一个新建连接，内核要发送多少个 SYN 连接请求才决定放弃,不应该大于255，默认值是5，对应于180秒左右时间  \nnet.ipv4.tcp_syn_retries=2  \n#net.ipv4.tcp_synack_retries=2  \n  \n  \n#表示当keepalive起用的时候，TCP发送keepalive消息的频度。缺省是2小时，改为300秒  \nnet.ipv4.tcp_keepalive_time=1200  \nnet.ipv4.tcp_orphan_retries=3  \n  \n  \n#表示SYN队列的长度，默认为1024，加大队列长度为8192，可以容纳更多等待连接的网络连接数。  \nnet.ipv4.tcp_max_syn_backlog = 4096  \n  \n  \n#表示开启SYN Cookies。当出现SYN等待队列溢出时，启用cookies来处理，可防范少量SYN攻击。默认为0，表示关闭  \nnet.ipv4.tcp_syncookies = 1  \n#表示开启重用tcp连接。允许将TIME-WAIT sockets重新用于新的TCP连接。默认为0，表示关闭  \nnet.ipv4.tcp_tw_reuse = 1  \n#表示开启TCP连接中TIME-WAIT sockets的快速回收。默认为0，表示关闭  \nnet.ipv4.tcp_tw_recycle = 1  \n#表示如果套接字由本端要求关闭，这个参数决定了它保持在FIN-WAIT-2状态的时间  \nnet.ipv4.tcp_fin_timeout = 30  \n  \n  \n##减少超时前的探测次数  \nnet.ipv4.tcp_keepalive_probes=5  \n##优化网络设备接收队列  \nnet.core.netdev_max_backlog=3000  \n [end]\n[subtitle]让参数配置生效 [end]\n[code]/sbin/sysctl -p   [end]','2018-04-25 09:36:21',0,0,0,'linux','linux',NULL),(23,'centos系统安装图形化界面','centos系统安装图形化界面','[subtitle]centos系统安装图形化界面 [end]\n[code]\nyum -y groupinstall \"X Window System\" \"Fonts\" \"Desktop\"\nyum groupinstall \"GNOME Desktop\" \"Graphical Administration Tools\"\nln -sf /lib/systemd/system/runlevel5.target /etc/systemd/system/default.target \nstartx\n[end]','2018-04-25 15:07:57',0,0,0,'linux','linux',NULL);
/*!40000 ALTER TABLE `TASK` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-30 15:37:08

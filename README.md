# HotelDish
# 一个简易的酒店点餐系统

* 这是一个酒店点餐系统，旨在服务于酒店员工，而非顾客。
使用本网页点餐系统有登陆页面开始，正确输入输入工号和密码即可进入。输入错误的密码或者不存在的账号，会有提示信息。鼠标移到登录按钮的地方，按钮会根据js代码改变颜色。
* 使用人员有三种，服务员，厨师，经理。

### 服务员
* 首页的标题栏会有万豪酒店的名字以及logo，点击logo图标会重新刷新到首页，导航栏会自动查询数据库并显示登录人的名字。可以点击退出按钮重新登录。
* 菜品大全，服务生可以根据菜的不同种类，输入餐桌号码，根据图片或者名字选择菜品，以及右边的数量，点击确认按钮，下单。
* 点餐管理，已上菜操作可以查询已经上菜，顾客用餐完成和但是并未结账的菜品，点结账按钮，可以将同一餐桌的菜品合计在一起，显示总价，然后点击“结账完成”去完成结账。已结账操作可以显示当前已经结账的订单。
* 个人账户，修改资料操作：服务员可以修改 除了工号和岗位之外 的信息，修改后点击提交即可完成修改。更改密码操作：需要输入正确的旧密码和两次相同的新密码，都输入正确后会完成修改，否则会提示错误信息。

### 厨师
* 菜单大全，页面和服务员相似，但是没有桌号和菜品数量以及下单按钮，这个操作只是可以给出书查看正在供选择的菜品有多少。
点餐管理
* 点菜未做：厨师可以查看前台服务员点击完成但是未做的菜品，厨师根据菜品做好后可以点击上菜操作，或者后厨材料不足点击删除按钮并通知服务员重新下单
* 已结账：查看已经完成的订单。
* 个人账户：和服务员类似。

### 经理
* 拥有服务员和厨师的全部功能，增加了 菜品管理和 员工管理操作。
* 菜品管理
	- 增加菜品：输入菜品相关信息，点击提交，完成菜品增加。
	- 菜品操作：可以对已存在菜品进行修改和删除。
* 员工管理
	- 增加员工：输入员工相关信息，点击提交，完成增加员工。
	- 查看员工：可以进行修改和删除员工操作。
	- 查询员工，可以根据姓名或者岗位进行员工查看。下方显示查询结果。

### 开发技术
* 数据库mysql,服务器tomcat8.0
* 开发环境eclipse，java语言，
* 前台页面的，JavaScript，Jquery，使用到了bootstrap

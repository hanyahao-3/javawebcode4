<%--
  Created by IntelliJ IDEA.
  User: 23240
  Date: 2020/11/15
  Time: 12:59
  To change this template use File | Settings | File Templates.
--%>
<%@page language="java" contentType="text/html; character = UTF-8" pageEncoding="utf-8" %>
<%@include file="/common/taglibs.jsp" %>
<html>
<head>
    <title>我的旅行</title>
    <script src="${ctx}/res/other/jquery/jquery-3.5.1.min.js" type="text/javascript"></script>
    <link href="${ctx}/res/other/bootstrap/bootstrap.min.css" rel="stylesheet">
    <script src="${ctx}/res/other/bootstrap/bootstrap.min.js" type="text/javascript"></script>
    <script src="${ctx}/res/other/bootstrap/bootstrap.bundle.min.js" type="text/javascript"></script>
    <script src="${ctx}/res/js/index.js" type="text/javascript"></script>
    <link href="${ctx}/res/css/index.css" type="text/css" rel="stylesheet">
    <link href="${ctx}/res/css/personal.css" rel="stylesheet">
</head>
<body>
<%@include file="/common/utop.jsp" %>
<div class="menu">
    <div class="menu-content">
        <ul>
            <li><a href="${ctx}/uIndex">首页</a></li>
            <li><a href="${ctx}/queryTickets">火车票</a></li>
            <li><a href="${ctx}/queryHotel">酒店</a></li>
            <li><a href="${ctx}/queryTrategy">景点预订</a></li>
            <li class="check-on"><a href="${ctx}/queryPersonal">我的旅行</a></li>
        </ul>
    </div>
</div>

<div class="per-mid-h">
    <span>当前位置：</span><a href="${ctx}/login/uIndex" class="c_66">首页</a>
    >
    <a href="${ctx}/personal/personalCenter" class="c_66">个人中心</a>
</div>
<div class="per-mid-m">
    <div class="per-mid-m-l">
        <div class="per-menu">
            <ul>
                <li>
                    <span><a href="#">个人中心</a> </span>
                </li>
                <li>
                    <span>个人信息<i class="icon"></i></span>
                    <dl>
                        <dt><a href="${ctx}/personal/basicMessage" target="displayArea">查看个人信息</a></dt>
                        <dt><a href="#" target="displayArea">账号安全</a></dt>
                        <dt><a href="#" target="displayArea">手机核验</a></dt>
                        <dt><a href="#" target="displayArea">账号注销</a></dt>
                    </dl>
                </li>
                <li>
                    <span>订单中心<i class="icon"></i></span>
                    <dl>
                        <dt><a href="${ctx}/personal/orders" target="displayArea">火车票订单</a></dt>
                        <dt><a href="#" target="displayArea">酒店预订</a></dt>
                        <dt><a href="${ctx}/personal/scenicOrdersMessage"  target="displayArea">景点预订</a></dt>
                    </dl>
                </li>
                <li>
                    <span>常用信息管理<i class="icon"></i></span>
                    <dl>
                        <dt><a href="#" target="displayArea">乘车人</a></dt>
                        <dt><a href="#" target="displayArea">地址管理</a></dt>
                    </dl>
                </li>
                <li>
                    <span>温馨服务<i class="icon"></i></span>
                    <dl>
                        <dt><a href="#" target="displayArea">遗失物品查找</a></dt>
                    </dl>
                </li>
                <li>
                    <span>投诉和建议<i class="icon"></i></span>
                    <dl>
                        <dt><a href="" target="displayArea">投诉</a></dt>
                        <dt><a href="" target="displayArea">建议</a></dt>
                    </dl>
                </li>
            </ul>
        </div>
    </div>
    <div class="per-mid-m-r">
        <iframe src="${ctx}/personal/welcome" name="displayArea" width="100%" height="100%" scrolling="yes" id="dispalyArea" frameborder="0">
<%--            <h2>下午好：${userName}</h2>--%>
        </iframe>
    </div>
</div>

<script>
    $(function () {

        $(".per-menu ul li").find("dl").slideToggle(0);
        $(".per-menu ul li").click(function () {
            // $(this).find("dl").slideToggle(200);
            $(this).find("span i").toggleClass('action').parents().siblings().find("span i").removeClass('action');
        })
        $(".per-menu ul li span").click(function () {
            $(this).parent().find("dl").slideToggle(200);
        })
    })
</script>
</body>
</html>

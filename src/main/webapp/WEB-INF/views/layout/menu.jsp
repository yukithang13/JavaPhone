<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>

<!--  
<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<a href="/home/index">
				<s:message code="lyt.menu.home"/>
			</a>
		</div>
		<ul class="nav navbar-nav">
			<li><a href="/home/about"><s:message code="lyt.menu.about"/></a></li>
			<li><a href="/home/contact"><s:message code="lyt.menu.contact"/></a></li>
			<li><a href="/home/feedback"><s:message code="lyt.menu.feedback"/></a></li>
			<li><a href="/home/faq"><s:message code="lyt.menu.faqs"/></a></li>
			<li class="dropdown">
				<a class="dropdown-toggle" data-toggle="dropdown" href="#"><s:message code="lyt.menu.account"/> <span class="caret"></span></a>
				<c:choose>
					<c:when test="${empty sessionScope.user }">
						<ul class="dropdown-menu">
							<li><a href="/account/login">Đăng nhập</a></li>
							<li><a href="/account/register">Đăng ký</a></li>
							<li><a href="/account/forgot">Quên mật khẩu</a></li>
						</ul>
					</c:when>
					<c:otherwise>
						<ul class="dropdown-menu">
							<li><a href="/account/logout">Đăng xuất</a></li>
							<li><a href="/account/change">Đổi mật khẩu</a></li>
							<li><a href="/account/edit">Cấp quyền</a></li>
							<li><a href="/order/list">Đặt hàng</a></li>
							<li><a href="/order/items">Goods purchases</a></li>
						</ul>
					</c:otherwise>
				</c:choose>
			</li>
		</ul>
		<ul class="nav navbar-nav navbar-right">
			<li><a href="#" data-lang="vi">Tiếng Việt</a></li>
			<li><a href="#" data-lang="en">English</a></li>
		</ul>
	</div>
</nav>


<script>
	$(function(){
		$("a[data-lang]").click(function(){
			var lang = $(this).attr("data-lang");
			$.ajax({
				url:"/home/language?lang="+lang,
				success:function(){
					location.reload();
				}	
			});
			return false;
		})
	)};
</script>
-->
<style>
.nav-item {
	width: 130px;
	text-align: center;
	font-weight: bold;
	color: white;
}

.nav-item:hover {
	background-color: #336666;
}

.nav-link:hover {
	background-color: #336666;
}
</style>
<nav class="navbar navbar-expand-sm navbar-dark"
	style="margin-top: -20px; background-color: #111111">
	<div class="container-fluid"
		style="height: 30px; ">
		<ul  style="margin-right: 450px">
			<li
				style="width: 280px; font-size: 18px; ">
				<a class="nav-link" style="cursor: pointer; font-weight: bold; color: white;" data-toggle="collapse" > 
				<i class="fa fa-navicon"></i>&nbsp;&nbsp; <span class="danh_muc">DANH MỤC SẢN PHẨM</span>
			</a>
			</li>
			<li class="nav-item" style="margin-left: 12px"><a
				class="nav-link" style="color: white;" href="/">TRANG
					CHỦ</a></li>

			<li class="nav-item"><a class="nav-link" style="color: white;"
				href="/about">GIỚI THIỆU</a></li>
			<li class="nav-item"><a class="nav-link" style="color: white;"
				href="/contact">LIÊN HỆ</a></li>
			<li class="nav-item"><a class="nav-link" style="color: white;"
				href="/feedback">PHẢN HỒI</a></li>
			<li class="nav-item"><a class="nav-link" style="color: white;"
				href="/faq">HỎI ĐÁP</a></li>
			<!-- Dropdown -->
			<li class="nav-item dropdown"><a style="color: white;"
				class="nav-link dropdown-toggle" href="#" id="navbardrop"
				data-toggle="dropdown"> TÀI KHOẢN </a> <c:choose>
					<c:when test="${empty sessionScope.user }">
						<ul class="dropdown-menu">
							<li><a href="/account/login">Đăng nhập</a></li>
							<li><a href="/account/register">Đăng ký</a></li>
							<li><a href="/account/forgot">Quên mật khẩu?</a></li>
						</ul>
					</c:when>
					<c:otherwise>
						<ul class="dropdown-menu" style="background-color: #FFF">
							<li style="border-bottom: 2px solid #EEEEEE;"><a href="/account/logout">Đăng xuất</a></li>
							<li style="border-bottom: 2px solid #EEEEEE;"><a href="/account/change">Thay đổi mật khẩu</a></li>
							<li style="border-bottom: 2px solid #EEEEEE;"><a href="/account/edit">Cập nhật thông tin cá nhân</a></li>
							<li style="border-bottom: 2px solid #EEEEEE;"><a href="/order/list">Lịch sử đơn hàng</a></li>
							<li><a href="/order/items">Danh sách sản phẩm đã mua</a></li>
						</ul>
					</c:otherwise>
				</c:choose></li>
		</ul>
	</div>
</nav>

				<div class="list_danh_muc" style="position: absolute;z-index:1;display: none;width: 350px;padding-left: 70px;margin-top: -20px">

						<c:forEach var="c" items="${cates}">
							<a  class="list-group-item" href="/product/list-by-categorys/${c.id}">
								<img src="/static/images/icon/4.png" /> ${c.nameVN}
							</a>
						</c:forEach>

				</div>
	
<style>
	.list-group-item{
		background-color: #F8F8FF;
		border-bottom: 2px solid #EEEEEE;
	}

	.list-group-item:hover{
		color: red; //
		font-weight: bold;
	}
</style>



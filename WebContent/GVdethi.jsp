<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html lang="en">
<!--<![endif]-->
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<!--[if IE]>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <![endif]-->
<title>Giảng viên - Khóa học</title>
<!--REQUIRED STYLE SHEETS-->
<!-- BOOTSTRAP CORE STYLE CSS -->
<link href="assets/css/bootstrap.css" rel="stylesheet" />
<!-- FONTAWESOME STYLE CSS -->
<link href="assets/css/font-awesome.min.css" rel="stylesheet" />
<!-- VEGAS STYLE CSS -->
<link href="assets/scripts/vegas/jquery.vegas.min.css" rel="stylesheet" />
<!-- CUSTOM STYLE CSS -->
<link href="assets/css/style.css" rel="stylesheet" />
<link href="assets/css/animte.css" rel="stylesheet" />
<link href='http://fonts.googleapis.com/css?family=Open+Sans'
	rel='stylesheet' type='text/css'>
<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
<style>
.carousel-inner>.item>img, .carousel-inner>.item>a>img {
	width: 70%;
	margin: auto;
}
</style>
</head>
<body>
	<script
		src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.26/angular.min.js"></script>
	<script>
		var demoApp = angular.module('demoApp', []).controller("RegisterCtrl",
				[ '$scope', function($scope) {
					$scope.success = false;
					$scope.register = function() {
						$scope.success = true;
					}
				} ]);
	</script>
	<script>
            function confirmGo(m,u) {
                if ( confirm(m) ) {
                    window.location = u;
                }
            }
        </script>
        	<%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")||(session.getAttribute("role") != "2")) {
    	response.sendRedirect("dangnhap.jsp");	
    	
	}  
 
	%>
	<!--Header section  -->
	<div class="container" id="home">
		<div class="row text-center">
			<div class="col-md-12">
				<h1 class="head-main">HỌC MỌI NƠI</h1>
				<h2 class="head-sub-main">Trải nghiệm cảm giác mới</h2>
				<h3 class="head-last">Thầy cô, bạn bè khắp mọi nơi</h3>
			</div>


		</div>

	</div>
	<!--End Header section  -->
	<sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://node179311-group16wed.jelastic.servint.net/data?autoReconnect=true&useUnicode=true&characterEncoding=UTF-8" user="root" password="RAYatq42331" />

	<sql:query dataSource="${dbsource}" var="result">
            				SELECT *
            				
            				from baithi
            				
            				where baithi.idkh=${param.IDKH}
            
       		 </sql:query>
	<!-- Navigation -->
	<nav class="navbar-inverse" role="navigation">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-ex1-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="GVindex.jsp"></a>
			</div>
			<!-- Collect the nav links for toggling -->
			<div
				class="collapse navbar-collapse navbar-ex1-collapse navbar-right">
				<ul class="nav navbar-nav">
					<li><a href="GVindex.jsp">TRANG CHỦ</a></li>
					<li><a href="#contact">LIÊN HỆ</a></li>
					<li class="dropdown"><a class="dropdown-toggle r"
						data-toggle="dropdown" href="#"><%=session.getAttribute("userid")%>
							<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a class="r" href="GVthongtin.jsp">Thông tin</a></li>
							<li><a class="r" href="dangnhap.jsp">Thoát</a></li>
						</ul></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container -->
	</nav>
	<!--End Navigation -->

	<!--About Section-->
	<section class="for-full-back color-dark padding-top" id="about">

	</section>
	<section class="for-full-back color-light ">
		<div class="container">
			<div class="row">
  <div class="col-sm-3">
    <ul class="nav nav-pills nav-stacked">
    
  <li class="r"><a href="GVthongtin.jsp">Thông tin</a></li>
  
  <li class="dropdown">
    <a class="dropdown-toggle r" data-toggle="dropdown" href="#">Khóa học
    <span class="caret"></span></a>
    
    <ul class="dropdown-menu">
      <li><a class="r" href="GVCackhoahocdamo.jsp">Khóa học đã mở</a></li>
      <li><a class="r" href="GVmokhoahoc1.jsp">Mở khóa học mới</a></li>
     
    </ul>
    
  </li>
  <li><li class="dropdown">
    <a class="dropdown-toggle r" data-toggle="dropdown" href="#">Bài tập - Đề thi
    <span class="caret"></span></a>
    <ul class="dropdown-menu">
     
      <li><a class="r" href="GVradethi.jsp">Ra đề thi</a></li>
      <li><a class="r" href="GVdsbaitapnop.jsp">Danh sách bài tập đã nộp</a></li>
      
     
    </ul>
  </li>
    
    <li><a class=" r"  href="GVmessAD.jsp">Liên lạc với Admin</a></li>
    
    
  </ul>
  
  </div>
  

				<div class="col-sm-9">
					<div class="row">
						<div class="col-md-1"></div>
						<div class="col-md-12" style="border: 1px solid black">
						
							<h3 class="tieude">Quản lý đề thi</h3>

							<table class="table table-striped">
								<thead>
									<tr>
								
										<th>Tên đề thi</th>
										<th>Link đề thi</th>



									</tr>
								</thead>
								<c:forEach var="row" items="${result.rows}">
									<tbody>

										<tr>
										  
											<td><c:out value="${row.tendethi}" /></td>
											<td><c:out value="${row.linkdethi}" /></td>

											<td><a
												href="GVsuabaithi.jsp?ID=<c:out value="${row.id}" />">Sửa</a></td>
											<td><a
												href="javascript:confirmGo('Sure to delete this record?','xoadethi.jsp?id=<c:out value="${row.id}"/>&IDKH=<c:out value="${row.idkh}"/>')">Xóa</a></td>

										</tr>
									</tbody>
								</c:forEach>
							</table>

							<table class="table table-striped">
								<div class="col-md-12">
								<form class="form-horizontal" action="GVOpenDeThi.jsp">
										<div class="col-md-6">
										 <input type="hidden" value="${param.IDKH }" name="idkh"/>
											<i class="glyphicon glyphicon-pencil"> Tên bài thi </i> <input
												type="text" name="TenBaiThi" class="form-control"
												placeholder="Tên bài tập"> <i
												class="glyphicon glyphicon-pencil"> Link bài thi </i> <input
												type="text" name="LinkBaiThi" class="form-control"
												placeholder="Tên bài tập"> 
												<i class="glyphicon glyphicon-pencil">Đáp án</i>
										</div>
										
									
												
									
								<thead>
									<tr>
										<th>Câu 1</th>
										<th>Câu 2</th>
										<th>Câu 3</th>
										<th>Câu 4</th>
										<th>Câu 5</th>
										<th>Câu 6</th>
										<th>Câu 7</th>
										<th>Câu 8</th>
										<th>Câu 9</th>
										<th>Câu 10</th>

									</tr>
									<tbody>
									
									
									<td><input type="text" class="form-control" name="c1"  placeholder="Câu 1"></td>
									<td><input type="text" class="form-control" name="c2"  placeholder="Câu 2"></td>
									<td><input type="text" class="form-control" name="c3"  placeholder="Câu 3"></td>
									<td><input type="text" class="form-control" name="c4"  placeholder="Câu 4"></td>
									<td><input type="text" class="form-control" name="c5"  placeholder="Câu 5"></td>
									<td><input type="text" class="form-control" name="c6"  placeholder="Câu 6"></td>
									<td><input type="text" class="form-control" name="c7"  placeholder="Câu 7"></td>
									<td><input type="text" class="form-control" name="c8"  placeholder="Câu 8"></td>
									<td><input type="text"class="form-control" name="c9"  placeholder="Câu 9"></td>
									<td><input type="text" class="form-control"name="c10"  placeholder="Câu 10"></td>
								
											
								
								
										
											
									
									</tbody>
								</thead>
								
									<thead>
										<tr>
											<th>Câu 11</th>
											<th>Câu 12</th>
											<th>Câu 13</th>
											<th>Câu 14</th>
											<th>Câu 15</th>
											<th>Câu 16</th>
											<th>Câu 17</th>
											<th>Câu 18</th>
											<th>Câu 19</th>
											<th>Câu 20</th>

										</tr>
									<tbody>
									<tr>
								
									<td>	<input type="text" name="c11" class="form-control" placeholder="Câu 11"></td>
									<td>	<input type="text" name="c12" class="form-control"placeholder="Câu 12"></td>
									<td>	<input type="text" name="c13" class="form-control" placeholder="Câu 13"></td>
									<td>	<input type="text" name="c14" class="form-control" placeholder="Câu 14"></td>
									<td>	<input type="text" name="c15" class="form-control" placeholder="Câu 15"></td>
									<td>	<input type="text" name="c16" class="form-control" placeholder="Câu 16"></td>
									<td>	<input type="text" name="c17" class="form-control"placeholder="Câu 17"></td>
									<td>	<input type="text" name="c18" class="form-control" placeholder="Câu 18"></td>
									<td>	<input type="text" name="c19" class="form-control" placeholder="Câu 19"></td>
									<td>	<input type="text" name="c20" class="form-control" placeholder="Câu 20"></td>
								
											
								
								
										
											
									</tr>
									</tbody>
									</thead>

									
									<button type="submit"> Lưu </button>
								</div>
							
								
							

							
							



							

								</form>


								</div>





							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--End About Section-->

	<!-- About Team Section -->

	<!--menu-->

	<!--end menu-->

	<!-- Pricing Section -->

	<section class="for-full-back color-dark " id="price-sec"></section>

	<!--End Pricing Section -->


	<!-- Contact Section -->
	 <section class="for-full-back color-light " id="contact"  >
   <div class="container" >      
        
        
        <div class="row" >
            <div class="col-md-8 contact-cls" >
                <h3>Liên hệ với chúng tôi</h3>
					<div >
						<span><i class="fa fa-home"> </i> Address: Ho Chi Minh City</span>
                        <br />
						<span><i class="fa fa-phone"> </i> Phone: 01265108839</span>
                        <br />
						<span><i class="fa fa-envelope-o"> </i>E-Mail: 14110220@student.hcmute.edu.vn || 14110094@student.hcmute.edu.vn </span>
                        <br />
					</div>
					<br />
					<div id="social-icon">
						<a href="#"><i class="fa fa-facebook fa-2x"></i></a>
						<a href="#"><i class="fa fa-twitter fa-2x"></i></a>
						<a href="#"><i class="fa fa-linkedin fa-2x"></i></a>
						<a href="#"><i class="fa fa-google-plus fa-2x"></i></a>
						<a href="#"><i class="fa fa-pinterest fa-2x"></i></a>					
					</div>
            </div>
                <div class="col-md-7">
                </div>
                
            </div>
      </div>
</section>
<!--End Contact Section -->
    <!--footer Section -->
     <div  class="for-full-back "  id="footer" >
               
          
       Web hỗ trợ học trực tuyến - Nhóm 16
         
            </div>
    <!--End footer Section -->
     <!-- JAVASCRIPT FILES PLACED AT THE BOTTOM TO REDUCE THE LOADING TIME  -->
     <!-- CORE JQUERY  -->
    <script src="assets/plugins/jquery-1.10.2.js"></script>
     <!-- BOOTSTRAP CORE SCRIPT   -->
    <script src="assets/plugins/bootstrap.js"></script>
    <!-- VEGAS SLIDESHOW SCRIPTS -->
    <script src="assets/plugins/vegas/jquery.vegas.min.js"></script>
     <!-- CUSTOM SCRIPTS -->
    <script src="assets/js/custom.js"></script>
     
</body>
</html>


<!-- 
=========================================================
 Light Bootstrap Dashboard - v2.0.1
=========================================================

 Product Page: https://www.creative-tim.com/product/light-bootstrap-dashboard
 Copyright 2019 Creative Tim (https://www.creative-tim.com)
 Licensed under MIT (https://github.com/creativetimofficial/light-bootstrap-dashboard/blob/master/LICENSE)

 Coded by Creative Tim

=========================================================

 The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.  -->


<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="header.jsp"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8" />
<title>Admin Dashboard</title>
</head>
<body>
	<div class="wrapper">
		<div class="sidebar" data-color="purple">
			<!-- data-color="purple | blue | green | orange | red" -->
			<div class="sidebar-wrapper">
				<div class="logo">
					<a href="#" class="simple-text"> Trip 3.0 </a>
				</div>
				<ul class="nav">
					<li class="nav-item active"><a class="nav-link"
						href="manage_main.do"> <i class="nc-icon nc-chart-pie-35"></i>Dashboard
					</a></li>
					<li class="nav-item"><a class="nav-link"
						href="manage_userList.do"> <i class="nc-icon nc-circle-09"></i>회원
							정보
					</a></li>
					<li class="nav-item"><a class="nav-link"
						href="manage_roomList.do"> <i class="nc-icon nc-istanbul"></i>숙소
							정보
					</a></li>
					<li class="nav-item"><a class="nav-link"
						href="manage_hostList.do"> <i class="nc-icon nc-satisfied"></i>업주
							정보
					</a></li>
					<li class="nav-item"><a class="nav-link"
						href="manage_boardList.do"> <i
							class="nc-icon nc-single-copy-04"></i>게시판 관리
					</a></li>
					<li class="nav-item"><a class="nav-link"
						href="manage_planList.do"> <i class="nc-icon nc-map-big"></i>플래너
							정보
					</a></li>
					<li class="nav-item"><a class="nav-link"
						href="manage_reservList.do"> <i class="nc-icon nc-money-coins"></i>결제
							정보
					</a></li>
				</ul>
			</div>
		</div>
		<div class="main-panel">
			<!-- Navbar -->
			<nav class="navbar navbar-expand-lg">
				<div class="container-fluid">
					<a class="navbar-brand" href="#pablo"> Dashboard </a>
					<button href="" class="navbar-toggler navbar-toggler-right"
						type="button" data-toggle="collapse"
						aria-controls="navigation-index" aria-expanded="false"
						aria-label="Toggle navigation">
						<span class="navbar-toggler-bar burger-lines"></span> <span
							class="navbar-toggler-bar burger-lines"></span> <span
							class="navbar-toggler-bar burger-lines"></span>
					</button>
					<div class="collapse navbar-collapse justify-content-end"
						id="navigation">
						<ul class="nav navbar-nav mr-auto">
							<li class="nav-item"><a href="#" class="nav-link"
								data-toggle="dropdown"> <span class="d-lg-none">Dashboard</span>
							</a></li>
							<li class="nav-item"><a href="#" class="nav-link"> <i
									class="nc-icon nc-zoom-split"></i> <span class="d-lg-block">&nbsp;Search</span>
							</a></li>
						</ul>

						<ul class="navbar-nav ml-auto">
							<li class="nav-item"><a class="nav-link" href="#pablo">
									<span class="no-icon">${manage_id}님 접속중</span>
							</a></li>
							<li class="nav-item"><a class="nav-link"
								href="manage_logout.do"> <span class="no-icon">Log
										out</span>
							</a></li>
						</ul>
					</div>
				</div>
			</nav>
			<!-- End Navbar -->

			<div class="content">
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-4">
							<div class="card ">
								<div class="card-header ">
									<h4 class="card-title">Email Statistics</h4>
									<p class="card-category">Last Campaign Performance</p>
								</div>
								<div class="card-body ">
									<div id="chartPreferences" class="ct-chart ct-perfect-fourth"></div>
									<div class="legend">
										<i class="fa fa-circle text-info"></i> Open <i
											class="fa fa-circle text-danger"></i> Bounce <i
											class="fa fa-circle text-warning"></i> Unsubscribe
									</div>
									<hr>
									<div class="stats">
										<i class="fa fa-clock-o"></i> Campaign sent 2 days ago
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-8">
							<div class="card ">
								<div class="card-header ">
									<h4 class="card-title">Users Behavior</h4>
									<p class="card-category">24 Hours performance</p>
								</div>
								<div class="card-body ">
									<div id="chartHours" class="ct-chart"></div>
								</div>
								<div class="card-footer ">
									<div class="legend">
										<i class="fa fa-circle text-info"></i> Open <i
											class="fa fa-circle text-danger"></i> Click <i
											class="fa fa-circle text-warning"></i> Click Second Time
									</div>
									<hr>
									<div class="stats">
										<i class="fa fa-history"></i> Updated 3 minutes ago
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6">
							<div class="card ">
								<div class="card-header ">
									<h4 class="card-title">2017 Sales</h4>
									<p class="card-category">All products including Taxes</p>
								</div>
								<div class="card-body ">
									<div id="chartActivity" class="ct-chart"></div>
								</div>
								<div class="card-footer ">
									<div class="legend">
										<i class="fa fa-circle text-info"></i> Tesla Model S <i
											class="fa fa-circle text-danger"></i> BMW 5 Series
									</div>
									<hr>
									<div class="stats">
										<i class="fa fa-check"></i> Data information certified
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-6">
							<div class="card  card-tasks">
								<div class="card-header ">
									<h4 class="card-title">Tasks</h4>
									<p class="card-category">Backend development</p>
								</div>
								<div class="card-body ">
									<div class="table-full-width">
										<table class="table">
											<tbody>
												<tr>
													<td>
														<div class="form-check">
															<label class="form-check-label"> <input
																class="form-check-input" type="checkbox" value="">
																<span class="form-check-sign"></span>
															</label>
														</div>
													</td>
													<td>Sign contract for "What are conference organizers
														afraid of?"</td>
													<td class="td-actions text-right">
														<button type="button" rel="tooltip" title="Edit Task"
															class="btn btn-info btn-simple btn-link">
															<i class="fa fa-edit"></i>
														</button>
														<button type="button" rel="tooltip" title="Remove"
															class="btn btn-danger btn-simple btn-link">
															<i class="fa fa-times"></i>
														</button>
													</td>
												</tr>
												<tr>
													<td>
														<div class="form-check">
															<label class="form-check-label"> <input
																class="form-check-input" type="checkbox" value=""
																checked> <span class="form-check-sign"></span>
															</label>
														</div>
													</td>
													<td>Lines From Great Russian Literature? Or E-mails
														From My Boss?</td>
													<td class="td-actions text-right">
														<button type="button" rel="tooltip" title="Edit Task"
															class="btn btn-info btn-simple btn-link">
															<i class="fa fa-edit"></i>
														</button>
														<button type="button" rel="tooltip" title="Remove"
															class="btn btn-danger btn-simple btn-link">
															<i class="fa fa-times"></i>
														</button>
													</td>
												</tr>
												<tr>
													<td>
														<div class="form-check">
															<label class="form-check-label"> <input
																class="form-check-input" type="checkbox" value=""
																checked> <span class="form-check-sign"></span>
															</label>
														</div>
													</td>
													<td>Flooded: One year later, assessing what was lost
														and what was found when a ravaging rain swept through
														metro Detroit</td>
													<td class="td-actions text-right">
														<button type="button" rel="tooltip" title="Edit Task"
															class="btn btn-info btn-simple btn-link">
															<i class="fa fa-edit"></i>
														</button>
														<button type="button" rel="tooltip" title="Remove"
															class="btn btn-danger btn-simple btn-link">
															<i class="fa fa-times"></i>
														</button>
													</td>
												</tr>
												<tr>
													<td>
														<div class="form-check">
															<label class="form-check-label"> <input
																class="form-check-input" type="checkbox" checked>
																<span class="form-check-sign"></span>
															</label>
														</div>
													</td>
													<td>Create 4 Invisible User Experiences you Never Knew
														About</td>
													<td class="td-actions text-right">
														<button type="button" rel="tooltip" title="Edit Task"
															class="btn btn-info btn-simple btn-link">
															<i class="fa fa-edit"></i>
														</button>
														<button type="button" rel="tooltip" title="Remove"
															class="btn btn-danger btn-simple btn-link">
															<i class="fa fa-times"></i>
														</button>
													</td>
												</tr>
												<tr>
													<td>
														<div class="form-check">
															<label class="form-check-label"> <input
																class="form-check-input" type="checkbox" value="">
																<span class="form-check-sign"></span>
															</label>
														</div>
													</td>
													<td>Read "Following makes Medium better"</td>
													<td class="td-actions text-right">
														<button type="button" rel="tooltip" title="Edit Task"
															class="btn btn-info btn-simple btn-link">
															<i class="fa fa-edit"></i>
														</button>
														<button type="button" rel="tooltip" title="Remove"
															class="btn btn-danger btn-simple btn-link">
															<i class="fa fa-times"></i>
														</button>
													</td>
												</tr>
												<tr>
													<td>
														<div class="form-check">
															<label class="form-check-label"> <input
																class="form-check-input" type="checkbox" value=""
																disabled> <span class="form-check-sign"></span>
															</label>
														</div>
													</td>
													<td>Unfollow 5 enemies from twitter</td>
													<td class="td-actions text-right">
														<button type="button" rel="tooltip" title="Edit Task"
															class="btn btn-info btn-simple btn-link">
															<i class="fa fa-edit"></i>
														</button>
														<button type="button" rel="tooltip" title="Remove"
															class="btn btn-danger btn-simple btn-link">
															<i class="fa fa-times"></i>
														</button>
													</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
								<div class="card-footer ">
									<hr>
									<div class="stats">
										<i class="now-ui-icons loader_refresh spin"></i> Updated 3
										minutes ago
									</div>
								</div>
							</div>
						</div>
					</div>

				</div>
			</div>

		</div>
	</div>
	<!--   -->
	<!-- <div class="fixed-plugin">
    <div class="dropdown show-dropdown">
        <a href="#" data-toggle="dropdown">
            <i class="fa fa-cog fa-2x"> </i>
        </a>

        <ul class="dropdown-menu">
			<li class="header-title"> Sidebar Style</li>
            <li class="adjustments-line">
                <a href="javascript:void(0)" class="switch-trigger">
                    <p>Background Image</p>
                    <label class="switch">
                        <input type="checkbox" data-toggle="switch" checked="" data-on-color="primary" data-off-color="primary"><span class="toggle"></span>
                    </label>
                    <div class="clearfix"></div>
                </a>
            </li>
            <li class="adjustments-line">
                <a href="javascript:void(0)" class="switch-trigger background-color">
                    <p>Filters</p>
                    <div class="pull-right">
                        <span class="badge filter badge-black" data-color="black"></span>
                        <span class="badge filter badge-azure" data-color="azure"></span>
                        <span class="badge filter badge-green" data-color="green"></span>
                        <span class="badge filter badge-orange" data-color="orange"></span>
                        <span class="badge filter badge-red" data-color="red"></span>
                        <span class="badge filter badge-purple active" data-color="purple"></span>
                    </div>
                    <div class="clearfix"></div>
                </a>
            </li>
            <li class="header-title">Sidebar Images</li>

            <li class="active">
                <a class="img-holder switch-trigger" href="javascript:void(0)">
                    <img src="resources/assets/img/sidebar-1.jpg" alt="" />
                </a>
            </li>
            <li>
                <a class="img-holder switch-trigger" href="javascript:void(0)">
                    <img src="resources/assets/img/sidebar-3.jpg" alt="" />
                </a>
            </li>
            <li>
                <a class="img-holder switch-trigger" href="javascript:void(0)">
                    <img src="..//assets/img/sidebar-4.jpg" alt="" />
                </a>
            </li>
            <li>
                <a class="img-holder switch-trigger" href="javascript:void(0)">
                    <img src="resources/assets/img/sidebar-5.jpg" alt="" />
                </a>
            </li>

            <li class="button-container">
                <div class="">
                    <a href="http://www.creative-tim.com/product/light-bootstrap-dashboard" target="_blank" class="btn btn-info btn-block btn-fill">Download, it's free!</a>
                </div>
            </li>

            <li class="header-title pro-title text-center">Want more components?</li>

            <li class="button-container">
                <div class="">
                    <a href="http://www.creative-tim.com/product/light-bootstrap-dashboard-pro" target="_blank" class="btn btn-warning btn-block btn-fill">Get The PRO Version!</a>
                </div>
            </li>

            <li class="header-title" id="sharrreTitle">Thank you for sharing!</li>

            <li class="button-container">
				<button id="twitter" class="btn btn-social btn-outline btn-twitter btn-round sharrre"><i class="fa fa-twitter"></i> · 256</button>
                <button id="facebook" class="btn btn-social btn-outline btn-facebook btn-round sharrre"><i class="fa fa-facebook-square"></i> · 426</button>
            </li>
        </ul>
    </div>
</div>
 -->
</body>
<!--  Plugin for Switches, full documentation here: http://www.jque.re/plugins/version3/bootstrap.switch/ -->
<script src="resources/assets/js/plugins/bootstrap-switch.js"></script>
<!--  Google Maps Plugin    -->
<script type="text/javascript"
	src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
<!--  Chartist Plugin  -->
<script src="resources/assets/js/plugins/chartist.min.js"></script>
<!--  Notifications Plugin    -->
<script src="resources/assets/js/plugins/bootstrap-notify.js"></script>
<!-- Control Center for Light Bootstrap Dashboard: scripts for the example pages etc -->
<script src="resources/assets/js/light-bootstrap-dashboard.js?v=2.0.0 "
	type="text/javascript"></script>
<%@ include file="footer.jsp"%>
</html>
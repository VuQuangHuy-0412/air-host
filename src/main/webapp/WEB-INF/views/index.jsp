<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Air Host</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
        <link href="assets/css/styles.css" rel="stylesheet" />
        <style>
			body {
			  background-image: url('https://dothanhspyb.com/wp-content/uploads/2020/08/MG_0361.jpg');
			  background-repeat: no-repeat;
			  background-attachment: fixed;
			  background-size: 100% 100%;
			}
		</style>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
    </head>
    <body class="sb-nav-fixed">
        <div style="position: fixed; top: 0; width: 100%; height: 60px; overflow: hidden; z-index: 1000">
		    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
			    <div class="container px-5">
			        <a class="navbar-brand" href="/AirHost/"><b>Air Host</b></a>
			        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
			        <div class="collapse navbar-collapse" id="navbarSupportedContent">
			            <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
			                <li class="nav-item"><a class="nav-link" href="/AirHost/">Information</a></li>
			                <li class="nav-item"><a class="nav-link" href="/AirHost/history">History</a></li>
			            </ul>
			        </div>
			    </div>
			</nav>
		</div>
        <div id="layoutSidenav" style="margin-top: 60px;">
            <div style="margin-left: 100px; margin-right: 100px;">
                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">Information</h1>
                        <div class="row">
                        	<div class="col-lg-4">
                                <div class="card mb-12" style="background-color: transparent; border: none;">
                                	<h2><b>Thời Điểm Hiện Tại</b></h2>
                                </div>
                            </div>
                            <div class="col-lg-8">
                                <div class="card mb-12" style="background-color: transparent; border: none;">
                                	<h2><span id="current_time" style="text-align: center;"></span></h2>
                                </div>
                            </div>  
                        </div>
                        
                        <div class="row" style="margin-top: 20px;">
                        	<div class="col-lg-4">
                                <div class="card mb-12" style="background-color: transparent; border: none;">
                                	<h4><b>Khu vực</b></h4>
                                </div>
                            </div>
                            <div class="col-lg-8">
                                <div class="card mb-12" style="background-color: transparent; border: none;">
                                	<h4><span>Quảng trường C1 - Đại học Bách Khoa Hà Nội</span></h4>
                                </div>
                            </div>  
                        </div>
                        
                        <div class="row" style="margin-top: 20px;">
                        	<div class="col-lg-4">
                                <div class="card mb-12" style="background-color: transparent; border: none;">
                                	<h4><b>Tình Trạng Không Khí</b></h4>
                                </div>
                            </div>
                            <div class="col-lg-8">
                                <div class="card mb-12" style="background-color: transparent; border: none;">
                                	<h4><span>Trung Bình</span></h4>
                                </div>
                            </div>  
                        </div>
                        
                        <div class="row" style="margin-top: 20px;">
                        	<div class="col-lg-6">
                                <div class="card mb-12">
                                    <div class="card-header">
                                        <i class="fas fa-chart-pie me-1"></i>
                                        Nhiệt Độ
                                    </div>
                                    <div class="card-body" style="position: relative;">
                                    	<div style="width: 100%; height: 40px; position: absolute; top: 50%; left: 0; margin-top: -20px; line-height:19px; text-align: center; z-index: 999999999999999">
                                    		<h3><b><span id="temp">37</span>&deg;C</b></h3>
										</div>
                                    	<canvas id="temperature" width="100%" height="70"></canvas>
                                   	</div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="card mb-12">
                                    <div class="card-header">
                                        <i class="fas fa-chart-pie me-1"></i>
                                        Độ Ẩm
                                    </div>
                                    <div class="card-body" style="position: relative;">
                                    	<div style="width: 100%; height: 40px; position: absolute; top: 50%; left: 0; margin-top: -20px; line-height:19px; text-align: center; z-index: 999999999999999">
                                    		<h3><b><span id="hum"></span>%</b></h3>
										</div>
										<canvas id="humidity" width="100%" height="70"></canvas>
									</div>
                                </div>
                            </div>
						</div>
                        <div class="row" style="margin-top: 20px;">
                            <div class="col-lg-6">
                                <div class="card mb-12">
                                    <div class="card-header">
                                        <i class="fas fa-chart-pie me-1"></i>
                                        Cường Độ UV
                                    </div>
                                    <div class="card-body" style="position: relative;">
                                    	<div style="width: 100%; height: 40px; position: absolute; top: 50%; left: 0; margin-top: -20px; line-height:19px; text-align: center; z-index: 999999999999999">
                                    		<h3><b>2</b></h3>
										</div>
										<canvas id="UV_intensity" width="100%" height="70"></canvas>
									</div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="card mb-12">
                                    <div class="card-header">
                                        <i class="fas fa-chart-pie me-1"></i>
                                        AQI
                                    </div>
                                    <div class="card-body" style="position: relative;">
                                    	<div style="width: 100%; height: 40px; position: absolute; top: 50%; left: 0; margin-top: -20px; line-height:19px; text-align: center; z-index: 999999999999999">
                                    		<h3><b>78</b></h3>
										</div>
										<canvas id="aqi" width="100%" height="70"></canvas>
									</div>
                                </div>
                            </div>
                        </div>
                        <div class="" style="margin-top: 20px;">
                            <div class="col-xl-12">
                                <div class="card mb-4">
                                    <div class="card-header">
                                        <i class="fas fa-chart-area me-1"></i>
                                        Biến Thiên Nhiệt Độ
                                    </div>
                                    <div class="card-body"><canvas id="area_temperature" width="100%" height="50"></canvas></div>
                                </div>
                            </div>
                            <div class="col-xl-12">
                                <div class="card mb-4">
                                    <div class="card-header">
                                        <i class="fas fa-chart-area me-1"></i>
                                        Biến Thiên Độ Ẩm
                                    </div>
                                    <div class="card-body"><canvas id="area_humidity" width="100%" height="50"></canvas></div>
                                </div>
                            </div>
                            <div class="col-xl-12">
                                <div class="card mb-4">
                                    <div class="card-header">
                                        <i class="fas fa-chart-area me-1"></i>
                                        Biến Thiên Cường Độ UV
                                    </div>
                                    <div class="card-body"><canvas id="area_UV_intensity" width="100%" height="50"></canvas></div>
                                </div>
                            </div>
                            <div class="col-xl-12">
                                <div class="card mb-4">
                                    <div class="card-header">
                                        <i class="fas fa-chart-area me-1"></i>
                                        Biến Thiên AQI
                                    </div>
                                    <div class="card-body"><canvas id="area_aqi" width="100%" height="50"></canvas></div>
                                </div>
                            </div>
                            <div class="col-xl-12">
                                <div class="card mb-4">
                                    <div class="card-header">
                                        <i class="fas fa-chart-area me-1"></i>
                                        Biến Thiên Nồng Độ CO2
                                    </div>
                                    <div class="card-body"><canvas id="area_co2" width="100%" height="50"></canvas></div>
                                </div>
                            </div>
                            <div class="col-xl-12">
                                <div class="card mb-4">
                                    <div class="card-header">
                                        <i class="fas fa-chart-area me-1"></i>
                                        Biến Thiên Nồng Độ NO2
                                    </div>
                                    <div class="card-body"><canvas id="area_no2" width="100%" height="50"></canvas></div>
                                </div>
                            </div>
                            <div class="col-xl-12">
                                <div class="card mb-4">
                                    <div class="card-header">
                                        <i class="fas fa-chart-bar me-1"></i>
                                        Bar Chart Example
                                    </div>
                                    <div class="card-body"><canvas id="myBarChart" width="100%" height="40"></canvas></div>
                                </div>
                            </div>
                        </div>
					</div>
				</main>
            </div>
        </div>
        <script>
        	function showTime() {
			    var curDate = new Date();
			      
			    // Ngày hiện tại
			    var curDay = curDate.getDate();
			 
			    // Tháng hiện tại
			    var curMonth = curDate.getMonth() + 1;
			      
			    // Năm hiện tại
			    var curYear = curDate.getFullYear();
			    
			    var curHour = (curDate.getHours() < 10) ? ('0' + curDate.getHours()) : curDate.getHours();
			    
			    var curMinute = (curDate.getMinutes() < 10) ? ('0' + curDate.getMinutes()) : curDate.getMinutes();
			 
			    var curSecond = (curDate.getSeconds() < 10) ? ('0' + curDate.getSeconds()) : curDate.getSeconds();
			    
			    // Gán vào thẻ HTML
			    document.getElementById('current_time').innerHTML = curHour + ":" + curMinute + ":" + curSecond + " ngày " + curDay + " tháng " + curMonth + " năm " + curYear;
			    setTimeout(showTime, 1000);
        	}
        	
        	showTime();
        	
        	var dataCurrent = ${dataNow};
        	document.getElementById("temp").innerHTML = dataCurrent.temp;
        	document.getElementById("hum").innerHTML = dataCurrent.humidity;
	    </script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="assets/js/scripts.js"></script>
        <script src="assets/demo/chart-area-demo.js"></script>
        <script src="assets/demo/chart-bar-demo.js"></script>
        <script src="assets/demo/chart-pie-demo.js"></script>
        <script src="assets/js/datatables-simple-demo.js"></script>
    </body>
</html>

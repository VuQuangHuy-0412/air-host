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
        <title>Air Host History</title>
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
    	<div style="position: fixed; top: 0; width: 100%; height: 60px; overflow: hidden; z-index: 1000;">
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
                	<div class="container-fluid px-4 card" style="margin-top: 80px;">
	                    <form id='form-filter' action="#" method="get">
	                        <div class="row clearfix" style="padding-top: 10px; padding-bottom: 10px;">
	                            <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12 m-b-10">
	                                <div class="form-group m-0">
	                                    <label class="form-label">Loại báo cáo</label>
	                                    <div class="form-line">
	                                    	<input type="text" id="place" class="form-control" name="place" value="Input">
	                                    </div>
	                                </div>
	                            </div>
	                            <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12 m-b-10">
	                                <div class="form-group m-0">
	                                    <label class="form-label">Thời gian</label>
	                                    <div class="form-line">
	                                    	<input type="text" id="place" class="form-control" name="place" value="Input">
	                                    </div>
	                                </div>
	                            </div>
	                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 m-b-10">
	                                <div class="form-group m-0" style="float: right;">
	                                    <label class="form-label">&nbsp;</label>
	                                    <div>
	                                        <button type="button" id="search_form_submit" class="btn btn-primary m-r-10">
	                                            TÌM KIẾM
	                                        </button>
	
	                                        <a href="/AirHost/history" class="m-r-10">
	                                            <button type="button" class="btn btn-default" style="background-color: burlywood;">
	                                                RESET
	                                            </button>
	                                        </a>
	                                    </div>
	                                </div>
	                            </div>
	                        </div>
	                    </form>
                    </div>
				
					<div class="body table-responsive card" style="padding-bottom: 150px; margin-top: 20px;">
						<table class="table table-hover">
	                        <thead>
		                        <tr>
		                            <th>Tên topping</th>
		                            <th>Người cập nhật</th>
		                            <th>Thời gian cập nhật</th>
		                            <th>Action</th>
		                            <th>Action</th>
		                            <th>Action</th>
		                        </tr>
	                        </thead>
	                        <tbody>
	                        	<tr>
	                        		<td>1</td>
	                        		<td>1</td>
	                        		<td>1</td>
	                        		<td>1</td>
	                        		<td>1</td>
	                        		<td>1</td>
	                        	</tr>
	                        </tbody>
                        </table>
					</div>
				</main>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="assets/js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="assets/demo/chart-area-demo.js"></script>
        <script src="assets/demo/chart-bar-demo.js"></script>
        <script src="assets/demo/chart-pie-demo.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="assets/js/datatables-simple-demo.js"></script>
        <script>
        	
	    </script>
    </body>
</html>

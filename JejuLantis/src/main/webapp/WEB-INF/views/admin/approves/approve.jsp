<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>SB Admin - Start Bootstrap Template</title>
  <!-- Bootstrap core CSS-->
  <link href="../resources/admin/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- Custom fonts for this template-->
  <link href="../resources/admin/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
  <!-- Page level plugin CSS-->
  <link href="../resources/admin/vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">
  <!-- Custom styles for this template-->
  <link href="../resources/admin/css/sb-admin.css" rel="stylesheet">
</head>

<body class="fixed-nav sticky-footer bg-dark" id="page-top">
<%@ include file="../top/top2.jspf" %>
  <!-- Navigation-->

  <div class="content-wrapper">
    <div class="container-fluid">
      <!-- Breadcrumbs-->
      <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="#">JEJULANTIS</a>
        </li>
        <li class="breadcrumb-item active">관리자관리</li>
      </ol>
      <!-- Example DataTables Card-->
      <div class="card mb-3">
        <div class="card-header">
          <i class="fa fa-table"></i>관리자목록</div>
        <div class="card-body">
          <div class="table-responsive">
          <button type="button" class="btn btn-primary btn-xs" align="right"><a href="register.do" style="color:white">관리자등록</a></button></br></br>
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
              <thead>
                <tr>
                  <th>번호</th>
                  <th>지점명</th>
                  <th>관리자ID</th>
                  <th>관리자명</th>
<!--                   <th>생년월일</th> -->
                  <th>이메일</th>
                  <th>전화번호</th>
                  <th>등록날짜</th>
                  <th>승인여부</th>
                  <th>비고</th>
                </tr>
              </thead>
              <c:forEach items="${adminApproveList}" var="adminApproveList">
              <tbody>
                <tr>
                  <td>${adminApproveList.manager_no}</td>
                  <td>${adminApproveList.branch_name}</td>
                  <td>${adminApproveList.manager_id}</td>
                  <td>${adminApproveList.manager_name}</td>
<%--                   <td>${adminList.manager_birth}</td> --%>
                  <td>${adminApproveList.manager_email}</td>
                  <td>${adminApproveList.manager_tel1}</td>
                  <td>${adminApproveList.manager_resist_member}</td>
                  
                  <c:set var="data" value="${adminApproveList.manager_withdraw_at}"/>
                  <c:choose>
	                  <c:when test="${data eq 'N'}">
	                  	<td>승인완료</td>
	                  </c:when>
	                  <c:when test="${data eq 'T'}">
	                  	<td>승인대기</td>
	                  </c:when>
	                  <c:when test="${data eq 'Y'}">
	                  	<td>승인거부</td>
	                  </c:when>
	              </c:choose>
                  <td>
<%--                   <button type="button" class="btn btn-defalut btn-sm"><a href="affiliateContentList.do?affiliate_no=${adminApproveList.affiliate_no}">세부내용</a></button> --%>
<%--                   	<button type="button" class="btn btn-defalut btn-sm"><a href="affiliateUpdate.do?affiliate_no=${affiliateList.affiliate_no}">수정</a></button> --%>
				  <button type="button" class="btn btn-defalut btn-sm"><a href="adminApproveYes.do?manager_no=${adminApproveList.manager_no}">승인</a></button>
                  <button type="button" class="btn btn-defalut btn-sm"><a href="adminApproveNo.do?manager_no=${adminApproveList.manager_no}">거부</a></button>
                </tr>
              </tbody>
              </c:forEach>
            </table>
          </div>
        </div>
        <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
      </div>
    </div>
    <!-- /.container-fluid-->
    <!-- /.content-wrapper-->
    <footer class="sticky-footer">
      <div class="container">
        <div class="text-center">
          <small>Copyright © Your Website 2018</small>
        </div>
      </div>
    </footer>
    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
      <i class="fa fa-angle-up"></i>
    </a>
    <!-- Logout Modal-->
    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
            <button class="close" type="button" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">×</span>
            </button>
          </div>
          <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
          <div class="modal-footer">
            <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
            <a class="btn btn-primary" href="login.do">Logout</a>
          </div>
        </div>
      </div>
    </div>
    <!-- Bootstrap core JavaScript-->
    <script src="../resources/admin/vendor/jquery/jquery.min.js"></script>
    <script src="../resources/admin/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- Core plugin JavaScript-->
    <script src="../resources/admin/vendor/jquery-easing/jquery.easing.min.js"></script>
    <!-- Page level plugin JavaScript-->
    <script src="../resources/admin/vendor/datatables/jquery.dataTables.js"></script>
    <script src="../resources/admin/vendor/datatables/dataTables.bootstrap4.js"></script>
    <!-- Custom scripts for all pages-->
    <script src="../resources/admin/js/sb-admin.min.js"></script>
    <!-- Custom scripts for this page-->
    <script src="../resources/admin/js/sb-admin-datatables.min.js"></script>
  </div>
</body>

</html>

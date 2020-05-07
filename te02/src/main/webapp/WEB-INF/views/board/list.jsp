<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<!-- Core CSS - Include with every page -->
	<link href="/resources/css/bootstrap.min.css" rel="stylesheet">
	<link href="/resources/font-awesome/css/font-awesome.css" rel="stylesheet">
	
	<!-- Page-Level Plugin CSS - Tables -->
	<link href="/resources/css/plugins/dataTables/dataTables.bootstrap.css" rel="stylesheet">
	
	<!-- SB Admin CSS - Include with every page -->
	<link href="/resources/css/sb-admin.css" rel="stylesheet">
	
	<script src="https://code.jquery.com/jquery-3.1.0.js"></script>
</head>
<body>
	<div id="wrapper">

        <%@include file="../includes/header.jsp" %>

        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">게시판</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                        <tr>
                                            <th>번호</th>
                                            <th>제목</th>
                                            <th>작성자</th>
                                            <th>작성일</th>
                                            <th>수정일</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    	<c:forEach items="${list }" var="board">
                                    	<tr onclick="">
                                    		<td><c:out value="${board.bno }" /></td>
                                    		<td><c:out value="${board.title }" /></td>
                                    		<td><c:out value="${board.writer }" /></td>
                                    		<td><fmt:formatDate pattern="yyyy-MM-dd" value="${board.regdate }" /></td>
                                    		<td><fmt:formatDate pattern="yyyy-MM-dd" value="${board.updateDate }" /></td>
                                    	</tr>
                                    	</c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
        </div>
        <!-- /#page-wrapper -->
    </div>
    <!-- /#wrapper -->
    
    <script>
		$(document).ready(function(){
			alert("ddddddd");
			var result = '<c:out value="${result}"/>';

			checkModal(result);

			function checkModal(result){

				if(result == ''){
					return;
				}

				if(parseInt(result) > 0){
					$(".modal-body").html("게시글 " + parseInt(result) + "번이 등록되었습니다.");
				}

				$("#myModal").modal("show");
			}
		});
		
    </script>
    
	<!-- Model 추가 -->
	<div id="myModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	    <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
	    </div>
	    <div class="modal-body">
	        <p>처리가 완료되었습니다.</p>
	    </div>
	    <div class="modal-footer">
	        <button class="btn" data-dismiss="modal" aria-hidden="true">닫기</button>
	        <!-- <button class="btn btn-primary">Save changes</button> -->
	    </div>
	</div>
    
    <%@include file="../includes/footer.jsp" %>
</body>
</html>

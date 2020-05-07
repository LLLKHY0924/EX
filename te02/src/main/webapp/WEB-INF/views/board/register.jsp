<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
</head>
<body>
	<div id="wrapper">

    <%@include file="../includes/header.jsp" %>
    
	<div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">게시판 글쓰기</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-12">
                                    <form role="form" action="/board/register" method="post">
                                        <div class="form-group">
                                            <label>제목</label>
                                            <input class="form-control" placeholder="제목" name="title">
                                        </div>
                                        <div class="form-group">
                                            <label>작성자</label>
                                            <input class="form-control" placeholder="작성자" name="writer">
                                        </div>
                                        <div class="form-group">
                                            <label>내용</label>
                                            <textarea class="form-control" rows="3" name="content"></textarea>
                                        </div>
                                        <!-- <div class="form-group">
                                            <label>File input</label>
                                            <input type="file">
                                        </div> -->
                                        <button type="submit" class="btn btn-default">확인</button>
                                        <button type="reset" class="btn btn-default">다시작성</button>
                                    </form>
                                </div>
                                <!-- /.col-lg-6 (nested) -->
                            </div>
                            <!-- /.row (nested) -->
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
    
    <%@include file="../includes/footer.jsp" %>
</body>
</html>
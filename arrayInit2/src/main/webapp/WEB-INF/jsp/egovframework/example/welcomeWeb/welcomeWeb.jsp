<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<script type="text/javascript">
</script>
<div class="content">
	<div class="container-fluid">
		<div class="row">
	        <div class="col-md-12">
	           	<div class="card">
	               	<div class="header">
	                   	<h4 class="title">게시판</h4>
	                   	<p class="category">선택한 게시글 번호 조회 결과</p>
	               	</div>
	               	<div class="content table-responsive table-full-width">
	                   	<table class="table table-hover table-striped">
	                       	<thead>
	                           	<th>seqNo</th>
	                       		<th>name</th>
	                       		<th>age</th>
	                       		<th>country</th>
	                       		<th>etc</th>
	                       	</thead>
	                       	<tbody>
	                       	</tbody>
	                   	</table>
	               	</div>
	               	<div class="content">
	                   	<div class="row">
	                   		<div class="col-md-2 col-md-offset-5">
			                   	<button class="btn btn-wd btn-info" onclick="location.href='main.do?pageName=main'">다시 선택하기</button>
	                   		</div>
	                   	</div>
                   	</div>
	           	</div>
	       	</div>
	   	</div>
	</div>
</div>
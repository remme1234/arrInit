<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script>
	
</script>

<div class="content">
	<div class="container-fluid">
      	<div class="row">
          	<div class="col-md-12">
              	<div class="card ">
	                <div class="header">
	                    <h4 class="title">게시글 조회</h4>
	                </div>
	                <div class="content">
	                	<form id="selectSeqNoFrm" class="form-horizontal">
	                    	<div class="row">
                                <div class="form-group">
                                   	<label class="col-sm-2 control-label">글 번호 선택</label>
                                   	<div class="col-sm-8 arrayLabel">
                                   		<c:forEach items="${seqNoList}" var="seqNoList">
	                                        <label class="checkbox checkbox-inline">
	                                            <input type="checkbox" data-toggle="checkbox" name="selectSeqNo" value="${seqNoList.seqNo}" />
	                                            <span class="labelText">${seqNoList.seqNo}</span>
	                                        </label>
                                        </c:forEach>
                                   	</div>
                                </div>
                        	</div>
                        	<div class="row">
                        		<div class="col-md-2 col-md-offset-5">
                        			<input type="hidden" id="pageName" name="pageName" value="array"/>
                               		<input type="submit" class="btn btn-wd btn-success" value="검색하기">
                                </div>
                        	</div>
                       	</form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
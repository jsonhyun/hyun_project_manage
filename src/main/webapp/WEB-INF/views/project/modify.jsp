<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="false" %>
<%@ include file="../include/header.jsp" %>
<script type="text/javascript">
	$(function () {
		var status = "${project.pStatus}"
		$("select[name='pStatus']").val(status).prop("selected", true);
		
		$("#cancel").click(function () {
			location.href="${pageContext.request.contextPath}/project/read?pNo=${project.pNo}";
		})
	})
</script>
<div class="content">
	<div class="row">
		<div class="col-sm-12">
			<div class="box box-primary">
				<div class="box-header">
					<h3 class="box-title">프로젝트 수정</h3>
				</div>
				<form role="form" action="modify" method="post">
					<div class="box-body">
						<div class="form-group">
							<label>프로젝트 이름</label>
							<input type="text" name="pName" class="form-control" value="${project.pName }" placeholder="프로젝트 이름을 작성하세요">
							<input type="hidden" name="pNo" value="${project.pNo }">
						</div>
						<div class="form-group">
							<label>프로젝트 내용</label>
							<textarea class="form-control" rows="5" cols="30" name="pContent" placeholder="프로젝트 내용을 작성하세요">${project.pContent }</textarea>
						</div>
						<div class="form-group">
							<label>시작날짜</label>
							<input type="date" name="pStart" value='<fmt:formatDate  value="${project.pStart }" pattern="yyyy-MM-dd"/>' class="form-control">
						</div>
						<div class="form-group">
							<label>종료날짜</label>
							<input type="date" name="pEnd" value='<fmt:formatDate  value="${project.pEnd }" pattern="yyyy-MM-dd"/>' class="form-control">
						</div>
						<div class="form-group">
							<label>상태</label>
							<select class="form-control" name="pStatus">
								<option selected>선택</option>
								<option value="준비">준비</option>
								<option value="진행중">진행중</option>
								<option value="종료">종료</option>
								<option value="보류">보류</option>
							</select>
						</div>
					</div>
					<div class="box-footer">
						<button type="submit" class="btn btn-primary">수정</button>
						<button type="button" class="btn btn-danger" id="cancel">취소</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
<%@ include file="../include/footer.jsp" %>
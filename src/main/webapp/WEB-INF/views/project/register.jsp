<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="false" %>
<%@ include file="../include/header.jsp" %>
<script type="text/javascript">
	$(function () {
		$("#cancel").click(function () {
			location.href="${pageContext.request.contextPath}/project/list";
		})
	})
</script>
<div class="content">
	<div class="row">
		<div class="col-sm-12">
			<div class="box box-primary">
				<div class="box-header">
					<h3 class="box-title">프로젝트 등록</h3>
				</div>
				<form role="form" action="register" method="post">
					<div class="box-body">
						<div class="form-group">
							<label>프로젝트 이름</label>
							<input type="text" name="pName" class="form-control" placeholder="프로젝트 이름을 작성하세요">
						</div>
						<div class="form-group">
							<label>프로젝트 내용</label>
							<textarea class="form-control" rows="5" cols="30" name="pContent" placeholder="프로젝트 내용을 작성하세요"></textarea>
						</div>
						<div class="form-group">
							<label>시작날짜</label>
							<input type="date" name="pStart" class="form-control">
						</div>
						<div class="form-group">
							<label>종료날짜</label>
							<input type="date" name="pEnd" class="form-control">
						</div>
						<div class="form-group">
							<label>상태</label>
							<select class="form-control" name="pStatus">
								<option value="준비" selected="selected">준비</option>
								<option value="진행중">진행중</option>
								<option value="종료">종료</option>
								<option value="보류">보류</option>
							</select>
						</div>
					</div>
					<div class="box-footer">
						<button type="submit" class="btn btn-primary">저장</button>
						<button type="button" class="btn btn-danger" id="cancel">취소</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
<%@ include file="../include/footer.jsp" %>
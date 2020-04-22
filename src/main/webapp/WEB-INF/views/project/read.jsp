<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="false" %>
<%@ include file="../include/header.jsp" %>
<script type="text/javascript">
	$(function () {
		$("#btnList").click(function () {
			location.href="${pageContext.request.contextPath}/project/list";
		})
		$("#btnModify").click(function () {
			/* var pNo = $("input[name='pNo']").val(); */
			location.href="${pageContext.request.contextPath}/project/modify?pNo=${project.pNo}";
		})
		$("#btnRemove").click(function () {
			var con = confirm("정말 삭제하시겠습니까?");
			console.log(con);
			if(con == true){
				location.href="${pageContext.request.contextPath}/project/remove?pNo=${project.pNo}";	
			}else{
				return false;
			}
			
		})
	})
</script>
<div class="content">
	<div class="row">
		<div class="col-sm-12">
			<div class="box box-primary">
				<div class="box-header">
					<h3 class="box-title">프로젝트 세부내용</h3>
				</div>
				<div class="box-body">
					<table class="table table-bordered">
						<tr>
							<th class="text-center" style="width: 160px;">프로젝트 이름</th>
							<td class="text-left">${project.pName }</td>
						</tr>
						<tr>
							<th class="text-center">프로젝트 내용</th>
							<td class="text-left">${project.pContent }</td>
						</tr>
						<tr>
							<th class="text-center">시작날짜</th>
							<td class="text-left"><fmt:formatDate value="${project.pStart }" pattern="yyyy-MM-dd"/></td>
						</tr>
						<tr>
							<th class="text-center">종료날짜</th>
							<td class="text-left"><fmt:formatDate value="${project.pEnd }" pattern="yyyy-MM-dd"/></td>
						</tr>
						<tr>
							<th class="text-center">상태</th>
							<td class="text-left">${project.pStatus }</td>
						</tr>
					</table>
					<%-- <input type="hidden" name="pNo" value="${project.pNo }"> --%>
				</div>
				<div class="box-footer">
					<button class="btn btn-warning" id="btnModify">수정</button>
					<button class="btn btn-danger" id="btnRemove">삭제</button>
					<button class="btn btn-primary" id="btnList">돌아가기</button>
				</div>
			</div>
		</div>
	</div>
</div>
<%@ include file="../include/footer.jsp" %>
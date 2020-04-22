<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="false" %>
<%@ include file="../include/header.jsp" %>
<div class="content">
	<div class="row">
		<div class="col-sm-12">
			<div class="box box-primary">
				<div class="box-header">
					<h3 class="box-title">프로젝트 리스트</h3>
				</div>
				<div class="box-body text-right">
					<a href="${pageContext.request.contextPath }/project/register"><button class="btn btn-primary">[새 프로젝트 등록]</button></a>
				</div>
				<div class="box-body">
					<table class="table table-bordered">
						<tr>
							<th class="text-center">프로젝트 이름</th>
							<th class="text-center">시작날짜</th>
							<th class="text-center">종료날짜</th>
							<th class="text-center">상태</th>
						</tr>
						<c:forEach var="project" items="${list }">
							<tr>
								<td class="text-center"><a href="${pageContext.request.contextPath }/project/read?pNo=${project.pNo }">${project.pName }</a></td>
								<td class="text-center"><fmt:formatDate value="${project.pStart }" pattern="yyyy-MM-dd"/></td>
								<td class="text-center"><fmt:formatDate value="${project.pEnd }" pattern="yyyy-MM-dd"/></td>
								<td class="text-center">${project.pStatus }</td>
							</tr>
						</c:forEach>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>
<%@ include file="../include/footer.jsp" %>

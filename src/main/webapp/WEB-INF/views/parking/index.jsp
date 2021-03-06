<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://sargue.net/jsptags/time" prefix="javatime" %>

<c:import url="../commom/head.jsp" />
	<div class="container">
		<div class="row row-actions">
			<div class="col-md-12">
				<button type="button" class="btn btn-primary fa fa-plus" id="new-vehicle-entry">
					<fmt:message key="new.vehicle.entry" />
				</button>
			</div>
		</div>
		
		<div class="row mb-50px">
			<div class="col-md-12">
				<table class="table table-bordered table-hover datatable">
					<thead>
						<tr>
							<th><fmt:message key="vehicle" /></th>
							<th><fmt:message key="color" /></th>
							<th><fmt:message key="vehicle.plate" /></th>
							<th><fmt:message key="entry" /></th>
							<th><fmt:message key="actions" /></th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="parking" items="${parkings}">
							<tr>
								<td>${parking.vehicle.model.split("-", 2)[1]}</td>
								<td>${parking.vehicle.color.name}</td>
								<td>${parking.vehicle.getPlateMasked()}</td>
								<td>
									<javatime:format value="${parking.entry}" style="MS" />
								</td>
								<td class="text-center">									
									<button type="button" class="btn btn-danger btn-vehicle-exit" title="<fmt:message key="give.low" />" data-parking="${parking.id}">
										<i class="fa fa-arrow-down"></i>
									</button>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>			
			</div>
		</div>
	</div>
	
	<link href="<c:url value="/public/css/dataTables.bootstrap.min.css"/>" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="<c:url value="/public/js/jquery.dataTables.min.js" />"></script>
	<script type="text/javascript" src="<c:url value="/public/js/dataTables.bootstrap.min.js" />"></script>
	<c:import url="../components/start-datatable.jsp" />
	<c:import url="vehicle-entry-modal.jsp" />
	<c:import url="vehicle-exit-modal.jsp" />
<c:import url="../commom/foot.jsp" />

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/WEB-INF/view/templates/header.jsp" %>

<div class="container-wrapper">
	<div class="container">
		<div class="page-header">
			<div class="container">
			<h1>Product Inventory Page</h1>
			<p class="lead">This is the product inventory page </p>
			</div>
		</div>
		
		
		<table class="table table-striped table-hover">
				
				<thead>
					<tr class="bg-success">
					<th>Photo Thumb</th>
					<th>Product Name</th>
					<th>Category </th>
					<th>Condition</th>
					<th>Price </th>
					<th></th>
					</tr>
				</thead>
				
				<c:forEach items="${products }" var="urun">
					<tr>
						<td>
						<img src="<c:url value='/resources/images/.png' />" style="width:100%;" />
						</td>
						<td>${urun.productName}</td>
						<td>${urun.productCategory}</td>
						<td>${urun.productCondition }</td>
						<td>${urun.productPrice }USD</td>
						<td>
							<a href="<spring:url value='/product/viewProduct/${urun.productId }' />">
								<span style="color:green;" class="glyphicon glyphicon-info-sign"></span>
							</a>
							<a href="<spring:url value='/admin/product/deleteProduct/${urun.productId}' />">
								<span style="color:red;" class="glyphicon glyphicon-remove"></span>
							</a>
							<a href="<spring:url value='/admin/product/editProduct/${urun.productId }' />">
								<span class="glyphicon glyphicon-pencil"></span>
							</a>
						</td>
					</tr>
				</c:forEach>
		</table>
		
		
		<a href="<spring:url value='/admin/product/addProduct' />" class="btn btn-primary" >Add Product</a>
</div>
</div>


<%@ include file="/WEB-INF/view/templates/footer.jsp"%>
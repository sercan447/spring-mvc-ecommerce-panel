
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="/WEB-INF/view/templates/header.jsp" %>

<div class="container-wrapper">
	<div class="container">
		<div class="page-header">
			<h1>Bütün ÜRünler</h1>
			
			<p class="lead">Checkout all the awesome product available now </p>
		</div>
		
		<table class="table  table-striped table-hover">
	<thead>
	<tr>
	<th>Name</th>
	<th>Category </th>
	<th>Conditions</th>
	<th>Price</th>
	</tr>
	</thead>
	
	<c:forEach var="product" items="${products }">
	<tr>
		<td>${product.productName }</td>
		<td>${product.productCategory }</td>
		<td>${product.productCondition }</td>
		<td>${product.productPrice }</td>
		<td>
		<a href="<spring:url value='/product/viewProduct/${product.productId}' />">
		<span class="glyphicon glyphicon-info-sign"></span>
		</a>
		</td>
	</tr>
</c:forEach>
</table>
		
		
	</div>
</div>


<%@ include file="/WEB-INF/view/templates/footer.jsp" %>



<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="/WEB-INF/view/templates/header.jsp"%>


	<div class="container-wrapper">
		<div class="container">
			<div class="page-header">
			<div class="clearfix"></div>
			<div class="container">
				<h1>Add Product</h1>
				<p class="lead">Fİll the below information to add a product .</p>
				<p>--${dizin}</p>
			</div>
			
			
			<form:form action="${pageContext.request.contextPath }/admin/product/addProduct" 	
					   method="post" modelAttribute="product" enctype="multipart/form-data"> 
				
				<div class="form-group">
					<label for="name">Name </label>
					<form:errors  path="productName"  cssStyle="color:red;" />
					<form:input path="productName" id="name" class="form-control" />
				</div>
				
				<div class="form-group">
					<label for="category">Category</label>
					<label class="checkbox-inline">
						<form:radiobutton path="productCategory" id="category" value="instrument"/> Instrument
					</label>
					<label class="checkbox-inline">
						<form:radiobutton path="productCategory" id="category" value="record" />Record
					</label>
					<label class="checkbox-inline">
						<form:radiobutton  path="productCategory" id="category" value="accessory"/>Accessory
					</label>
				</div>
				
				<div class="form-group">
					<label for="description"></label>
					<form:textarea path="productDescription" id="description" class="form-control" />
				</div>
				
				<div class="form-group">
					<label for="price">Price</label>
					<form:errors path="productPrice" cssStyle="color:red;" />
					<form:input path="productPrice" id="price" class="form-control" />
				</div>
				
				<div class="form-group">
					<label for="status">Status</label>
					<label class="checkbox-inline">
						<form:radiobutton path="productStatus" id="status" value="active"/>Active
					</label>
					<label class="checkbox-inline">
						<form:radiobutton  path="productStatus" id="status" value="inactive"/>Inactive
					</label>
				</div>
				
				<div class="form-group">
					<label for="unitInStock">Unit In Stock</label>
					<form:errors  path="unitInStock" cssStyle="color:red;" />
					<form:input path="unitInStock" id="unitInStock" class="form-control" />
				</div>
				
				<div class="form-group">
					<label class="manufacturer">Manufacturer :</label>
					<form:input path="productManufacturer" id="manufacturer" class="form-control" />
				</div>
				
				
				<div class="form-group">
					<label class="control-label" for="productImage">Upload Picture :</label>
					<form:input id="productImage" path="productImage" type="file" class="form:input-large"/>
				</div>
				
				<br/> <br/>
				<input type="submit" value="submit" class="btn btn-default" />
				<a href="<c:url value='/admin/productInventory' />" class="btn btn-default">Cancel</a>
			</form:form>
			
			
			</div>
		</div>
	</div>
	

<%@ include file="/WEB-INF/view/templates/footer.jsp" %>
<%@ page contentType="text/html;charset=UTF-8"%>

<%@ include file="fragments/header.jsp"%>
	
	<body>
	
		<div class="container">		
			<div class="row my-5">										
				<div class="col form-frame">			
					<!-- Registration Form -->
					<form:form action="${pageContext.request.contextPath}/account/new/processing" 
						  	   modelAttribute="crmUser"
						  	   class="form-horizontal"
						  	   method="POST">
						  	   
						<div class="d-flex">
							<h3><strong>アカウント新規作成</strong></h3>
						</div>	
	
					    <!-- Place for messages: error, alert etc ... -->
					    <div class="form-group mt-3">
				            <div>							
								<!-- Check for registration error -->
								<c:if test="${registrationError != null}">							
									<div class="alert alert-danger">
										${registrationError}
									</div>	
								</c:if>		
								
								<c:if test="${successMessage != null}">							
									<div class="alert alert-success">
										${successMessage}
									</div>	
									
								</c:if>																		
				            </div>
					    </div>
					    
					    <form:input path="id" type="hidden" />
	
						<!-- User name -->
						<div class="mb-4">
							<label>User name <form:errors path="userName" cssClass="error" /></label>
							<form:input path="userName" placeholder="username (*)" class="form-control" />		
						</div>
	
						<!-- Password -->
						<div class="mb-4">
							<label>Password <form:errors path="password" cssClass="error" /></label>
							<form:password path="password" placeholder="password (*)" class="form-control" />						
						</div>
						
						<!-- Confirm Password -->
						<div class="mb-4">
							<label>Confirm password <form:errors path="matchingPassword" cssClass="error" /></label>
							<form:password path="matchingPassword" placeholder="confirm password (*)" class="form-control" />						
						</div>				
						
						<!-- First name -->
						<div class="mb-4">
							<label>First name <form:errors path="firstName" cssClass="error" /></label>
							<form:input path="firstName" placeholder="first name (*)" class="form-control" />						
						</div>
						
						<!-- Last name -->
						<div class="mb-4">
							<label>Last name <form:errors path="lastName" cssClass="error" /></label>
							<form:input path="lastName" placeholder="last name (*)" class="form-control" />						
						</div>
						
						<!-- Email -->
						<div class="mb-4">
							<label>Email <form:errors path="email" cssClass="error" /></label>
							<form:input path="email" placeholder="email (*)" class="form-control" />						
						</div>
						
						<!-- Roles -->
						<div class="mb-4">
							<label>Roles <form:errors path="roles" cssClass="error" /></label>
							<br>
							<form:radiobuttons  items="${roles}" path="roles" class="mx-3" />						
						</div>
		
						<!-- Register Button -->
						<div class="form-group">
							<button type="submit" class="btn btn-primary">Register</button>
						</div>
					</form:form>
					
					<div class="mt-3">
						<a style="font-size: 130%" href="${pageContext.request.contextPath}/login"><i class="fas fa-arrow-circle-left"></i>Back to login</a>
					</div>
					
				</div>
				
<%@ include file="fragments/footer.jsp"%>
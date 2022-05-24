<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="models.User" %>
<%@ page import="models.Skill" %>
<!DOCTYPE html>
<html>
<jsp:include page="shared/head.jsp"></jsp:include>

<body>
<!-- 
<jsp:useBean id="loggedUser" class="models.User" scope="request"/>
<jsp:setProperty property="*" name="loggedUser"/>
 -->


<% User user = (User)request.getAttribute("loggedUser"); 
	User sessionUser = (User) session.getAttribute("loggedUser");

%>


<jsp:include page="shared/header.jsp"></jsp:include>

	<div class="content">
	<% if(request.getAttribute("isThereACookie")==null) { %>
	<h2>Добре дошли!</h2>
	<form action="cookie" method="post">
	<input type="submit" value="Изключи" />
	</form>
	
	<% } %>
		<div>
			<div class="profile-image-container">
				<img src="images/male.svg" />
			</div>
			<div class="profile-info-container">
				<h2>Профилна информация</h2>
			 
				<a href="user?id=<%=user.getId()%>&action=edit" id="editButton">Редактирай профила</a>
			 
				
				
				<p>Име: <%= user.getPersonalName() %></p>
				
<!--<jsp:getProperty property="personalName" name="loggedUser"/>-->
				
				<p>Професия: <%= user.getJobTitle() %></p>
				<p>Описание: <%= user.getDescription() %> </p>

			</div>
		</div>
		<h2>Умения</h2>

		<div class="skills-container">
			<div class="skills-container-element">
			
			<% for(Skill skill:user.getItSkills()) { %>
			
				<div>
					<label><%= skill.getSkillName() %></label>
					<div class="outer-progress">
						<div class="inner-progress" style="width: <%= skill.getSkillValue() %>%"></div>
					</div>
				</div>
			<%} %>

			</div>

			<div class="skills-container-element">
			
						<% for(Skill skill:user.getPersonalSkills()) { %>
				<div>
					<label><%= skill.getSkillName() %></label>
					<div class="outer-progress">
						<div class="inner-progress" style="width: <%= skill.getSkillValue() %>%"></div>
					</div>
				</div>
					<% } %>
			
			</div>


		</div>
		<h2>Контакти</h2>

		<div class="skills-container">
			<div class="skills-container-element">
				<div>
					<label>E-mail</label>
					 <p class="profile-info-in-orange"><%= user.getEmail() %></p>
				</div>

				<div>
					<label>Град</label>
					 <p class="profile-info-in-orange"><%= user.getAddress().getCity() %></p>
				</div>

			</div>

			<div class="skills-container-element">
				<div>
					<label>Телефон</label>
					 <p class="profile-info-in-orange"><%= user.getPhone() %></p>
					 
				</div>
				<div>
					<label>Улица</label>
					 <p class="profile-info-in-orange"><%= user.getAddress().getStreet() %></p>			 
				</div>			
			</div>
		</div>
	</div>
<jsp:include page="shared/footer.jsp"></jsp:include>

</body>
</html>
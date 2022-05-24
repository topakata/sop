<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="models.User"%>
<%@ page import="models.Skill"%>
<!DOCTYPE html>
<html>
<jsp:include page="shared/head.jsp"></jsp:include>

<body>
	<!-- 
<jsp:useBean id="loggedUser" class="models.User" scope="request"/>
<jsp:setProperty property="*" name="loggedUser"/>
 -->

	<%
	User user = (User) session.getAttribute("loggedUser");

	%>

	<jsp:include page="shared/header.jsp"></jsp:include>

	<div class="content">
		
		
			<div>
				<div class="profile-image-container">
					<img src="images/male.svg" />
				</div>
				
				<form class="edit-info">
				<div class="profile-info-container">
					<h2>Профилна информация</h2>
					<p>Име:</p>		
					<input type="hidden" name="id" value="<%= user.getId() %>" />

					<input type="text" name="personalName" value="<%=user.getPersonalName()%>">

					<p>Професия:</p>
					<input type="text" name="jobTitle" value="<%=user.getJobTitle()%>">
					
					<p>Описание:
					</p>
					<input type="text" name="description" value="<%=user.getDescription()%>">
				<input type="button" onclick="editProfileInfo()" value="Запази" />
				<span id="sussess-info"></span>
				</div>
				</form>
			</div>
			<h2>Умения</h2>

			<div class="skills-container">
				<div class="skills-container-element">

					<%
					int i=0;
					for (Skill skill : user.getItSkills()) {
					%>
					<div>
					<input type="text" name="it-skill-name<%=i%>" value="<%=skill.getSkillName()%>">
					<input type="range" name="it-skill-value<%=i%>" value="<%=skill.getSkillValue()%>"
					min="0" max="100" step="10"/>
					</div>
					<%
					i++;
					}
					%>

				</div>

				<div class="skills-container-element">

					<% int j=0;
					for (Skill skill : user.getPersonalSkills()) {
					%>
					<div>
					<input type="text" name="prof-skill-name<%=j%>" value="<%=skill.getSkillName()%>">
					<input type="range" name="prof-skill-value<%=j%>" value="<%=skill.getSkillValue()%>"
					min="0" max="100" step="10"/>
					</div>
					<% j++;
					}
					%>

				</div>


			</div>
			<h2>Контакти</h2>

			<div class="skills-container">
				<div class="skills-container-element">
					<div>
						<label>E-mail</label>
						<input type="text" name="email" value="<%=user.getEmail()%>">
					</div>

					<div>
						<label>Град</label>
						<input type="text" name="city" value="<%=user.getAddress().getCity()%>">
					</div>

				</div>

				<div class="skills-container-element">
					<div>
						<label>Телефон</label>
						<input type="text" name="phone" value="<%=user.getPhone()%>">
					</div>
					<div>
						<label>Улица</label>
						<input type="text" name="street" value="<%=user.getAddress().getStreet()%>">
					</div>
				</div>
			</div>
			<div>
			<input type="submit" value="Редактирай данните"/>
</div>
	
	</div>
	<jsp:include page="shared/footer.jsp"></jsp:include>

</body>
</html>
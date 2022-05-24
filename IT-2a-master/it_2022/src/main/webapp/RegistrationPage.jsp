<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="bg">
<jsp:include page="shared/head.jsp"></jsp:include>
<body>
<jsp:include page="shared/header.jsp"></jsp:include>
	<div class="content">
		<h1>Създаване на профил</h1>
		<div class="form-container">
			<form action="registration" method="post">
				<div class="mt20-mb10">
					<label for="personal-name">Име</label> 
					<input type="text" name="personal-name" id="personal-name"
						placeholder="Въведете име за контакт" />
				</div>
				<div class="mt20-mb10">
					<label for="username">Потребителско име</label> <input type="text"
						name="username" id="username"
						placeholder="Въведете потребителско име" />
				</div>
				<div class="mt20-mb10">
					<label for="password">Парола</label> <input type="password"
						name="password" id="password"
						placeholder="Въведете парола с поне 8 символа" />
				</div>
				<div class="mt20-mb10">
					<label for="repeat-password">Повторете паролата</label> <input
						type="password" name="repeat-password" id="repeat-password"
						placeholder="Повторете парола поне с 8 символа" />
				</div><input type="submit" value="Вход" />
				
			</form>

		</div>
	</div>
<jsp:include page="shared/footer.jsp"></jsp:include>

</body>
</html>
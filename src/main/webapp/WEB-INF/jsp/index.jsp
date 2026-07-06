<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Iniciar sesión</title>
</head>

<body>
    <% 
    String loginMessage=(String) session.getAttribute("loginmessage"); 
    if ("fail".equals(loginMessage)) { 
    %>
        <p style="color:red;">Usuario o contraseña incorrectos.</p>
    <% 
    } else if ("success".equals(loginMessage)) { 
    %>
        <p style="color:green;">Inicio de sesión exitoso.</p>
    <% 
    } // Elimina el mensaje para que solo aparezca una vez session.removeAttribute("loginmessage"); 
    %>
    <form action="${pageContext.request.contextPath}/login" method="post">
        <div>
            <label for="user">Usuario:</label>
            <input type="text" id="user" name="user" required>
        </div>
        <br>
        <div>
            <label for="password">Contraseña:</label>
            <input type="password" id="password" name="password" required>
        </div>
        <br>
        <button type="submit">Iniciar sesión</button>
    </form>
    <a href="${pageContext.request.contextPath}/regist">Registrarme</a>
</body>

</html>
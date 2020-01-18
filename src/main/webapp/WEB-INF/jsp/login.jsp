<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Fitness Tracker Custom Login Page</title>
    <style type="text/css">
        .errorblock {
            color: #ff0000;
            background-color: #ffEEEE;
            border: 3px solid #ff0000;
            padding: 8px;
            margin: 16px;
        }
    </style>
</head>
<body onload='document.f.j_username.focus();'>
    <h3>Fitness Tracker Custom Login Page</h3>
    <c:if test="${not empty error}"><!--looks for the 'error' attribute that's created in the loginFailed in LoginController-->
        <div class="errorblock">
            Your login was unsuccessful. <br />
            Caused by: ${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}
        </div>
    </c:if>

    <form action="j_spring_security_check" name="f" method="post"><!--j_spring_security_check is the url Spring looks to post to-->
        <table>
            <tr>
                <td>User:</td>
                <td><input type="text" name="j_username" value=""></td>
            </tr>
            <tr>
                <td>Password:</td>
                <td><input type="password" name="j_password"></td>
            </tr>
            <tr>
                <td colspan="2"><input type="submit" name="Submit" value="Submit"></td>
            </tr>
            <tr>
                <td colspan="2"><input type="reset" name="reset"></td>
            </tr>
        </table>
    </form>
</body>
</html>

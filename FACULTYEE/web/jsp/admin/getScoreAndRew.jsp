<%@ page import="by.traning.nc.dev3.beans.UserSHeetlist" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Training.by</title>
    <link href="js/bootstrap-3.3.2-dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="js/bootstrap-3.3.2-dist/css/bootstrap-theme.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <script src="js/jquery-3.1.1.min.js"></script>
    <script src="js/bootstrap-3.3.2-dist/js/bootstrap.min.js"></script>
    <script src="js/script.js"></script>
    <script src="js/jquery-validation/dist/jquery.validate.min.js"></script>
</head>
<body>
<nav class="navbar navbar-my" role="navigation">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                    data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">Training.by</a>
        </div>
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li><a href="controller?command=show_course_adm">Список Курсов</a></li>
            </ul>

            <form class="navbar-form navbar-left" role="search">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="Искать">
                </div>
                <button type="submit" class="btn btn-default"><span class="glyphicon glyphicon-search"></span> Искать
                </button>
            </form>
            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" class="glyphicon glyphicon-user" data-toggle="dropdown"> ${user}<span
                            class="caret"></span></a>
                    <ul class="dropdown-menu" role="menu">
                        <li><a href="controller?command=edit_page_admin">Редактировать</a></li>
                        <c:if test="${userType == 'ADMIN'}">
                            <li><a href="controller?command=show_stud">Студенты</a></li>
                            <li><a href="controller?command=show_sheet_student">Записи на курс</a></li>
                            <li><a href="controller?command=add_course">Добавить курс</a></li>
                        </c:if>
                        <li class="divider"></li>
                        <li><a href="controller?command=logout">Выйти</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>
<table class="table table-hover">
    <thead>
    <tr>
        <th>ID листа</th>
        <th>ID студента</th>
        <th>Имя</th>
        <th>Фамилия</th>


    </tr>
    </thead>
    <tbody>
    <form name="test" method="post" action="controller?command=set_score">
        <c:forEach var = "UserSHeetlist" items="${userSHeetlists}" varStatus="i">
        <tr>
            <td><c:out value="${ UserSHeetlist.sheetId}" /></td>
            <td><c:out value="${ UserSHeetlist.idStudent }" /></td>
            <td><c:out value="${ UserSHeetlist.firstName }" /></td>
            <td><c:out value="${ UserSHeetlist.lastName }" /></td>
            <td>

                <p><b>Оценка:</b><br>
                    <input name="score" type="text" size="15"></p>
                    <p><b>Комментарий:</b><br>
                        <input name="shortcomment" type="text" size="15"></p>
            </td>

            </tr>
            <input type="hidden" name="sheetId" value="${UserSHeetlist.sheetId}" />
        </c:forEach>
            <p>
                <input type="hidden" name="id_course" value="<%= request.getAttribute("idCourse") %>">
                <input type="submit" value="Выставить"></p>
    </form>
    </tbody>


</table>
</body>
</html>
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
${userType}
ЭТО ВООБЩЕ РАБОТАЕТ МАТЬ ЕГО


<table class="table table-hover">
    <thead>
    <tr>
        <th>№</th>
        <th>Название</th>
        <th>Препод</th>
        <th>Описание</th>
        <th>Статус</th>
    </tr>
    </thead>
    <tbody>


<c:forEach var = "course" items="${courseList}" varStatus="i">
    <form method="post" action="controller?command=get_score">
    <tr>
        <td><c:out value="${course.idCourse}" /></td>
        <td><c:out value="${ course.name }" /></td>
        <td><c:out value="${ course.teacher }" /></td>
        <td><c:out value="${ course.courseDescription }" /></td>
        <td><c:out value="${ course.status}" /></td>
        <td> <input type="hidden" name="id_course" value="${course.getIdCourse()}">
            <c:if test="${course.status == 'ENDED'}">
            <button type="submit">Выставить</button></td>
        </c:if>
        <input type="hidden" name="user_id" value="<%= session.getAttribute("userId") %>" />
       </tr>
    </form>

</c:forEach>


    </tbody>>


</table>
</body>






</html>
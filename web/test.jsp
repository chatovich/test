<%@ page language="java" contentType="text/html;charset=utf-8"  pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page session="true" %>


<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta http-equiv="Cache-Control" content="no-cache">
    <title>Movie rating</title>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <script src="js/bootstrap.min.js"></script>

</head>


<body>
<form class="form-horizontal" action="parsing" enctype="multipart/form-data" method="post" name="test">
    <fieldset>

        <div class="form-group">
            <label class="col-md-4 control-label" for="textinput">Select Parsing Type</label>
            <div class="col-md-4">
                <select  id="textinput" name="textinput" class="form-control">
                    <option value="sax">SAX</option>
                    <option value="stax">StAX</option>
                    <option value="dom">DOM</option>
                </select>
            </div>
        </div>
        <br>
        <div class="form-group">
            <label class="col-md-4 control-label" for="file"></label>
            <div class="col-md-4">
                <input id="file" name="file" class="input-file" type="file">
            </div>
        </div>
        <p><input type="submit" value="Отправить"></p>

        <%--<p><select size="3" name="textinput">--%>
            <%--<option disabled>Выберите героя</option>--%>
            <%--<option value="Чебурашка">Чебурашка</option>--%>
            <%--<option value="Шапокляк">Шапокляк</option>--%>
            <%--<option value="Крыса Лариса">Крыса Лариса</option>--%>
        <%--</select></p>--%>
        <%--<p><input type="submit" value="Отправить"></p>--%>

    </fieldset>
</form>

</body>
</html>

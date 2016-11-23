<%@ page language="java" contentType="text/html;charset=utf-8"  pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page session="true" %>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta http-equiv="Cache-Control" content="no-cache">
    <title>Parsing</title>
    <link href="../css/bootstrap.min.css" rel="stylesheet" />
    <script src="../js/bootstrap.min.js"></script>
</head>

<body>
<div>
<form class="form-horizontal" action="parsing" role="form" enctype="multipart/form-data" method="post" name="parsing">
    <fieldset>

        <div class="form-group">
            <label class="col-md-4 control-label" for="selectbasic">Select Parsing Type</label>
            <div class="col-md-4">
                <select id="selectbasic" name="selectbasic" class="form-control">
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

    </fieldset>
</form>
    </div>

<c:if test="${listsUploaded}">

    <table border="1" align="center">
        <caption>Caramels using ${parsingType}</caption>
        <tr>
            <th>name</th>
            <th>ccal</th>
            <th>production</th>
            <th>flavor</th>
            <th>ingridients</th>
            <th>nutritional</th>
        </tr>
    <c:forEach var="candy" items="${caramels}" >
    <tr>
        <td>${candy.name}</td>
        <td>${candy.ccal}</td>
        <td>${candy.production}</td>
        <td>${candy.flavor}</td>
        <td>
            <c:forEach var="ingr" items="${candy.ingridients}" >
                ${ingr},

            </c:forEach>
        </td>
        <td>
            <c:forEach var="ingr" items="${candy.nutritionals}" >
                ${ingr},

            </c:forEach>
        </td>
    </tr>
    </c:forEach>
</table>

    <table border="1" align="center">
        <caption>Chocolates using ${parsingType}</caption>
        <tr>
            <th>name</th>
            <th>ccal</th>
            <th>production</th>
            <th>filling</th>
            <th>ingridients</th>
            <th>nutritional</th>
        </tr>
        <c:forEach var="candy" items="${chocolates}" >
            <tr>
                <td>${candy.name}</td>
                <td>${candy.ccal}</td>
                <td>${candy.production}</td>
                <td>${candy.fillng}</td>
                <td>
                    <c:forEach var="ingr" items="${candy.ingridients}" >
                        ${ingr},

                    </c:forEach>
                </td>
                <td>
                    <c:forEach var="ingr" items="${candy.nutritionals}" >
                        ${ingr},

                    </c:forEach>
                </td>
            </tr>
        </c:forEach>
    </table>
</c:if>

</body>

</html>
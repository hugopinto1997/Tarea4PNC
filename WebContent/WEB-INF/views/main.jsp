<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
</head>
<body>
<H1>${message }</H1>
<form:form action="${pageContext.request.contextPath}/formData" method="POST" modelAttribute="producto">
<label>Ingrese un nombre: </label><form:input type="text" name="nombre" path="nombre"/>
<form:errors path="nombre" cssStyle="color:#E81505;"></form:errors><br>
<br>
<label>Ingrese la marca: </label><form:input type="text" name="marca" path="marca"/>
<form:errors path="marca" cssStyle="color:#E81505;"></form:errors><br>
<br>
<label>Ingrese descripcion: </label><form:input type="text" name="descripcion" path="descripcion"/>
<form:errors path="descripcion" cssStyle="color:#E81505;"></form:errors><br>
<br>
<label>Ingrese la categpria: </label><form:input type="text" name="categoria" path="categoria"/>
<form:errors path="categoria" cssStyle="color:#E81505;"></form:errors><br>
<br>

<label>Ingrese precio: </label><form:input type="number" min="1" step="any" name="precio" path="precio"/>
<form:errors path="precio" cssStyle="color:#E81505;"></form:errors><br>
<br>
<label>Ingrese fecha: </label><form:input type="date" name="fecha" path="fecha"/>
<form:errors path="fecha" cssStyle="color:#E81505;"></form:errors><br>
<br>

<input type="submit" value="Agregar producto">

</form:form>
</body>
</html>
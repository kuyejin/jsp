<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*" %>

<%--선언문(Declare) : 익명클래스를 선언, 현재 문서에서만 유효 <%! %> 로 감싼다. --%>
<%!
  private String name;

  public String getName() {
    return this.name;
  }

  public void setName(String name) {
    this.name = name;
  }
%>

<!DOCTYPE html>
<html>
<head>
  <title>기본 구성 요소</title>
</head>
<body>
<%-- 스크립트릿 : 자바 코딩 , <% %>로 감싼다. --%>
<%
  setName("김기태");
  String addr = "가산동";
%>

<hr>

<%-- 표현식(Expresion): 값을 가져와 출력,  <%=%>로 감싼다 --%>
<p>이름 : <%=getName()%></p>
<p>주소 : <%=addr%></p>
<a href="Test01.jsp">test01로 이동</a><br>
<a href="Test02.jsp">로그인 폼 이동</a><br>
<a href="test03.jsp">설문조사(복수 값 전달) 폼 이동</a><br>
<a href="test04.jsp?msg=한시간남았네">요청 정보 및 헤더 정보 이동</a><br>

<a href="test06.jsp">Response_로그인창</a><br>
</body>
</html>
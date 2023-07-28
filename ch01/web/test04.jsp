<%@ page import="java.util.Enumeration" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>헤더 정보 출력하기</title>
    <%
        request.setCharacterEncoding("UTF-8");
        String msg = request.getParameter("");
    %>
</head>
<body>
<div class="container">
    <h2 class="title">요청 정보 및 헤더 정보 출력하기</h2>
    <hr>
    <%--ul.list>li*14>span+strong--%>
    <ul class="list">
        <li><span>메시지 </span> : <strong><%=msg%>
        </strong></li>
        <li><span>프로토콜 </span> : <strong><%=request.getProtocol()%>
        </strong></li>
        <li><span>요청된 서버 이름 </span> : <strong><%=request.getServerName()%>
        </strong></li>
        <li><span>요청 방식 </span> : <strong><%=request.getMethod()%>
        </strong></li>
        <%--문자열 뒤에 있는 쿼리가 뭔지 보여준다--%>
        <li><span>파리미터열 </span> : <strong><%=request.getQueryString()%>
        </strong></li>
        <li><span>요청주소 </span> : <strong><%=request.getRequestURL()%>
        </strong></li>
        <li><span>요청URI </span> : <strong><%=request.getRequestURI()%>
        </strong></li>
        <li><span>서버이름 </span> : <strong><%=request.getRemoteHost()%>
        </strong></li>
        <li><span>서버주소 </span> : <strong><%=request.getRemoteAddr()%>
        </strong></li>
        <li><span>서버포트(원격) </span> : <strong><%=request.getRemotePort()%>
        </strong></li>
        <li><span>서버포트(지역) </span> : <strong><%=request.getServerPort()%>
        </strong></li>
        <%--중요함--%>
        <li><span>현재 문서의 경로 </span> : <strong><%=request.getContextPath()%>
        </strong></li>
        <li><span>헤더의 어셉트 </span> : <strong><%=request.getHeaders("Accept")%>
        </strong></li>
        <li><span>헤더의 호스트(host) </span> : <strong><%=request.getHeaders("Host")%>
        </strong></li>

    </ul>

    <hr>
    <br>
    <hr>
    <table class="table" id="tb1">
        <caption><h2>헤더 정보</h2></caption>
        <tbody>
        <%
            /*헤더 정보를 열거형에 담음*/
            Enumeration e = request.getHeaderNames();
            while (e.hasMoreElements()) {
                String hdName = (String) e.nextElement();
        %>
        <tr>
            <td><%=hdName%>
            </td>
            <td><%=request.getHeader(hdName)%>
            </td>
        </tr>
        <%
            }
        %>
        </tbody>


    </table>

    <hr>
    <%--id 출력값 null 이 나온다
    research.jsp에     <a href="test04.jsp?id=<%=id%>" >테스트04으로 이동하기</a> 변경해줘야함
    --%>
    <p>정보 : <%=request.getParameter("id")%></p>
</div>


</body>
</html>
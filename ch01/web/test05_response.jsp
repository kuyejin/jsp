<%@ page contentType="text/html;charset=UTF-8" pageEncoding="utf-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Response</title>

    <%--변환 꼭 해줘야함--%>
    <%
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html; charset=utf-8");

    %>


</head>
<body>

<%
    /*아이디 패스워드 받기*/
    String id = request.getParameter("id");
    String pw = request.getParameter("pw");
    String msg = "";
    //Cookie ck = null;

    response.addHeader("Site", "http://chunjae.co.kr");
    response.setHeader("Url2", "http://github.com/kuyejin");

    //System.out.println(); 콘솔창에 출력
    //out.println("<h2>Response + Session 알아보기</h2>"); //web에 출력

    if (id.equals("admin") && pw.equals("1234")) {
        //response.addCookie(ck); //쿠키로 로그인 처리

        //session.setAttribute("id",id); //세션 로그인처리
        //session.setAttribute("pw", pw); //세션 로그인처리
        //session.removeAttribute("id"); //세션 속성 비우기
        //session.removeAttribute("pw"); //세션 속성 비우기

        //session.invalidate();// 로그아웃 처리 -> 한방에 처리

        msg = "로그인 성공";

        //response.setStatus(200); //수동 정상 처리
        //response.sendError(200,"페이지가 정상적으로 처리되었습니다.");

        /*로그인 성공 시 다시 돌아가기*/
        //response.sendRedirect("test05.jsp");
        //response.sendRedirect("test05.jsp?msg=" + msg);

    } else {
        msg = "로그인 실패";
        //response.setStatus(404); //수동 정상 처리
        //response.sendError(404,"페이지가 존재하지 않습니다.");
        //response.sendRedirect("test05.jsp?msg="+msg);
    }
%>

<div class="container">

    <p><a href='test05.jsp?msg= "+ <%=msg%>+ "'> <%=msg%> 요청 페이지로 이동</a></p>
    <hr>




</div>

</body>
</html>
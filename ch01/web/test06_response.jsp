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

        application.setAttribute("appname", "천재교육");
        String id = request.getParameter("id");
        String pw = request.getParameter("pw");

        String[] idArr = {"admin","kim","lee"};
        String[] pwArr = {"1234", "4321", "1111"};

    %>


</head>
<body>

    <h2>페이지 출력</h2>
<div id ="mag">
<%
    String msg ="로그인 실패";
    for(int i=0; i<idArr.length;i++){
        if(idArr[i].equals(id) && pwArr[i].equals(pw)){
            session.setAttribute("id",id); //세션 로그인처리
            session.setAttribute("pw", pw); //세션 로그인처리

            //session.removeAttribute("id"); //세션 속성 비우기
            //session.removeAttribute("pw"); //세션 속성 비우기
            //session.invalidate();// 로그아웃 처리 -> 한방에 처리
            msg = " 로그인 성공";
        }
    }

    //response.sendRedirect("test06.jsp?msg=" + msg);
    response.addHeader("Site", "http://chunjae.co.kr");
    response.setHeader("Url2","http://github.com/kuyejin");
    response.setStatus(200); //성공 처리
    //response.setStatus(404); //수동 정상 처리
    //response.sendError(404,"페이지가 존재하지 않습니다.");


%>

    <p><a href='test06.jsp?msg= "+ <%=msg%>+ "'> <%=msg%> 요청 페이지로 이동</a></p>
    <p> 콘텐츠 유형 : <%=response.getContentType()%></p>
    <p> 문자 인코딩 : <%=response.getCharacterEncoding()%></p>
    <p> 추가된 헤더 : <%=response.getHeader("Site")%></p>
    <p> 설정된 헤더 : <%=response.getHeader("Url2")%></p>
    <p> 추가된 헤더 존재 유무 확인 : <%=response.containsHeader("Site")%></p>
    <p> 설정된 헤더 존재 유무 확인 : <%=response.containsHeader("Url2")%></p>
    <p> 저장된 상태코드 : <%=response.getStatus()%></p>
    <p> 저장된 세션정보 아이디 : <%=session.getAttribute("id")%></p>
    <p> 저장된 세션정보 비밀번호 : <%=session.getAttribute("pw")%></p>




</div>

</body>
</html>
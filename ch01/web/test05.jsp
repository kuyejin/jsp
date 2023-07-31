<%@ page contentType="text/html;charset=UTF-8" pageEncoding="utf-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Response 객체</title>
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"  integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>

    <%--변환 꼭 해줘야함--%>
    <%
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html; charset=utf-8");
    %>

</head>


<body>
<h2>Response 연습</h2>

    <%--div.container>h2.title+form.frm<--%>
    <div class="container">
        <h2 class="title">로그인</h2>

        <form name="login_form" action="test05_response.jsp" method="post">
            <%-- table.table#tb1>tbody>tr*3>(th>label{레이블})+(td>input)--%>
            <table class="table" id="tb1">

                <tbody>
                    <tr>
                        <th><label for="id">아이디</label></th>
                        <td><input type="text" name="id" id="id" required autofocus></td>
                    </tr>
                    <tr>
                        <th><label for="pw">비밀번호</label></th>
                        <td><input type="password" name="pw" id="pw" required></td>
                    </tr>

                    <tr>
                        <td colspan="2">
                            <input type="submit" value="로그인" class="btn btn-primary">
                            <input type="reset" value="취소" class="btn btn-danger">
                        </td>
                    </tr>

                </tbody>

            </table>
        </form>
    </div>


<hr>
<%--redirect했을 때 뜨는 정보--%>

<div id="msg">
    <%
        String msg = request.getParameter("msg");
        /* getAttribute는 꼭 String으로 변경해줘야함 -> 객체이기 때문에 */
        String id = (String) session.getAttribute("id");
        String pw = (String) session.getAttribute("pw");
    %>

    <div class="contaier">
        <h2>로그인 정보</h2>

        <%
            if(msg != null){
        %>
        <p>메시지:</p>

    </div>


    <h2>로그인 정보</h2>
    <p><%=msg%></p>
    <%
        if(id != null){
    %>

            <p>id: <%=id%></p>
            <p>pw: <%=pw%></p>


    <%
        }
    %>

</div>


</body>
</html>
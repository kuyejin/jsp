<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>로그인 폼</title>
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
            crossorigin="anonymous"></script>
</head>
<body>

<div>
    <%--div.container>h2.title+form.frm<--%>
    <div class="container">
        <h2 class="title">로그인</h2>

        <form action="Loginpro.jsp" class="frm" method="post">
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
                        <input type="submit" value="로그인" class="btn btn-danger">
                        <input type="reset" value="취소" class="btn btn-primary">
                    </td>
                </tr>

                </tbody>

            </table>
        </form>
    </div>

    <hr>

    <div class="container">
        <%-- get방식으로 보냈기 때문에 url에 정보 뜸--%>
        <a href="Loginpro.jsp?qty=2&price=40000" class="btn btn-primary" methods="get">Get 전송</a>
    </div>


</div>

</body>
</html>
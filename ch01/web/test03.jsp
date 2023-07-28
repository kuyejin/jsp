<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Title</title>
</head>
<body>
<div class="container">
    <h2 class="title">설문조사</h2>
    <%--form.frm>table.table#tb1>tbody>tr*5>(th>label)+(td>input)--%>
    <form action="research.jsp" class="frm" method="post">
        <table class="table" id="tb1">
            <tbody>
            <tr>
                <th><label for="id">아이디</label></th>
                <td><input type="text" name="id" id="id" required autofocus></td>
            </tr>
            <tr>
                <th><label for="year">출생년도</label></th>
                <%--step은 몇단계씩 올라가는 지 / value는 기본값--%>
                <td><input type="number" name="year" id="year" min="1970" max="2024" step="1" value="2000" required>
                </td>
            </tr>
            <tr>
                <th><label for="name">이름</label></th>
                <td><input type="text" name="name" id="name" required></td>
            </tr>
            <tr>
                <th><label>좋아하는 동물</label></th>
                <td>
                    <%--(input[type=checkbox][value=$]#pet$+label[for=pet$])*4--%>
                    <input type="checkbox" name="pet" value="dog" id="pet1" checked>강아지<br>
                    <input type="checkbox" name="pet" value="cat" id="pet2">고양이<br>
                    <input type="checkbox" name="pet" value="cow" id="pet3">송아지<br>
                    <input type="checkbox" name="pet" value="horse" id="pet4">망아지<br>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="submit" value="값 전송" class="btn btn-danger">
                    <input type="reset" value="취소" class="btn btn-primary">
                </td>
            </tr>
            </tbody>
        </table>
    </form>
</div>

</body>
</html>
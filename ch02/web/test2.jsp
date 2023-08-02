<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ page import="java.util.*" %>
<%@ page import="dto.Student" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> 객체 제어 </title>
</head>
<body>
<%--
sendRedirect : 해당 URL로 페이지 이동

forward : URL은 그대로이고, 브라우저의 내용은 디스패처에서 저장한 페이지의 내용이 보인다
-> 브라우저 내용은 test3.jsp의 내용

--%>
<%
    //보내는 곳에서 담는 부분
    Student st1 = new Student();
    st1.setNo(1);
    st1.setName("구예진");
    st1.setKor(90);
    st1.setEng(80);
    st1.setMat(75);
    st1.setMat(100);
    request.setAttribute("st1", st1); //객체 담기



    ArrayList<Student> st = new ArrayList<>();

    Student s = new Student();
    s.setNo(2);
    s.setName("이은영");
    s.setKor(80);
    s.setEng(90);
    s.setMat(100);
    st.add(s);

    Student s2 = new Student();
    s2.setNo(3);
    s2.setName("신승원");
    s2.setKor(100);
    s2.setEng(100);
    s2.setMat(100);
    st.add(s2);
    request.setAttribute("st", st);

    ArrayList<String> list = new ArrayList<>();
    list.add("오세훈");
    list.add("백준철");
    list.add("구예진");
    list.add("신승원");
    request.setAttribute("lst", list);

    HashSet<String> set = new HashSet<>();
    set.add("오태훈");
    set.add("김현경");
    set.add("박진권");
    set.add("김보경");
    set.add("신예은");
    set.add("김현경");
    request.setAttribute("set", set);

    HashMap<String, String> map = new HashMap<>();
    map.put("no", "4");
    map.put("name", "서광");
    map.put("kor", "80");
    map.put("mat", "100");
    map.put("eng", "60");
    request.setAttribute("map", map);

    // 디스패처로 보내야함
    // 보내질 곳 지정
    //RequestDispatcher rd = request.getRequestDispatcher("보내질 곳");
    RequestDispatcher rd = request.getRequestDispatcher("test3.jsp");

    // 실어줘야함
    rd.forward(request, response);

    //사이트 이동할 때 사용
    //response.sendRedirect("test3.jsp?map=" + map);
%>

<%
    //받는 곳에서 출력하는 부분
    out.println("<p>번호 :" + st1.getNo() + "</p>");

%>
<p>이름 : <%=st1.getName()%></p>
<p>국어 : <%=st1.getKor()%></p>
<p>영어 : <%=st1.getEng()%></p>
<p>수학 : <%=st1.getMat()%></p>
<p>총점 : <%=st1.getKor() + st1.getEng() + st1.getMat()%></p>


</body>
</html>
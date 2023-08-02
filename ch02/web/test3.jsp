<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ page import="java.util.*" %>
<%@ page import="dto.Student" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>객체를 받는 곳</title>

    <%
        // 객체를 가져옴
        request.setCharacterEncoding("UTF-8");


        // 객체 받아올 때 꼭 형변환 해주기!!!!!!!!
        Student st1 =(Student) request.getAttribute("st1");
        List<Student> st = (List<Student>)request.getAttribute("st");
        ArrayList<Student> lst = (ArrayList<Student>)request.getAttribute("lst");
        HashSet<String> set =  (HashSet<String>)request.getAttribute("set");
        HashMap<String, String> map = (HashMap<String, String>)request.getAttribute("map");


    %>


</head>
<body>
<div class="container">
    <h1>Student </h1>

    <h2>Student Object</h2>
    <ul class="st1">
        <li>번호 : <%=st1.getNo()%></li>
        <li>이름 : <%=st1.getName()%></li>
        <li>국어 : <%=st1.getKor()%></li>
        <li>영어 : <%=st1.getEng()%></li>
        <li>수학 : <%=st1.getMat()%></li>
    </ul>




    <hr>
    <h2>Student List</h2>
    <%
        for(int i =0; i<st.size(); i++){
            Student stu1 = st.get(i);

    %>
    <ul class="stu1">
        <li>번호 : <%=stu1.getNo()%></li>
        <li>이름 : <%=stu1.getName()%></li>
        <li>국어 : <%=stu1.getKor()%></li>
        <li>영어 : <%=stu1.getEng()%></li>
        <li>수학 : <%=stu1.getMat()%></li>
    </ul>
    <%
        }
    %>



    <hr>
    <h2>ArrayList Collection</h2>
    <ul>
            <%
            for(int i=0;i<lst.size();i++){
        %>
        <li><%=lst.get(i) %></li>
            <%
            }
        %>


        <hr>
        <h2>Hashset</h2>
        <ul>
        <%
            Iterator iter = set.iterator();
            while (iter.hasNext()){
        %>
        <li><%=iter.next()%></li>
        <%
            }
         %>
        </ul>



        <hr>
        <h2>HashMap</h2>
        <%
            Set<Map.Entry<String, String>> entrySet = map.entrySet();
            for(Map.Entry<String, String> entry : entrySet){
        %>
        <li>
            키: <span><%=entry.getKey()%></span>
            값: <span><%=entry.getValue()%></span>
        </li>

        <%
            }
        %>

    <h2>Map Object Access</h2>
    <h3>Map의 키만 출력 : keySet()</h3>
    <%
        Set<String> keys = map.keySet(); //키의 set
        for(String key : keys){
    %>
        <p> 키 : <%=key %></p> <%--키만 출력--%>
       <%-- <p> 값 : <%=map.get(key) %></p>--%>

    <%
        }
    %>

    <h3>Map의 값만 출력 : values() </h3>
    <%
        Collection<String> val = map.values();
        for(String item:val){

    %>
        <p><%=item%></p>
    <%
        }
    %>

</div>

</body>
</html>
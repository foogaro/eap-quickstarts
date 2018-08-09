<html>
<head><title>.::. Clustering Test v2.0 .::.</title></head>
<body>
<h2>Clustering Test v2.0</h2>

<%
    Object sessAttr = session.getAttribute("visitors");
    Object sessAttr2 = session.getAttribute("counter");
    int visitors = sessAttr == null ? 0 : Integer.valueOf(sessAttr+"");
    int counter = sessAttr == null ? 0 : Integer.valueOf(sessAttr2+"");
    System.out.println("********************************+");
    System.out.println("Visitor(s): " + visitors);
    System.out.println("Counter(s): " + counter);
    System.out.println("********************************+");
%>

<h2>Visitor(s): <%=visitors%></h2>
<h2>Counter(s): <%=counter%></h2>

<%
    session.setAttribute("visitors", ++visitors);
    session.setAttribute("counter",++counter);
%>

</body>
</html>

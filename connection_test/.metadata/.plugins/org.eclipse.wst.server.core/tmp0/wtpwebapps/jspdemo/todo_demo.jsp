<html>
<%@ page import = "java.util.*" %>
<body>
<form action = "todo_demo.jsp">
Add new item:
<input type = "text" name = "theItem" />
<input type = "submit" value = "submit" />
</form>
<%
	List<String> items = (List<String>) session.getAttribute("todolist");
	if (items == null) {
		items = new ArrayList<>();
		session.setAttribute("todolist", items);
	}
	String item = request.getParameter("theItem");
	if (item != null) {
		items.add(item);
	}
%>
<b> Todo List: </b>
<ol>
<%
	for(String i : items) {
		out.println("<li>" + i + "</li>");
	}
%>
</ol>	

</body>
</html>	
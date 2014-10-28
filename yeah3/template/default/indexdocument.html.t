<% include header.html.t %>
<form action = "" method = "POST">
<h1><%= document.Q %></h1>
<input type = "text" name = "text1"/>
<input type= "hidden" name= "answ" value="<%= document.A %>"/>
<p><input type = "submit"/></p>
</form>
<% include footer.html.t %>
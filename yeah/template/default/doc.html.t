<% include header.html.t %>
<h1><%= document.title %></h1>
<% for link in document.links %>
	<p><a href = <%= link.href %>><%= link.rel %></a></p>
<% end %>
<% include footer.html.t %>
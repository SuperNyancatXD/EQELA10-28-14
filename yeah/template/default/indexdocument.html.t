<% include header.html.t %>
<h1><%= document.title %></h1>
<% for greet in document.greetings %>
	<p><%= greet %></p>
<% end %>
<% include footer.html.t %>
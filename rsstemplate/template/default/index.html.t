<% include header.html.t %>
<h1><%= document.title %></h1>

<% for my in document.content %>


<p><%= my.author %></p>
<p><%= my.text %></p>

<% end %>
<% include footer.html.t %>
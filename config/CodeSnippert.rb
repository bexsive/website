<%- if current_user %>
<li>
  <%= link_to "Logout", destroy_user_session_path, method: :delete, data: {confirm: "Are you sure?"} %>
</li>
<% else %>
<li>
  <%= link_to "Login", new_user_session_path %>
</li>
<li>
  <%= link_to "Register", new_user_registration_path %>
</li>
<%end%>

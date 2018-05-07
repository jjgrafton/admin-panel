# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

Code for layout page

 <div class="current-user">
    <% if current_user && current_user.user? %>
      <ul>
        <li><%= current_user.username %></li>
        <li><%= link_to "Log out", logout_path, method: "delete" %></li>
      </ul>
    <% else %>
      <ul>
        <li><%= link_to "Login", 'login' %></a></li>
      </ul>
  <% end %>
</div>

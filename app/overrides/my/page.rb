Deface::Override.new :virtual_path  => "my/page",
                     :name          => "add-new-reminder-link-to-my-page",
                     :insert_top    => "div.contextual" do
  %(
    <% content_for :header_tags do %>
      <%= stylesheet_link_tag "reminders", :plugin => "redmine_reminders" %>
    <% end %>
    <%= link_to l(:label_reminder_add), new_reminder_path, :class => "icon icon-reminder", :id => "new-reminder" %>
  )
end

Deface::Override.new :virtual_path  => "my/page",
                     :name          => "add-visible-reminders-on-my-page",
                     :insert_top    => "div.splitcontentright",
                     :partial       => "reminders/boxes"

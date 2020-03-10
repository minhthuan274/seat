<%@ Page Language="C#" Inherits="seat_management.Default" %>
<!DOCTYPE html>
<html>
<head runat="server">
	<title>Default</title>
    </head>
<body>
	<form id="form1" runat="server">
		<asp:Button id="button1" runat="server" Text="Click me!" OnClick="button1Clicked" />
	</form>
        
        <table>
  <% foreach (var group in groups) { %>
    <div class="grid-container-item">
       <% foreach (var chair in group.chairs) { %>
          <div class="grid-item"> <%= chair.x %> <%= chair.y %> </div>
       <% } %>
    </div>
  <% } %>
</table>
</body>
</html>

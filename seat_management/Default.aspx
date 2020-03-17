<%@ Page Language="C#" Inherits="seat_management.Default" %>
<!DOCTYPE html>
<html>
<head runat="server">
	<title>Default</title>
        <style type="text/css">
        .box-name {
            border: 1px green solid;
            padding: 10px;
        }
        .grid-container {
            display: grid;
            grid-template-columns: auto auto;
            background-color: #2196F3;
            padding: 10px;
        }
        .grid-item {
            background-color: rgba(255, 255, 255, 0.8);
            border: 1px solid rgba(0, 0, 0, 0.8);
            padding: 20px;
            font-size: 30px;
            text-align: center;
        }
        .grid-container-group {
            display: grid;
            grid-template-columns: auto auto;
            grid-gap: 20px;
        }
        .found {
            background: yellow;
        }
    </style>
    </head>
 
<body>
	<form id="form1" runat="server">
		<asp:Button id="button1" runat="server" Text="Click me!" OnClick="button1Clicked" />
	</form>
        
   
  <div class="grid-container-group">     
  <% foreach (var group in groups) { %>
    <div class="grid-container-item">
       <% foreach (var chair in group.chairs) { %>
          <div class="grid-item <%= checkSearch(chair.x, chair.y, group.name) ? "found" : null %>"> <%= chair.x %> <%= chair.y %> </div>
       <% } %>
    </div>
  <% } %>
  </div>
</body>
</html>

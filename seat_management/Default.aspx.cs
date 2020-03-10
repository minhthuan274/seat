using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;

namespace seat_management
{

    public class Chair
    {
        public int x { get; set; }
        public int y { get; set; }
    }

    public class Group
    {
        public string name { get; set; }
        public List<Chair> chairs { get; set; }
    }

    public partial class Default : System.Web.UI.Page
    {
        public List<Group> groups = new List<Group>();
   

        public void button1Clicked(object sender, EventArgs args)
        {
            button1.Text = "You clicked me";
        }

        protected void Page_Load(Object sender, EventArgs e)
        {

            var listGroup = new string[] { "A", "D", "B", "E" };
            foreach (var nameEachGroup in listGroup)
            {
                Group groupA = new Group();
                groupA.name = nameEachGroup;
                groupA.chairs = new List<Chair>();
                for (int y = 1; y <= 4; y++)
                {
                    for (int x = 1; x <= 2; x++)
                    {
                        Chair seat = new Chair
                        {
                            x = x,
                            y = y
                        };
                        groupA.chairs.Add(seat);
                    }
                }
                this.groups.Add(groupA);
            }
            
        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Text;

namespace LogForm
{
    public class User
    {
        public int userId { get; set; }
        public string name { get; set; }
        public string password { get; set; }
        public List<Town> towns { get; set; }
        
        public User()
        {
            this.towns = new List<Town>();
        }
    }
}
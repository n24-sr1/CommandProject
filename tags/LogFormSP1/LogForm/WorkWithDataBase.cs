using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using LogForm;
using System.Data.SqlClient;

namespace LogForm
{
    public class WorkWithDataBase
    {
       
        private UserContext db{get;set;}

        public  WorkWithDataBase()
        {
            db = new UserContext();
        }
            void auto()
            {
            
            using ( db = new UserContext())
            {
                var san4es = new User()
                {
                    name = "san4es113",
                    password = "113"
                };

                var petro = new User()
                {
                    name = "petro",
                    password = "petro"
                };
                var Lviv = new Town()
                {
                    town = "Львів"
                };
                var Kiev = new Town()
                {
                    town = "Київ"
                };
                san4es.towns.Add(Lviv);
                petro.towns.Add(Kiev);

                db.users.Add(san4es);
                db.users.Add(san4es);

                db.SaveChanges();

                //foreach (User customer in db.users)
                     
            }
            
            }
        
        public class UserContext : System.Data.Entity.DbContext
        {
            public DbSet<User> users { get; set; }
            public DbSet<Town> towns { get; set; }
        }
        public bool CheckUser(string name,string password)
        {
            foreach (User user in db.users)
                if(user.name==name && user.password==password)
                return true;
            
       
           return false;
        }
    }
}
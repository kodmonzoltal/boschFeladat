using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
//using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _2_feladat.classes
{
    class AdatokLekerdez
    {
        string server = "127.0.0.1";
        string userid = "root";
        string password = "";
        string database = "feladat_2";

        public List<Adatok> Betolt(List<int> userId)
        {
            List<Adatok> adatok = new List<Adatok>();
            string MyConnection = string.Format(@"server={0};userid={1};password={2};database={3}", server, userid, password, database);
            for (int i = 0; i < userId.Count; i++)
            {
                string query = string.Format(@"select user.name, car.brand, car.model FROM user_car user_car inner join user user on user_car.user=user.id inner join car car on user_car.car=car.id where user.id = {0} ",
                    userId[i]);
                MySqlConnection con = new MySqlConnection(MyConnection);
                MySqlDataReader reader = null;
                try
                {
                    con.Open();
                    MySqlCommand comm = new MySqlCommand(query, con);
                    reader = comm.ExecuteReader();
                    while (reader.Read())
                    {
                        Adatok adat = new Adatok(reader.GetString("name"), reader.GetString("brand"), reader.GetString("model"));
                        adatok.Add(adat);
                    }
                    
                }
                catch(Exception ex)
                {
                }
                
            }
            return adatok;
        }
    }
}

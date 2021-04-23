using _2_feladat.classes;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _2_feladat
{
    //A fájl amit beolvass a program, illetve az amibe ír a bin/Debug mappában található!
    class Program
    {
        static void Main(string[] args)
        {
            AdatokLekerdez adatokLekerdez = new AdatokLekerdez();
            RandomGenerator rnd = new RandomGenerator();
            int[] szamok = rnd.TombFeltoltIsmetlodesNelkul(10, 1, 50);
            
            string[] eredmeny = null;
            string adat = null;
            List<int> user_id_list = new List<int>();
            List<string> adatok = new List<string>();
            List<string> key = new List<string>();
            List<string> value = new List<string>();
            StreamReader reader = new StreamReader("olvass.txt", Encoding.Default);
            while (!reader.EndOfStream)
            {
                adat = reader.ReadLine();
                adatok.Add(adat);
                eredmeny = adat.Split('|');

                for (int i = 0; i < eredmeny.Length; i += 2)
                {
                    key.Add(eredmeny[i]);
                }
                
                for (int i = 1; i < eredmeny.Length; i += 2)
                {
                    value.Add(eredmeny[i]);
                }

            }

            

            //foreach (string a in adatok)
            //{
            //    Console.WriteLine(a);

            //}

            //Console.WriteLine("----------KULCSOK---------");

            //foreach (string a in key)
            //{
            //    Console.WriteLine(a);

            //}

            //Console.WriteLine("----------ÉRTÉKEK---------");

            //foreach (string a in value)
            //{
            //    Console.WriteLine(a);

            //}


            List<int> TalaltKulcsok = talaltKulcsok(szamok, key);
            //Console.WriteLine("Random számok: ");
            //for (int i = 0; i < szamok.Length; i++)
            //{
            //    Console.WriteLine(i + ". " + szamok[i]);

            //}
            //Console.WriteLine("Talalt kulcsok: ");

            //for (int i = 0; i < TalaltKulcsok.Count; i++)
            //{
            //    Console.WriteLine(TalaltKulcsok[i]);
            //}

            for (int i = 0; i < TalaltKulcsok.Count; i++)
            {
                int ertek;
                if (int.TryParse(value[TalaltKulcsok[i]], out ertek))   //ha az adott elem egész szám akkor bekerül az ertek változóba
                {
                    if (ertek > 0)
                        user_id_list.Add(ertek);
                }
            }

            //Console.WriteLine("User id list: ");

            //for (int i = 0; i < user_id_list.Count; i++)
            //{
            //    Console.WriteLine(user_id_list[i]);
            //}
            List<Adatok> result = adatokLekerdez.Betolt(user_id_list);

            

            fajlbaIr(result);
               
            Console.ReadLine();
        }

        static public void fajlbaIr(List<Adatok> adatok)
        {
            string fajlnev = @"iras.txt";
            StreamWriter writer = new StreamWriter(fajlnev,false, Encoding.Default);
            for (int i = 0; i < adatok.Count; i++)
            {
                writer.WriteLine(adatok[i].name + "\t" + adatok[i].brand + "\t" + adatok[i].model);
            }
            writer.Close();
        }

        //keresett értékek az az a TÖMB amit a random számokkal generálok
        //Véleményen szerint ez egy felesleges keresés, mert úgyis 1-50 között generálom a random számokat és a kulcsok is 1 és 50 között szerepelnek a txt-ben.
        static List<int> talaltKulcsok(int[] keresettErtekek, List<string> listabanKeres)
        {
            List<int> talaltKulcsok = new List<int>();
            for (int i = 0; i < keresettErtekek.Length; i++)
            {
                for (int j = 0; j < listabanKeres.Count-1; j++)
                {
                    if(keresettErtekek[i].ToString() == listabanKeres[j])
                    {
                        talaltKulcsok.Add(j);
                    }
                }
            }
            return talaltKulcsok;
        }

    }
}

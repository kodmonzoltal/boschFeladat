using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _2_feladat.classes
{
    class RandomGenerator
    {
        Random rnd = new Random();
        


        public int[] TombFeltoltIsmetlodesNelkul(int db, int min, int max)
        {
            
            int[] tomb = new int[db];
            for (int i = 0; i < tomb.Length; i++)
            {
                
                tomb[i] = GeneralEgyediSzam(min, max, tomb, i);
            }

            return tomb;
        }

        public int GeneralEgyediSzam(int min, int max, int[] szamok, int indexig)
        {
            int temp;
            while (true) 
            {
                temp = rnd.Next(min, max + 1); 
                bool benneVan = false; 
                for (int i = 0; i < indexig; i++) 
                {
                    if (temp == szamok[i])
                    {
                        benneVan = true; 
                        break; 
                    }
                }

                if (!benneVan) break; 
                
            }

            return temp; 
        }
    }
}

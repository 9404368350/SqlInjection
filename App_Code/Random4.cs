using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

/// <summary>
/// Summary description for Random4
/// </summary>
public class Random4
{
    
         public static string encrypt(string str)
         {
            int length, b, ind, c;
            string inputstr = str; 
            char[] output;
            char[] index = { ' ', '!', '"', '#', '$', '%', '&', '\'', '(', ')', '*', '+', '-', '/', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', ':', ';', '=', '@', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', '_', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z' };

           

            
            char[,] a =  {
                          {' ', 'P', 'M', 's', 'p'},
                          {'!', '/', 'u', 'h', 'u'},
                          {'"', 'v', 'S', '@', '6'},
					      {'#', 'n', 'a', 'd', 'v'},
					      {'$', '*', 'C', 'k', 'K'},
                          {'%', 'T', 'i', 'D', 'e'},
					      {'&', 'e', 'u', 'P', 'h'},
                          {'\'', 'k', 'a', 's', 'n'},
					      {'(', 'A', 'p', 'k', 'h'},
                          {')', 'r', 'u', 'e', 'x'},
					      {'*', 'm', 'u', 'l', 'P'},
					      {'+', 's', 'I', 'e', '2'},
                          {'-', '4', 'u', 'k', 'p'},
					      {'/', 'i', 's', 'I', 'r'},
                          {'0', 'B', ')', 'u', '5'},
                          {'1', '$', 'a', 'T', 'X'},
                          {'2', '%', 'q', 'n', 'J'},
                          {'3', '^', 'l', 'f', 'd'},
                          {'4', 'N', '3', 'e', '1'},
                          {'5', ')', 'h', '!', 'U'},
                          {'6', 'a', 'W', 'h', 'y'},
                          {'7', '+', 'i', 's', 'o'},
                          {'8', 'S', 'e', 'H', 'r'},
                          {'9', 'i', 'o', '/', 'u'},
                          {':', 'i', 'l', 'o', 'v'},
                          {';', 'e', 'm', 'h', 'i'},
                          {'=', 'f', 'c', 'u', 'k'},
                          {'@', 's', 'L', '*', 'p'},
                          {'A', 'c', '1', 'G', 'p'},
                          {'B', '5', 'i', '@', 'O'},
                          {'C', 'I', '0', 'u', 'd'},
                          {'D', 't', 'K', '7', ':'},
                          {'E', 'q', 'v', 'R', 'Z'},
                          {'F', '7', '*', 'a', '!'},
                          {'G', 'H', '8', 'o', 'S'},
                          {'H', 'u', 'F', '0', 'w'},
                          {'I', '%', 'G', '6', 'j'},
                          {'J', 'u', 'Q', '8', '&'},
                          {'K', '0', 'F', 'a', 'h'},
                          {'L', 'L', 'f', 'e', 'u'},
                          {'M', 'X', ')', '4', 'b'},
                          {'N', 'W', 'J', 's', 'y'},
                          {'O', '3', 'T', 'g', 'l'},
                          {'P', 'e', 'D', 'y', '('},
                          {'Q', '^', 'v', '2', 'i'},
                          {'R', 'U', 'h', 'k', 's'},
                          {'S', 'k', '4', 'l', 'm'},
                          {'T', '8', 'M', 'h', 'e'},
                          {'U', '1', 'i', 'r', 'a'},
                          {'V', 'n', 'X', '8', 'U'},
                          {'W', 'A', '1', 'B', 's'},
                          {'X', 'k', 'r', '4', '1'},
                          {'Y', 'u', 'n', 'i', '9'},
                          {'Z', 'M', '#', '9', 'n'},
                          {'_', 'p', 'a', 'r', 'i'},
                          {'a', '9', 'o', 'G', 'S'},
                          {'b', '2', '6', 'h', 'p'},
                          {'c', 'a', 'T', '8', 'i'},
                          {'d', 'h', 'R', 'n', '0'},
                          {'e', 't', 'i', '4', 'I'},
                          {'f', 'k', '$', 'e', 'G'},
                          {'g', 'R', 'a', '&', 'C'},
                          {'h', 'S', 'L', 'w', 'e'},
                          {'i', 'Y', 'O', 'n', 'a'},
                          {'j', 'w', 'S', 'l', 'T'},
                          {'k', 'W', 'i', '#', 'g'},
                          {'l', 'p', 'h', 'r', '!'},
                          {'m', 'H', 'r', 'a', 'n'},
                          {'n', 'I', 'e', 'S', 't'},
                          {'o', 'M', 'A', 'l', 'i'},
                          {'p', 'n', 'K', 's', 'C'},
                          {'q', 'L', 'y', 'A', 'O'},
                          {'r', 'd', 'T', 'o', 'V'},
                          {'s', 'E', 'H', 'S', 'u'},
                          {'t', '@', 'B', 'e', 'r'},
                          {'u', 'K', 'E', 'p', 'a'},
                          {'v', 'P', 'r', 'D', 'A'},
                          {'w', 'o', 's', ')', 'T'},
                          {'x', 'o', 'f', 'R', 'Y'},
                          {'y', 'B', 't', 'f', 'e'},
                          {'z', 's', 'I', 'h', 'E'} 
                        
                        };



            length = inputstr.Length;       //length of the given input.
            output = new char[length ];
         //   char lastItem = inputstr [inputstr.Length - 1];
        //    char hj = Convert.ToChar(inputtext.Text);
        //    ind = Array.BinarySearch(symbols , hj);
        //    textBox1.Text = ind.ToString();
        //    Array.Sort(index);
        //    string mk = new string(index);
        //    textBox1.Text = mk;
         for (b = 0; b < length ; b++)
            {
                ind = Array.BinarySearch(index, inputstr[b]);//finding the index of the character.
                c = b + 1;

                if (b == length - 1 || Char.IsLower(inputstr[c]))
                {
                    output[b] = a[ind, 1];
                }
                else if (Char.IsUpper(inputstr[c]))
                {
                    output[b] = a[ind, 2];
                }
                else if (Char.IsNumber(inputstr[c]))
                {
                    output[b] = a[ind, 3];
                }
                else 
                {
                    output[b] = a[ind, 4];
                }

             }
           string out1 = new string(output);
           return (out1);
           // textBox1.Text = out1 ; 
        
        }
         public static String GetLanIPAddress()
         {
             //The X-Forwarded-For (XFF) HTTP header field is a de facto standard for identifying the originating IP address of a 
             //client connecting to a web server through an HTTP proxy or load balancer
             String ip = HttpContext.Current.Request.ServerVariables["HTTP_X_FORWARDED_FOR"];

             if (string.IsNullOrEmpty(ip))
             {
                 ip = HttpContext.Current.Request.ServerVariables["REMOTE_ADDR"];
             }

             return ip;
         }
        
	}




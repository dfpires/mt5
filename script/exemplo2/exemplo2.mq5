//+------------------------------------------------------------------+
//|                                                     exemplo2.mq5 |
//|                        Copyright 2020, MetaQuotes Software Corp. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+
void OnStart()
  {
//---
   //---

// media de 3 periodos

   double abertura[3], fechamento[3], maxima[3], minima[3];
   
   abertura[0] = 10.4;
   fechamento[0] = 10.8;
   minima[0] = 10.2;
   maxima[0] = 11.3;
   
   abertura[1] = 10.8;
   fechamento[1] = 11.2;
   minima[1] = 10.6;
   maxima[1] = 11.7;
   
   abertura[2] = 11.2;
   fechamento[2] = 11.6;
   minima[2] = 11.0;
   maxima[2] = 12.1;
   
   double media = 0;
   for(int i=0;i<3;i++){
       media += (abertura[i] + fechamento[i] + maxima[i] + minima[i]) / 4;
   }
  
  media = media / 3;
   
  Print(media);
  }
//+------------------------------------------------------------------+

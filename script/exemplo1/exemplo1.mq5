//+------------------------------------------------------------------+
//|                                                     exemplo1.mq5 |
//|                        Copyright 2020, MetaQuotes Software Corp. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+
void OnStart()
  {
//---

   double abertura, fechamento, maxima, minima;
   
    double abertura2, fechamento2, maxima2, minima2;
    
   abertura = 10.4;
   fechamento = 10.8;
   minima = 10.2;
   maxima = 11.3;
   
   abertura2 = 10.8;
   fechamento2 = 11.2;
   minima2 = 10.6;
   maxima2 = 11.7;
   
   double vela1 = (abertura + fechamento + minima + maxima) / 4;
   double vela2 = (abertura2 + fechamento2 + minima2 + maxima2) / 4;
   
   if (vela2 > vela1){
      Print("Compra");
   }
   else {
      Print("Venda");
   }
  }
//+------------------------------------------------------------------+

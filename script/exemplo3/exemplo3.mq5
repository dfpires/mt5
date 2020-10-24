//+------------------------------------------------------------------+
//|                                                     exemplo3.mq5 |
//|                        Copyright 2020, MetaQuotes Software Corp. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+
   struct precos{
      double abertura;
      double fechamento;
      double maxima;
      double minima;
   };
   
   double calculaMedia(precos &candle){
      return (candle.abertura + candle.fechamento + candle.maxima + candle.minima) / 4;
   }
   
void OnStart()
  {
//---
   precos ultimosCandles[3];
   
   ultimosCandles[0].abertura = 10.4;
   ultimosCandles[0].fechamento = 10.8;
   ultimosCandles[0].minima = 10.2;
   ultimosCandles[0].maxima = 11.3;
   
   ultimosCandles[1].abertura = 10.8;
   ultimosCandles[1].fechamento = 11.2;
   ultimosCandles[1].minima = 10.6;
   ultimosCandles[1].maxima = 11.7;
   
   ultimosCandles[2].abertura = 11.2;
   ultimosCandles[2].fechamento = 11.6;
   ultimosCandles[2].minima = 11.0;
   ultimosCandles[2].maxima = 12.1;
   
   double media = 0;
   for(int i=0;i<3;i++){
       media += calculaMedia(ultimosCandles[i]);
   }
  
  media = media / 3;
  }
//+------------------------------------------------------------------+

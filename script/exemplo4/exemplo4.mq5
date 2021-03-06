//+------------------------------------------------------------------+
//|                                                     exemplo4.mq5 |
//|                        Copyright 2020, MetaQuotes Software Corp. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+
void OnStart()
  {
//---
// declaração das variáveis
   datetime inicio, fim;
   double lucro = 0, perda = 0;
   int trades = 0;
   double resultado;
   ulong ticket;
   
   //obtenção do histórico
   MqlDateTime inicio_struct;
   fim = TimeCurrent(inicio_struct);
   inicio_struct.hour = 0;
   inicio_struct.min = 0;
   inicio_struct.sec = 0;
   inicio = StructToTime(inicio_struct);
   
   HistorySelect(inicio, fim);
   
   // cálculos
   for(int i=0;i<HistoryDealsTotal();i++){
      ticket = HistoryDealGetTicket(i);
      if (ticket>0){
         if (HistoryDealGetString(ticket, DEAL_SYMBOL) == _Symbol){
            trades++;
            resultado = HistoryDealGetDouble(ticket, DEAL_PROFIT);
            if (resultado < 0){
               perda-=resultado;
            }
            else {
               lucro += resultado;
            }
         }
      }
   }
   
   double fator_lucro;
   if (perda > 0 ){
      fator_lucro = lucro/perda;
   }
   else {
      fator_lucro = -1;
   }
   
   double resultado_liquido = lucro - perda;
   
   // Exibição
   Comment("Trades: ", trades, "\nLucro ", DoubleToString(lucro,2), "\nPerdas ", DoubleToString(perda,2), 
    "\nResultado ", resultado_liquido, "\nFator de lucro ", DoubleToString(fator_lucro,2));
  }
//+------------------------------------------------------------------+

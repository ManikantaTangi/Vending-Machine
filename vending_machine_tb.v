`timescale 1ns / 1ps

module vending_machine_tb();

//INPUT
reg CLK;
reg RST;
reg START;
reg CANCEL;
reg [2:0] PRODUCT_CODE;
reg [6:0] COINS;
reg ONLINE_PAYMENT;

//OUTPUT
wire [3:0] STATE;
wire DISPENSE_PRODUCT;
wire [6:0] PRODUCT_PRICE_VALUE;
wire [6:0] RETURN_CHANGE_VALUE;

//CLOCK SIGNAL
always #5 CLK = ~CLK;

initial begin
        CLK                 =1'b0 ;   
        RST                 =1'b0 ;   
        START               =1'b0 ; 
        CANCEL              =1'b0 ;
        PRODUCT_CODE        =3'b0 ;
        COINS               =1'b0 ;       
        ONLINE_PAYMENT      =1'b0 ;
     
     #100 RST = 1'b0;
     #100;   

    //KITKAT DISPENSE WITH ONLINE PAYMENT
    START          = 1'b1;
    ONLINE_PAYMENT = 1'b1;  //KITKAT
    #30 START      = 1'b0;
    ONLINE_PAYMENT = 1'b0;
    #50;
    
    START          = 1'b1;
    PRODUCT_CODE   = 3'b001;    //SNICKERS
    COINS          = 7'd30;
    #30 START      = 1'b0;
    #50;
 
    
    START          = 1'b1;
    PRODUCT_CODE   = 3'b100;    //FUSE
    COINS          = 7'd50; 
    #30 START      = 1'b0;
    
        

    
    START          = 1'b1;
    PRODUCT_CODE   = 3'b011;    //DIARYMILK
    COINS          = 7'd40; 
    #30 START      = 1'b0;
    #50;
    
    #50 $finish;                  
                                       
end

//INSTANTATION
vending_machine DUT  (
   
.i_clk                (CLK),                     //Clock signal (100MHz)                  
.i_rst                (RST),                     //Reset signal (Active High)
.i_start              (START),                   //Initialize System
.i_cancel             (CANCEL),                  //Cancel signal
.i_product_code       (PRODUCT_CODE),            //Product selection
.i_total_coin_value   (COINS),                   //Total value of the coin
.i_online_payment     (ONLINE_PAYMENT),          //Conformation of the online payment
.o_state              (STATE),                   //Present state
.o_dispense_product   (DISPENSE_PRODUCT),        //whether product dispensed
.o_product_price      (PRODUCT_PRICE_VALUE),     //product price
.o_return_change      (RETURN_CHANGE_VALUE)      //returned change
    );



endmodule

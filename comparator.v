`timescale 1ns / 1ps

module comparator(input a, b, output lt, gt, et);
    wire a1, b1;
    
    not(a1, a);          
    not(b1, b);          
    
    and(gt, a, b1);      
    and(lt, a1, b);      
    xnor(et, a, b);      
    
endmodule

module enum_ex();
  enum {CARROT,
        BRINJAL,
        POTOTO,
        ONION,
        TOMOTO} veg_e;
  
  initial begin
    veg_e=ONION;
    $display("Element is %s and its value is %0d",veg_e.name(),veg_e);
     end
endmodule
  

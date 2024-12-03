// Code your design here
class parent_cls;
  int add;
  function calculation(int a,b);
    
    add = a+b;
  endfunction
endclass
class child_cls_1 extends parent_cls;
  int sub;
  function calculation(int a,b);
    super.calculation(a,b);
    sub = a-b;
  endfunction
endclass
class child_cls_2 extends child_cls_1;
  int mul;
  function calculation(int a,b);
    super.calculation(a,b);
    mul = a*b;
  endfunction
endclass
module class_example;
  child_cls_2 c2 = new();
  
  initial begin
   
    c2.calculation(7,9);
    $display("%0d",c2.add);
    c2.calculation(1,9);
    $display("%0d",c2.sub);
    c2.calculation(6,7);
    $display("%0d",c2.mul);
  end
endmodule
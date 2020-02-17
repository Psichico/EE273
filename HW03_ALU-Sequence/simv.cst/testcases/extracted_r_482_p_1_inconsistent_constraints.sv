class c_482_1;
    rand bit[31:0] test_bit_a; // rand_mode = ON 

    constraint my_constraints_this    // (constraint_mode = ON) (alu_sequence_item.sv:6)
    {
       ((test_bit_a[0]) == 1'h1);
    }
    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (alu_sequence.sv:14)
    {
       (test_bit_a == (test_bit_a << 1));
    }
endclass

program p_482_1;
    c_482_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zzx1x00111z0x1z1zx00x110z1zxx00zxxxzxzzxxzxzxxxzzzzzzxxzxxzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

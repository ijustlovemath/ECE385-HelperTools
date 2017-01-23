/*
    This sprite table was generated using 'conv_to_sv.py'. Find out more here: https://github.com/ijustlovemath/ECE385-HelperTools
    To use, instantiate this module in your color mapper. The SpriteX input should be connected to
        'ObjectXSize - DistX', where ObjectXSize is the width of your object in pixels along the
        x direction. DistX is the horizontal distance between the DrawX pxiel and the top left corner
        of the object in question, so something like: 'DistX = DrawX - ObjectXPosition' is fine.
        Similarly this goes for SpriteY. Warning: If you don't do this, your image will be flipped along
        the axis you ignored. This is a handy way to flip an image if you need to, though.
 
    In the color mapper, you can then simply do something like:
    module ColorMapper(...)
    ...
    logic [7:0] ObjectR, ObjectG, ObjectB
    parameter ObjectXSize = 10'd10;
    parameter ObjectYSize = 10'd10;
    ...
    always_comb
    ...
         if(ObjectOn == 1'b1)
         begin
             Red = ObjectR
             Green = ObjectG
             Blue = ObjectB
         end
     ...
     ObjectSpriteTable ost(
                           .SpriteX(ObjectXSize - DistX), .SpriteY(ObjectYSize - DistY),
                           .SpriteR(ObjectR), .SpriteG(ObjectG), .SpriteB(ObjectB)
                           );
 
     See the comment at the top of the generation script if you're still confused.
*/
module GalagaLogo(input [9:0] SpriteX, SpriteY,
            output [7:0] SpriteR, SpriteG, SpriteB);

logic [9:0] X_Index, Y_Index;

assign X_Index = SpriteX % 10'd8;
assign Y_Index = SpriteY % 10'd8;
logic [9:0] SpriteTableR;

parameter bit [7:0] SpritePaletteR[7:0] = '{8'd16, 8'd49, 8'd82, 8'd115, 8'd148, 8'd181, 8'd214, 8'd247};

	always_comb
	begin
		SpriteTableR = 10'd0;
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableR = SpriteTableR_0_0[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableR = SpriteTableR_0_1[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableR = SpriteTableR_0_2[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableR = SpriteTableR_0_3[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableR = SpriteTableR_0_4[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableR = SpriteTableR_0_5[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableR = SpriteTableR_0_6[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableR = SpriteTableR_0_7[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableR = SpriteTableR_0_8[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableR = SpriteTableR_0_9[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableR = SpriteTableR_0_10[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableR = SpriteTableR_0_11[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableR = SpriteTableR_0_12[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableR = SpriteTableR_0_13[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableR = SpriteTableR_1_0[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableR = SpriteTableR_1_1[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableR = SpriteTableR_1_2[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableR = SpriteTableR_1_3[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableR = SpriteTableR_1_4[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableR = SpriteTableR_1_5[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableR = SpriteTableR_1_6[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableR = SpriteTableR_1_7[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableR = SpriteTableR_1_8[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableR = SpriteTableR_1_9[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableR = SpriteTableR_1_10[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableR = SpriteTableR_1_11[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableR = SpriteTableR_1_12[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableR = SpriteTableR_1_13[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableR = SpriteTableR_2_0[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableR = SpriteTableR_2_1[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableR = SpriteTableR_2_2[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableR = SpriteTableR_2_3[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableR = SpriteTableR_2_4[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableR = SpriteTableR_2_5[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableR = SpriteTableR_2_6[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableR = SpriteTableR_2_7[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableR = SpriteTableR_2_8[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableR = SpriteTableR_2_9[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableR = SpriteTableR_2_10[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableR = SpriteTableR_2_11[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableR = SpriteTableR_2_12[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableR = SpriteTableR_2_13[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableR = SpriteTableR_3_0[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableR = SpriteTableR_3_1[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableR = SpriteTableR_3_2[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableR = SpriteTableR_3_3[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableR = SpriteTableR_3_4[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableR = SpriteTableR_3_5[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableR = SpriteTableR_3_6[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableR = SpriteTableR_3_7[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableR = SpriteTableR_3_8[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableR = SpriteTableR_3_9[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableR = SpriteTableR_3_10[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableR = SpriteTableR_3_11[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableR = SpriteTableR_3_12[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableR = SpriteTableR_3_13[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableR = SpriteTableR_4_0[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableR = SpriteTableR_4_1[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableR = SpriteTableR_4_2[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableR = SpriteTableR_4_3[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableR = SpriteTableR_4_4[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableR = SpriteTableR_4_5[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableR = SpriteTableR_4_6[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableR = SpriteTableR_4_7[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableR = SpriteTableR_4_8[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableR = SpriteTableR_4_9[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableR = SpriteTableR_4_10[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableR = SpriteTableR_4_11[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableR = SpriteTableR_4_12[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableR = SpriteTableR_4_13[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableR = SpriteTableR_5_0[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableR = SpriteTableR_5_1[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableR = SpriteTableR_5_2[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableR = SpriteTableR_5_3[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableR = SpriteTableR_5_4[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableR = SpriteTableR_5_5[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableR = SpriteTableR_5_6[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableR = SpriteTableR_5_7[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableR = SpriteTableR_5_8[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableR = SpriteTableR_5_9[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableR = SpriteTableR_5_10[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableR = SpriteTableR_5_11[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableR = SpriteTableR_5_12[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableR = SpriteTableR_5_13[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableR = SpriteTableR_6_0[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableR = SpriteTableR_6_1[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableR = SpriteTableR_6_2[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableR = SpriteTableR_6_3[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableR = SpriteTableR_6_4[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableR = SpriteTableR_6_5[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableR = SpriteTableR_6_6[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableR = SpriteTableR_6_7[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableR = SpriteTableR_6_8[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableR = SpriteTableR_6_9[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableR = SpriteTableR_6_10[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableR = SpriteTableR_6_11[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableR = SpriteTableR_6_12[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableR = SpriteTableR_6_13[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableR = SpriteTableR_7_0[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableR = SpriteTableR_7_1[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableR = SpriteTableR_7_2[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableR = SpriteTableR_7_3[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableR = SpriteTableR_7_4[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableR = SpriteTableR_7_5[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableR = SpriteTableR_7_6[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableR = SpriteTableR_7_7[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableR = SpriteTableR_7_8[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableR = SpriteTableR_7_9[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableR = SpriteTableR_7_10[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableR = SpriteTableR_7_11[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableR = SpriteTableR_7_12[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableR = SpriteTableR_7_13[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableR = SpriteTableR_8_0[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableR = SpriteTableR_8_1[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableR = SpriteTableR_8_2[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableR = SpriteTableR_8_3[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableR = SpriteTableR_8_4[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableR = SpriteTableR_8_5[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableR = SpriteTableR_8_6[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableR = SpriteTableR_8_7[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableR = SpriteTableR_8_8[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableR = SpriteTableR_8_9[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableR = SpriteTableR_8_10[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableR = SpriteTableR_8_11[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableR = SpriteTableR_8_12[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableR = SpriteTableR_8_13[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableR = SpriteTableR_9_0[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableR = SpriteTableR_9_1[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableR = SpriteTableR_9_2[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableR = SpriteTableR_9_3[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableR = SpriteTableR_9_4[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableR = SpriteTableR_9_5[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableR = SpriteTableR_9_6[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableR = SpriteTableR_9_7[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableR = SpriteTableR_9_8[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableR = SpriteTableR_9_9[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableR = SpriteTableR_9_10[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableR = SpriteTableR_9_11[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableR = SpriteTableR_9_12[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableR = SpriteTableR_9_13[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableR = SpriteTableR_10_0[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableR = SpriteTableR_10_1[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableR = SpriteTableR_10_2[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableR = SpriteTableR_10_3[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableR = SpriteTableR_10_4[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableR = SpriteTableR_10_5[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableR = SpriteTableR_10_6[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableR = SpriteTableR_10_7[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableR = SpriteTableR_10_8[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableR = SpriteTableR_10_9[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableR = SpriteTableR_10_10[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableR = SpriteTableR_10_11[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableR = SpriteTableR_10_12[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableR = SpriteTableR_10_13[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableR = SpriteTableR_11_0[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableR = SpriteTableR_11_1[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableR = SpriteTableR_11_2[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableR = SpriteTableR_11_3[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableR = SpriteTableR_11_4[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableR = SpriteTableR_11_5[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableR = SpriteTableR_11_6[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableR = SpriteTableR_11_7[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableR = SpriteTableR_11_8[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableR = SpriteTableR_11_9[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableR = SpriteTableR_11_10[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableR = SpriteTableR_11_11[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableR = SpriteTableR_11_12[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableR = SpriteTableR_11_13[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableR = SpriteTableR_12_0[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableR = SpriteTableR_12_1[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableR = SpriteTableR_12_2[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableR = SpriteTableR_12_3[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableR = SpriteTableR_12_4[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableR = SpriteTableR_12_5[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableR = SpriteTableR_12_6[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableR = SpriteTableR_12_7[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableR = SpriteTableR_12_8[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableR = SpriteTableR_12_9[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableR = SpriteTableR_12_10[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableR = SpriteTableR_12_11[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableR = SpriteTableR_12_12[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableR = SpriteTableR_12_13[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableR = SpriteTableR_13_0[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableR = SpriteTableR_13_1[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableR = SpriteTableR_13_2[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableR = SpriteTableR_13_3[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableR = SpriteTableR_13_4[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableR = SpriteTableR_13_5[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableR = SpriteTableR_13_6[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableR = SpriteTableR_13_7[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableR = SpriteTableR_13_8[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableR = SpriteTableR_13_9[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableR = SpriteTableR_13_10[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableR = SpriteTableR_13_11[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableR = SpriteTableR_13_12[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableR = SpriteTableR_13_13[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableR = SpriteTableR_14_0[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableR = SpriteTableR_14_1[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableR = SpriteTableR_14_2[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableR = SpriteTableR_14_3[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableR = SpriteTableR_14_4[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableR = SpriteTableR_14_5[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableR = SpriteTableR_14_6[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableR = SpriteTableR_14_7[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableR = SpriteTableR_14_8[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableR = SpriteTableR_14_9[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableR = SpriteTableR_14_10[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableR = SpriteTableR_14_11[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableR = SpriteTableR_14_12[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableR = SpriteTableR_14_13[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableR = SpriteTableR_15_0[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableR = SpriteTableR_15_1[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableR = SpriteTableR_15_2[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableR = SpriteTableR_15_3[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableR = SpriteTableR_15_4[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableR = SpriteTableR_15_5[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableR = SpriteTableR_15_6[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableR = SpriteTableR_15_7[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableR = SpriteTableR_15_8[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableR = SpriteTableR_15_9[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableR = SpriteTableR_15_10[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableR = SpriteTableR_15_11[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableR = SpriteTableR_15_12[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableR = SpriteTableR_15_13[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd136 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableR = SpriteTableR_16_0[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd136 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableR = SpriteTableR_16_1[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd136 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableR = SpriteTableR_16_2[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd136 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableR = SpriteTableR_16_3[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd136 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableR = SpriteTableR_16_4[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd136 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableR = SpriteTableR_16_5[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd136 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableR = SpriteTableR_16_6[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd136 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableR = SpriteTableR_16_7[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd136 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableR = SpriteTableR_16_8[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd136 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableR = SpriteTableR_16_9[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd136 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableR = SpriteTableR_16_10[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd136 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableR = SpriteTableR_16_11[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd136 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableR = SpriteTableR_16_12[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd136 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableR = SpriteTableR_16_13[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd136 && SpriteX < 10'd144 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableR = SpriteTableR_17_0[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd136 && SpriteX < 10'd144 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableR = SpriteTableR_17_1[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd136 && SpriteX < 10'd144 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableR = SpriteTableR_17_2[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd136 && SpriteX < 10'd144 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableR = SpriteTableR_17_3[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd136 && SpriteX < 10'd144 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableR = SpriteTableR_17_4[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd136 && SpriteX < 10'd144 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableR = SpriteTableR_17_5[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd136 && SpriteX < 10'd144 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableR = SpriteTableR_17_6[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd136 && SpriteX < 10'd144 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableR = SpriteTableR_17_7[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd136 && SpriteX < 10'd144 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableR = SpriteTableR_17_8[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd136 && SpriteX < 10'd144 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableR = SpriteTableR_17_9[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd136 && SpriteX < 10'd144 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableR = SpriteTableR_17_10[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd136 && SpriteX < 10'd144 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableR = SpriteTableR_17_11[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd136 && SpriteX < 10'd144 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableR = SpriteTableR_17_12[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd136 && SpriteX < 10'd144 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableR = SpriteTableR_17_13[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd144 && SpriteX < 10'd152 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableR = SpriteTableR_18_0[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd144 && SpriteX < 10'd152 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableR = SpriteTableR_18_1[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd144 && SpriteX < 10'd152 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableR = SpriteTableR_18_2[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd144 && SpriteX < 10'd152 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableR = SpriteTableR_18_3[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd144 && SpriteX < 10'd152 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableR = SpriteTableR_18_4[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd144 && SpriteX < 10'd152 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableR = SpriteTableR_18_5[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd144 && SpriteX < 10'd152 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableR = SpriteTableR_18_6[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd144 && SpriteX < 10'd152 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableR = SpriteTableR_18_7[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd144 && SpriteX < 10'd152 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableR = SpriteTableR_18_8[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd144 && SpriteX < 10'd152 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableR = SpriteTableR_18_9[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd144 && SpriteX < 10'd152 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableR = SpriteTableR_18_10[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd144 && SpriteX < 10'd152 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableR = SpriteTableR_18_11[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd144 && SpriteX < 10'd152 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableR = SpriteTableR_18_12[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd144 && SpriteX < 10'd152 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableR = SpriteTableR_18_13[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd152 && SpriteX < 10'd160 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableR = SpriteTableR_19_0[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd152 && SpriteX < 10'd160 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableR = SpriteTableR_19_1[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd152 && SpriteX < 10'd160 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableR = SpriteTableR_19_2[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd152 && SpriteX < 10'd160 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableR = SpriteTableR_19_3[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd152 && SpriteX < 10'd160 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableR = SpriteTableR_19_4[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd152 && SpriteX < 10'd160 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableR = SpriteTableR_19_5[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd152 && SpriteX < 10'd160 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableR = SpriteTableR_19_6[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd152 && SpriteX < 10'd160 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableR = SpriteTableR_19_7[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd152 && SpriteX < 10'd160 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableR = SpriteTableR_19_8[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd152 && SpriteX < 10'd160 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableR = SpriteTableR_19_9[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd152 && SpriteX < 10'd160 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableR = SpriteTableR_19_10[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd152 && SpriteX < 10'd160 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableR = SpriteTableR_19_11[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd152 && SpriteX < 10'd160 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableR = SpriteTableR_19_12[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd152 && SpriteX < 10'd160 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableR = SpriteTableR_19_13[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd160 && SpriteX < 10'd168 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableR = SpriteTableR_20_0[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd160 && SpriteX < 10'd168 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableR = SpriteTableR_20_1[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd160 && SpriteX < 10'd168 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableR = SpriteTableR_20_2[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd160 && SpriteX < 10'd168 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableR = SpriteTableR_20_3[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd160 && SpriteX < 10'd168 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableR = SpriteTableR_20_4[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd160 && SpriteX < 10'd168 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableR = SpriteTableR_20_5[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd160 && SpriteX < 10'd168 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableR = SpriteTableR_20_6[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd160 && SpriteX < 10'd168 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableR = SpriteTableR_20_7[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd160 && SpriteX < 10'd168 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableR = SpriteTableR_20_8[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd160 && SpriteX < 10'd168 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableR = SpriteTableR_20_9[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd160 && SpriteX < 10'd168 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableR = SpriteTableR_20_10[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd160 && SpriteX < 10'd168 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableR = SpriteTableR_20_11[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd160 && SpriteX < 10'd168 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableR = SpriteTableR_20_12[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd160 && SpriteX < 10'd168 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableR = SpriteTableR_20_13[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd168 && SpriteX < 10'd176 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableR = SpriteTableR_21_0[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd168 && SpriteX < 10'd176 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableR = SpriteTableR_21_1[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd168 && SpriteX < 10'd176 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableR = SpriteTableR_21_2[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd168 && SpriteX < 10'd176 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableR = SpriteTableR_21_3[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd168 && SpriteX < 10'd176 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableR = SpriteTableR_21_4[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd168 && SpriteX < 10'd176 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableR = SpriteTableR_21_5[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd168 && SpriteX < 10'd176 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableR = SpriteTableR_21_6[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd168 && SpriteX < 10'd176 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableR = SpriteTableR_21_7[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd168 && SpriteX < 10'd176 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableR = SpriteTableR_21_8[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd168 && SpriteX < 10'd176 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableR = SpriteTableR_21_9[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd168 && SpriteX < 10'd176 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableR = SpriteTableR_21_10[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd168 && SpriteX < 10'd176 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableR = SpriteTableR_21_11[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd168 && SpriteX < 10'd176 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableR = SpriteTableR_21_12[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd168 && SpriteX < 10'd176 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableR = SpriteTableR_21_13[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd176 && SpriteX < 10'd184 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableR = SpriteTableR_22_0[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd176 && SpriteX < 10'd184 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableR = SpriteTableR_22_1[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd176 && SpriteX < 10'd184 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableR = SpriteTableR_22_2[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd176 && SpriteX < 10'd184 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableR = SpriteTableR_22_3[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd176 && SpriteX < 10'd184 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableR = SpriteTableR_22_4[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd176 && SpriteX < 10'd184 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableR = SpriteTableR_22_5[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd176 && SpriteX < 10'd184 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableR = SpriteTableR_22_6[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd176 && SpriteX < 10'd184 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableR = SpriteTableR_22_7[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd176 && SpriteX < 10'd184 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableR = SpriteTableR_22_8[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd176 && SpriteX < 10'd184 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableR = SpriteTableR_22_9[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd176 && SpriteX < 10'd184 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableR = SpriteTableR_22_10[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd176 && SpriteX < 10'd184 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableR = SpriteTableR_22_11[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd176 && SpriteX < 10'd184 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableR = SpriteTableR_22_12[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd176 && SpriteX < 10'd184 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableR = SpriteTableR_22_13[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd184 && SpriteX < 10'd192 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableR = SpriteTableR_23_0[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd184 && SpriteX < 10'd192 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableR = SpriteTableR_23_1[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd184 && SpriteX < 10'd192 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableR = SpriteTableR_23_2[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd184 && SpriteX < 10'd192 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableR = SpriteTableR_23_3[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd184 && SpriteX < 10'd192 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableR = SpriteTableR_23_4[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd184 && SpriteX < 10'd192 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableR = SpriteTableR_23_5[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd184 && SpriteX < 10'd192 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableR = SpriteTableR_23_6[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd184 && SpriteX < 10'd192 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableR = SpriteTableR_23_7[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd184 && SpriteX < 10'd192 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableR = SpriteTableR_23_8[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd184 && SpriteX < 10'd192 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableR = SpriteTableR_23_9[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd184 && SpriteX < 10'd192 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableR = SpriteTableR_23_10[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd184 && SpriteX < 10'd192 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableR = SpriteTableR_23_11[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd184 && SpriteX < 10'd192 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableR = SpriteTableR_23_12[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd184 && SpriteX < 10'd192 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableR = SpriteTableR_23_13[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd192 && SpriteX < 10'd200 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableR = SpriteTableR_24_0[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd192 && SpriteX < 10'd200 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableR = SpriteTableR_24_1[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd192 && SpriteX < 10'd200 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableR = SpriteTableR_24_2[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd192 && SpriteX < 10'd200 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableR = SpriteTableR_24_3[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd192 && SpriteX < 10'd200 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableR = SpriteTableR_24_4[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd192 && SpriteX < 10'd200 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableR = SpriteTableR_24_5[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd192 && SpriteX < 10'd200 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableR = SpriteTableR_24_6[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd192 && SpriteX < 10'd200 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableR = SpriteTableR_24_7[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd192 && SpriteX < 10'd200 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableR = SpriteTableR_24_8[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd192 && SpriteX < 10'd200 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableR = SpriteTableR_24_9[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd192 && SpriteX < 10'd200 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableR = SpriteTableR_24_10[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd192 && SpriteX < 10'd200 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableR = SpriteTableR_24_11[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd192 && SpriteX < 10'd200 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableR = SpriteTableR_24_12[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd192 && SpriteX < 10'd200 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableR = SpriteTableR_24_13[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd200 && SpriteX < 10'd208 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableR = SpriteTableR_25_0[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd200 && SpriteX < 10'd208 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableR = SpriteTableR_25_1[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd200 && SpriteX < 10'd208 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableR = SpriteTableR_25_2[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd200 && SpriteX < 10'd208 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableR = SpriteTableR_25_3[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd200 && SpriteX < 10'd208 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableR = SpriteTableR_25_4[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd200 && SpriteX < 10'd208 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableR = SpriteTableR_25_5[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd200 && SpriteX < 10'd208 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableR = SpriteTableR_25_6[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd200 && SpriteX < 10'd208 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableR = SpriteTableR_25_7[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd200 && SpriteX < 10'd208 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableR = SpriteTableR_25_8[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd200 && SpriteX < 10'd208 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableR = SpriteTableR_25_9[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd200 && SpriteX < 10'd208 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableR = SpriteTableR_25_10[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd200 && SpriteX < 10'd208 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableR = SpriteTableR_25_11[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd200 && SpriteX < 10'd208 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableR = SpriteTableR_25_12[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd200 && SpriteX < 10'd208 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableR = SpriteTableR_25_13[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd208 && SpriteX < 10'd216 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableR = SpriteTableR_26_0[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd208 && SpriteX < 10'd216 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableR = SpriteTableR_26_1[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd208 && SpriteX < 10'd216 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableR = SpriteTableR_26_2[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd208 && SpriteX < 10'd216 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableR = SpriteTableR_26_3[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd208 && SpriteX < 10'd216 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableR = SpriteTableR_26_4[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd208 && SpriteX < 10'd216 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableR = SpriteTableR_26_5[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd208 && SpriteX < 10'd216 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableR = SpriteTableR_26_6[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd208 && SpriteX < 10'd216 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableR = SpriteTableR_26_7[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd208 && SpriteX < 10'd216 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableR = SpriteTableR_26_8[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd208 && SpriteX < 10'd216 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableR = SpriteTableR_26_9[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd208 && SpriteX < 10'd216 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableR = SpriteTableR_26_10[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd208 && SpriteX < 10'd216 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableR = SpriteTableR_26_11[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd208 && SpriteX < 10'd216 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableR = SpriteTableR_26_12[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd208 && SpriteX < 10'd216 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableR = SpriteTableR_26_13[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd216 && SpriteX < 10'd224 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableR = SpriteTableR_27_0[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd216 && SpriteX < 10'd224 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableR = SpriteTableR_27_1[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd216 && SpriteX < 10'd224 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableR = SpriteTableR_27_2[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd216 && SpriteX < 10'd224 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableR = SpriteTableR_27_3[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd216 && SpriteX < 10'd224 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableR = SpriteTableR_27_4[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd216 && SpriteX < 10'd224 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableR = SpriteTableR_27_5[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd216 && SpriteX < 10'd224 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableR = SpriteTableR_27_6[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd216 && SpriteX < 10'd224 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableR = SpriteTableR_27_7[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd216 && SpriteX < 10'd224 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableR = SpriteTableR_27_8[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd216 && SpriteX < 10'd224 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableR = SpriteTableR_27_9[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd216 && SpriteX < 10'd224 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableR = SpriteTableR_27_10[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd216 && SpriteX < 10'd224 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableR = SpriteTableR_27_11[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd216 && SpriteX < 10'd224 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableR = SpriteTableR_27_12[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd216 && SpriteX < 10'd224 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableR = SpriteTableR_27_13[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd224 && SpriteX < 10'd227 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableR = SpriteTableR_28_0[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd224 && SpriteX < 10'd227 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableR = SpriteTableR_28_1[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd224 && SpriteX < 10'd227 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableR = SpriteTableR_28_2[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd224 && SpriteX < 10'd227 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableR = SpriteTableR_28_3[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd224 && SpriteX < 10'd227 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableR = SpriteTableR_28_4[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd224 && SpriteX < 10'd227 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableR = SpriteTableR_28_5[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd224 && SpriteX < 10'd227 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableR = SpriteTableR_28_6[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd224 && SpriteX < 10'd227 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableR = SpriteTableR_28_7[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd224 && SpriteX < 10'd227 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableR = SpriteTableR_28_8[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd224 && SpriteX < 10'd227 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableR = SpriteTableR_28_9[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd224 && SpriteX < 10'd227 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableR = SpriteTableR_28_10[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd224 && SpriteX < 10'd227 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableR = SpriteTableR_28_11[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd224 && SpriteX < 10'd227 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableR = SpriteTableR_28_12[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd224 && SpriteX < 10'd227 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableR = SpriteTableR_28_13[X_Index][Y_Index];
		end
	end

parameter bit [2:0] SpriteTableR_0_0[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_0_1[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_0_2[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_0_3[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_0_4[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_0_5[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd2},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd4}};

parameter bit [2:0] SpriteTableR_0_6[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd2,3'd6},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd5,3'd7},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd2,3'd7,3'd7},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd4,3'd7,3'd7},
'{3'd0,3'd0,3'd0,3'd1,3'd2,3'd6,3'd7,3'd6},
'{3'd0,3'd0,3'd0,3'd0,3'd3,3'd7,3'd7,3'd4},
'{3'd0,3'd0,3'd1,3'd1,3'd5,3'd7,3'd7,3'd2},
'{3'd0,3'd0,3'd1,3'd2,3'd6,3'd7,3'd5,3'd1}};

parameter bit [2:0] SpriteTableR_0_7[7:0][7:0] = '{'{3'd0,3'd1,3'd1,3'd4,3'd7,3'd7,3'd3,3'd0},
'{3'd0,3'd1,3'd1,3'd5,3'd7,3'd7,3'd2,3'd0},
'{3'd0,3'd1,3'd3,3'd7,3'd7,3'd6,3'd1,3'd0},
'{3'd0,3'd1,3'd4,3'd7,3'd7,3'd4,3'd1,3'd0},
'{3'd1,3'd1,3'd5,3'd7,3'd7,3'd3,3'd0,3'd0},
'{3'd1,3'd1,3'd6,3'd7,3'd7,3'd2,3'd0,3'd0},
'{3'd1,3'd1,3'd6,3'd7,3'd7,3'd1,3'd0,3'd0},
'{3'd1,3'd1,3'd7,3'd7,3'd6,3'd1,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_0_8[7:0][7:0] = '{'{3'd1,3'd1,3'd7,3'd7,3'd6,3'd1,3'd0,3'd0},
'{3'd1,3'd1,3'd6,3'd7,3'd6,3'd1,3'd0,3'd0},
'{3'd1,3'd1,3'd6,3'd7,3'd7,3'd2,3'd0,3'd0},
'{3'd1,3'd1,3'd5,3'd7,3'd7,3'd3,3'd0,3'd0},
'{3'd0,3'd1,3'd4,3'd7,3'd7,3'd5,3'd0,3'd0},
'{3'd0,3'd1,3'd2,3'd6,3'd7,3'd7,3'd2,3'd0},
'{3'd0,3'd1,3'd1,3'd4,3'd7,3'd7,3'd5,3'd1},
'{3'd0,3'd0,3'd1,3'd2,3'd6,3'd7,3'd7,3'd3}};

parameter bit [2:0] SpriteTableR_0_9[7:0][7:0] = '{'{3'd0,3'd0,3'd1,3'd1,3'd5,3'd7,3'd7,3'd6},
'{3'd0,3'd0,3'd0,3'd0,3'd3,3'd6,3'd7,3'd7},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd3,3'd6,3'd7},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd2,3'd4},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_0_10[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_0_11[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_0_12[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_0_13[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_1_0[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_1_1[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_1_2[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_1_3[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_1_4[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd2},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd4},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd3,3'd7},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd3,3'd6,3'd7},
'{3'd0,3'd0,3'd0,3'd1,3'd2,3'd6,3'd7,3'd7},
'{3'd0,3'd0,3'd1,3'd1,3'd5,3'd7,3'd7,3'd3}};

parameter bit [2:0] SpriteTableR_1_5[7:0][7:0] = '{'{3'd0,3'd1,3'd1,3'd3,3'd7,3'd7,3'd5,3'd2},
'{3'd0,3'd1,3'd2,3'd6,3'd7,3'd6,3'd2,3'd3},
'{3'd0,3'd1,3'd5,3'd7,3'd7,3'd3,3'd3,3'd4},
'{3'd1,3'd3,3'd7,3'd7,3'd5,3'd2,3'd3,3'd4},
'{3'd2,3'd6,3'd7,3'd6,3'd3,3'd3,3'd3,3'd3},
'{3'd4,3'd7,3'd7,3'd4,3'd3,3'd3,3'd3,3'd3},
'{3'd6,3'd7,3'd6,3'd2,3'd3,3'd4,3'd3,3'd3},
'{3'd7,3'd7,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3}};

parameter bit [2:0] SpriteTableR_1_6[7:0][7:0] = '{'{3'd7,3'd5,3'd1,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd7,3'd2,3'd2,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd6,3'd1,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd3,3'd1,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd1,3'd2,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_1_7[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_1_8[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_1_9[7:0][7:0] = '{'{3'd3,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd7,3'd3,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd7,3'd7,3'd6,3'd4,3'd2,3'd2,3'd1,3'd2},
'{3'd7,3'd7,3'd7,3'd7,3'd7,3'd7,3'd6,3'd6},
'{3'd3,3'd6,3'd7,3'd7,3'd7,3'd7,3'd7,3'd7},
'{3'd1,3'd2,3'd4,3'd5,3'd5,3'd6,3'd6,3'd7},
'{3'd0,3'd1,3'd1,3'd1,3'd1,3'd2,3'd2,3'd3},
'{3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd0}};

parameter bit [2:0] SpriteTableR_1_10[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_1_11[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_1_12[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_1_13[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_2_0[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_2_1[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_2_2[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_2_3[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd2},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd0,3'd2,3'd6},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd2,3'd5,3'd7},
'{3'd0,3'd0,3'd0,3'd1,3'd2,3'd5,3'd7,3'd7},
'{3'd0,3'd0,3'd1,3'd2,3'd6,3'd7,3'd7,3'd6},
'{3'd0,3'd1,3'd2,3'd5,3'd7,3'd7,3'd5,3'd3}};

parameter bit [2:0] SpriteTableR_2_4[7:0][7:0] = '{'{3'd0,3'd1,3'd4,3'd7,3'd7,3'd5,3'd2,3'd3},
'{3'd2,3'd5,3'd7,3'd7,3'd4,3'd3,3'd3,3'd4},
'{3'd5,3'd7,3'd7,3'd4,3'd2,3'd3,3'd4,3'd4},
'{3'd7,3'd7,3'd5,3'd2,3'd3,3'd4,3'd3,3'd4},
'{3'd7,3'd5,3'd3,3'd4,3'd4,3'd4,3'd3,3'd3},
'{3'd6,3'd3,3'd3,3'd4,3'd3,3'd4,3'd3,3'd2},
'{3'd4,3'd3,3'd4,3'd4,3'd3,3'd3,3'd3,3'd3},
'{3'd3,3'd4,3'd3,3'd4,3'd4,3'd3,3'd2,3'd5}};

parameter bit [2:0] SpriteTableR_2_5[7:0][7:0] = '{'{3'd3,3'd4,3'd4,3'd3,3'd4,3'd3,3'd3,3'd7},
'{3'd4,3'd4,3'd4,3'd4,3'd3,3'd2,3'd5,3'd7},
'{3'd4,3'd3,3'd4,3'd4,3'd3,3'd3,3'd7,3'd7},
'{3'd3,3'd4,3'd3,3'd3,3'd2,3'd5,3'd7,3'd7},
'{3'd4,3'd3,3'd3,3'd3,3'd2,3'd6,3'd7,3'd7},
'{3'd3,3'd3,3'd3,3'd2,3'd3,3'd7,3'd7,3'd6},
'{3'd3,3'd3,3'd3,3'd2,3'd5,3'd7,3'd7,3'd5},
'{3'd3,3'd3,3'd3,3'd2,3'd6,3'd7,3'd7,3'd3}};

parameter bit [2:0] SpriteTableR_2_6[7:0][7:0] = '{'{3'd3,3'd3,3'd2,3'd3,3'd7,3'd7,3'd6,3'd2},
'{3'd3,3'd3,3'd2,3'd3,3'd7,3'd7,3'd6,3'd2},
'{3'd3,3'd3,3'd2,3'd5,3'd7,3'd7,3'd5,3'd1},
'{3'd3,3'd3,3'd2,3'd5,3'd7,3'd7,3'd4,3'd1},
'{3'd3,3'd2,3'd2,3'd6,3'd7,3'd7,3'd4,3'd1},
'{3'd1,3'd0,3'd2,3'd6,3'd7,3'd7,3'd4,3'd1},
'{3'd0,3'd0,3'd2,3'd6,3'd7,3'd7,3'd3,3'd1},
'{3'd0,3'd0,3'd1,3'd6,3'd7,3'd7,3'd4,3'd1}};

parameter bit [2:0] SpriteTableR_2_7[7:0][7:0] = '{'{3'd0,3'd0,3'd1,3'd5,3'd7,3'd7,3'd6,3'd2},
'{3'd0,3'd0,3'd0,3'd3,3'd7,3'd7,3'd7,3'd5},
'{3'd0,3'd0,3'd0,3'd1,3'd4,3'd7,3'd7,3'd7},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd4,3'd7,3'd7},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd3,3'd5},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_2_8[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_2_9[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd2,3'd3},
'{3'd2,3'd2,3'd2,3'd2,3'd3,3'd5,3'd6,3'd7},
'{3'd7,3'd7,3'd7,3'd7,3'd7,3'd7,3'd7,3'd7},
'{3'd7,3'd7,3'd7,3'd7,3'd7,3'd7,3'd7,3'd7},
'{3'd7,3'd7,3'd7,3'd6,3'd6,3'd5,3'd5,3'd3},
'{3'd3,3'd3,3'd2,3'd2,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd0}};

parameter bit [2:0] SpriteTableR_2_10[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_2_11[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_2_12[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_2_13[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_3_0[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_3_1[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_3_2[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd2},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd3,3'd5,3'd6},
'{3'd0,3'd1,3'd1,3'd2,3'd4,3'd6,3'd7,3'd7}};

parameter bit [2:0] SpriteTableR_3_3[7:0][7:0] = '{'{3'd1,3'd1,3'd2,3'd5,3'd7,3'd7,3'd7,3'd6},
'{3'd2,3'd4,3'd6,3'd7,3'd7,3'd7,3'd4,3'd3},
'{3'd5,3'd7,3'd7,3'd7,3'd6,3'd3,3'd2,3'd3},
'{3'd7,3'd7,3'd7,3'd5,3'd2,3'd3,3'd3,3'd3},
'{3'd7,3'd7,3'd4,3'd2,3'd3,3'd4,3'd3,3'd3},
'{3'd6,3'd3,3'd2,3'd3,3'd4,3'd3,3'd3,3'd2},
'{3'd3,3'd3,3'd3,3'd4,3'd3,3'd2,3'd3,3'd4},
'{3'd3,3'd4,3'd4,3'd3,3'd2,3'd3,3'd6,3'd7}};

parameter bit [2:0] SpriteTableR_3_4[7:0][7:0] = '{'{3'd4,3'd4,3'd3,3'd2,3'd3,3'd6,3'd7,3'd7},
'{3'd4,3'd3,3'd2,3'd3,3'd6,3'd7,3'd7,3'd6},
'{3'd3,3'd2,3'd3,3'd6,3'd7,3'd7,3'd6,3'd3},
'{3'd3,3'd2,3'd6,3'd7,3'd7,3'd6,3'd3,3'd1},
'{3'd2,3'd5,3'd7,3'd7,3'd6,3'd3,3'd1,3'd1},
'{3'd4,3'd7,3'd7,3'd7,3'd4,3'd1,3'd0,3'd1},
'{3'd6,3'd7,3'd7,3'd5,3'd1,3'd0,3'd1,3'd1},
'{3'd7,3'd7,3'd6,3'd2,3'd0,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableR_3_5[7:0][7:0] = '{'{3'd7,3'd7,3'd4,3'd1,3'd0,3'd1,3'd1,3'd1},
'{3'd7,3'd5,3'd1,3'd1,3'd0,3'd0,3'd1,3'd0},
'{3'd6,3'd3,3'd1,3'd1,3'd1,3'd0,3'd1,3'd1},
'{3'd5,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd3,3'd1,3'd1,3'd0,3'd0,3'd1,3'd2,3'd1},
'{3'd2,3'd0,3'd1,3'd1,3'd1,3'd1,3'd2,3'd1},
'{3'd1,3'd0,3'd0,3'd1,3'd1,3'd0,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_3_6[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd0,3'd1,3'd0,3'd0,3'd0},
'{3'd0,3'd1,3'd1,3'd2,3'd1,3'd0,3'd0,3'd1},
'{3'd1,3'd1,3'd1,3'd2,3'd1,3'd0,3'd1,3'd2},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd0,3'd0},
'{3'd0,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1}};

parameter bit [2:0] SpriteTableR_3_7[7:0][7:0] = '{'{3'd0,3'd0,3'd1,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd3,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd6,3'd5,3'd5,3'd5,3'd5,3'd4,3'd5,3'd5},
'{3'd7,3'd7,3'd7,3'd7,3'd7,3'd7,3'd7,3'd7},
'{3'd6,3'd7,3'd7,3'd7,3'd7,3'd7,3'd7,3'd7},
'{3'd2,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd2},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_3_8[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd2,3'd5},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd4,3'd6,3'd7},
'{3'd0,3'd0,3'd1,3'd3,3'd5,3'd7,3'd7,3'd7}};

parameter bit [2:0] SpriteTableR_3_9[7:0][7:0] = '{'{3'd1,3'd3,3'd5,3'd7,3'd7,3'd7,3'd7,3'd7},
'{3'd5,3'd7,3'd7,3'd7,3'd7,3'd7,3'd7,3'd7},
'{3'd7,3'd7,3'd7,3'd7,3'd6,3'd5,3'd3,3'd5},
'{3'd7,3'd7,3'd6,3'd3,3'd2,3'd1,3'd1,3'd5},
'{3'd5,3'd3,3'd2,3'd1,3'd1,3'd1,3'd2,3'd6},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd3,3'd7},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd1,3'd4,3'd7},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd5,3'd7}};

parameter bit [2:0] SpriteTableR_3_10[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd2,3'd4,3'd3},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_3_11[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_3_12[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_3_13[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_4_0[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_4_1[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_4_2[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd2},
'{3'd1,3'd0,3'd1,3'd2,3'd4,3'd5,3'd6,3'd6},
'{3'd1,3'd2,3'd5,3'd6,3'd7,3'd7,3'd7,3'd7},
'{3'd4,3'd6,3'd7,3'd7,3'd7,3'd7,3'd7,3'd6},
'{3'd7,3'd7,3'd7,3'd7,3'd5,3'd3,3'd2,3'd3},
'{3'd7,3'd7,3'd5,3'd3,3'd2,3'd2,3'd3,3'd3}};

parameter bit [2:0] SpriteTableR_4_3[7:0][7:0] = '{'{3'd5,3'd3,3'd2,3'd2,3'd3,3'd4,3'd3,3'd3},
'{3'd3,3'd4,3'd4,3'd4,3'd3,3'd2,3'd2,3'd3},
'{3'd4,3'd4,3'd3,3'd2,3'd2,3'd3,3'd5,3'd7},
'{3'd3,3'd3,3'd2,3'd3,3'd5,3'd7,3'd7,3'd7},
'{3'd2,3'd2,3'd5,3'd7,3'd7,3'd7,3'd7,3'd7},
'{3'd3,3'd6,3'd7,3'd7,3'd7,3'd6,3'd5,3'd3},
'{3'd7,3'd7,3'd7,3'd6,3'd5,3'd3,3'd1,3'd1},
'{3'd7,3'd7,3'd5,3'd3,3'd1,3'd1,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_4_4[7:0][7:0] = '{'{3'd6,3'd4,3'd1,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd3,3'd1,3'd1,3'd1,3'd1,3'd0,3'd1,3'd1},
'{3'd1,3'd0,3'd0,3'd0,3'd1,3'd1,3'd0,3'd1},
'{3'd1,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd0},
'{3'd1,3'd0,3'd0,3'd1,3'd1,3'd1,3'd2,3'd1},
'{3'd1,3'd0,3'd0,3'd1,3'd1,3'd1,3'd2,3'd1},
'{3'd1,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableR_4_5[7:0][7:0] = '{'{3'd1,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd0},
'{3'd1,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd3,3'd5},
'{3'd1,3'd1,3'd0,3'd1,3'd1,3'd1,3'd3,3'd4},
'{3'd1,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd0,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd1,3'd1}};

parameter bit [2:0] SpriteTableR_4_6[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd2,3'd1},
'{3'd1,3'd1,3'd0,3'd1,3'd1,3'd1,3'd1,3'd2},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd3,3'd5}};

parameter bit [2:0] SpriteTableR_4_7[7:0][7:0] = '{'{3'd1,3'd0,3'd1,3'd2,3'd2,3'd5,3'd7,3'd7},
'{3'd1,3'd2,3'd3,3'd4,3'd6,3'd7,3'd7,3'd7},
'{3'd5,3'd6,3'd6,3'd7,3'd7,3'd7,3'd5,3'd2},
'{3'd7,3'd7,3'd7,3'd7,3'd5,3'd2,3'd0,3'd0},
'{3'd6,3'd6,3'd4,3'd2,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_4_8[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd0,3'd0,3'd0},
'{3'd0,3'd1,3'd3,3'd5,3'd1,3'd0,3'd0,3'd0},
'{3'd2,3'd5,3'd7,3'd5,3'd1,3'd0,3'd0,3'd0},
'{3'd7,3'd7,3'd7,3'd3,3'd0,3'd0,3'd0,3'd0},
'{3'd7,3'd7,3'd7,3'd2,3'd0,3'd0,3'd0,3'd0},
'{3'd7,3'd7,3'd6,3'd1,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_4_9[7:0][7:0] = '{'{3'd7,3'd7,3'd4,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd7,3'd7,3'd3,3'd0,3'd0,3'd0,3'd1,3'd3},
'{3'd7,3'd6,3'd1,3'd1,3'd1,3'd3,3'd5,3'd7},
'{3'd7,3'd5,3'd2,3'd4,3'd6,3'd7,3'd7,3'd7},
'{3'd7,3'd7,3'd6,3'd7,3'd7,3'd7,3'd7,3'd6},
'{3'd7,3'd7,3'd7,3'd7,3'd6,3'd5,3'd3,3'd2},
'{3'd7,3'd7,3'd7,3'd4,3'd2,3'd1,3'd1,3'd1},
'{3'd6,3'd5,3'd2,3'd1,3'd1,3'd1,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_4_10[7:0][7:0] = '{'{3'd2,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_4_11[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_4_12[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_4_13[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_5_0[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_5_1[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_5_2[7:0][7:0] = '{'{3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd3,3'd4,3'd5,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd7,3'd7,3'd7,3'd7,3'd7,3'd7,3'd7,3'd7},
'{3'd7,3'd7,3'd6,3'd6,3'd5,3'd4,3'd3,3'd3},
'{3'd5,3'd3,3'd3,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd4,3'd4,3'd3},
'{3'd3,3'd3,3'd3,3'd3,3'd2,3'd2,3'd2,3'd1}};

parameter bit [2:0] SpriteTableR_5_3[7:0][7:0] = '{'{3'd3,3'd3,3'd3,3'd2,3'd3,3'd4,3'd4,3'd4},
'{3'd4,3'd6,3'd7,3'd7,3'd7,3'd7,3'd7,3'd6},
'{3'd7,3'd7,3'd7,3'd7,3'd7,3'd7,3'd7,3'd5},
'{3'd7,3'd7,3'd7,3'd6,3'd7,3'd7,3'd7,3'd4},
'{3'd6,3'd4,3'd3,3'd2,3'd5,3'd7,3'd7,3'd3},
'{3'd2,3'd1,3'd1,3'd1,3'd5,3'd7,3'd6,3'd3},
'{3'd0,3'd0,3'd1,3'd2,3'd6,3'd7,3'd5,3'd2},
'{3'd1,3'd0,3'd1,3'd3,3'd7,3'd7,3'd4,3'd3}};

parameter bit [2:0] SpriteTableR_5_4[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd4,3'd7,3'd7,3'd3,3'd2},
'{3'd2,3'd1,3'd1,3'd6,3'd7,3'd6,3'd1,3'd2},
'{3'd1,3'd1,3'd2,3'd6,3'd7,3'd5,3'd2,3'd5},
'{3'd1,3'd1,3'd3,3'd7,3'd7,3'd4,3'd5,3'd7},
'{3'd1,3'd1,3'd5,3'd7,3'd7,3'd7,3'd7,3'd7},
'{3'd1,3'd1,3'd6,3'd7,3'd7,3'd7,3'd7,3'd7},
'{3'd0,3'd2,3'd7,3'd7,3'd7,3'd7,3'd6,3'd4},
'{3'd1,3'd4,3'd7,3'd7,3'd7,3'd6,3'd3,3'd4}};

parameter bit [2:0] SpriteTableR_5_5[7:0][7:0] = '{'{3'd1,3'd6,3'd7,3'd7,3'd7,3'd6,3'd6,3'd7},
'{3'd2,3'd6,3'd7,3'd7,3'd7,3'd7,3'd7,3'd7},
'{3'd4,3'd7,3'd7,3'd7,3'd7,3'd7,3'd6,3'd4},
'{3'd7,3'd7,3'd7,3'd7,3'd7,3'd5,3'd2,3'd2},
'{3'd5,3'd6,3'd7,3'd7,3'd7,3'd4,3'd1,3'd3},
'{3'd1,3'd2,3'd5,3'd7,3'd7,3'd7,3'd3,3'd2},
'{3'd1,3'd0,3'd1,3'd5,3'd7,3'd7,3'd5,3'd2},
'{3'd2,3'd1,3'd0,3'd2,3'd6,3'd7,3'd7,3'd3}};

parameter bit [2:0] SpriteTableR_5_6[7:0][7:0] = '{'{3'd1,3'd1,3'd0,3'd1,3'd5,3'd7,3'd7,3'd3},
'{3'd0,3'd1,3'd1,3'd1,3'd4,3'd7,3'd7,3'd3},
'{3'd1,3'd1,3'd1,3'd1,3'd5,3'd7,3'd7,3'd3},
'{3'd1,3'd1,3'd1,3'd3,3'd6,3'd7,3'd6,3'd2},
'{3'd0,3'd0,3'd2,3'd5,3'd7,3'd7,3'd4,3'd1},
'{3'd1,3'd3,3'd6,3'd7,3'd7,3'd5,3'd1,3'd0},
'{3'd4,3'd6,3'd7,3'd7,3'd5,3'd1,3'd0,3'd0},
'{3'd7,3'd7,3'd6,3'd3,3'd1,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_5_7[7:0][7:0] = '{'{3'd7,3'd5,3'd2,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd4,3'd2,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_5_8[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd2,3'd4},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd4,3'd6,3'd7},
'{3'd0,3'd0,3'd1,3'd3,3'd6,3'd7,3'd7,3'd7}};

parameter bit [2:0] SpriteTableR_5_9[7:0][7:0] = '{'{3'd1,3'd3,3'd6,3'd7,3'd7,3'd7,3'd7,3'd5},
'{3'd6,3'd7,3'd7,3'd7,3'd7,3'd6,3'd4,3'd2},
'{3'd7,3'd7,3'd7,3'd6,3'd4,3'd2,3'd1,3'd1},
'{3'd7,3'd5,3'd3,3'd1,3'd1,3'd1,3'd1,3'd0},
'{3'd3,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_5_10[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_5_11[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_5_12[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_5_13[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_6_0[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_6_1[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_6_2[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd2,3'd1,3'd1,3'd0,3'd1,3'd0,3'd0,3'd0},
'{3'd6,3'd5,3'd4,3'd3,3'd2,3'd1,3'd1,3'd1},
'{3'd7,3'd7,3'd7,3'd7,3'd6,3'd5,3'd4,3'd4},
'{3'd4,3'd4,3'd6,3'd7,3'd7,3'd7,3'd7,3'd7},
'{3'd2,3'd2,3'd2,3'd3,3'd4,3'd5,3'd6,3'd6},
'{3'd4,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd2},
'{3'd1,3'd3,3'd4,3'd3,3'd3,3'd3,3'd3,3'd3}};

parameter bit [2:0] SpriteTableR_6_3[7:0][7:0] = '{'{3'd2,3'd3,3'd4,3'd3,3'd3,3'd4,3'd3,3'd3},
'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd4,3'd3},
'{3'd2,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd2,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd2},
'{3'd2,3'd3,3'd3,3'd3,3'd3,3'd2,3'd2,3'd4},
'{3'd3,3'd3,3'd3,3'd3,3'd2,3'd2,3'd5,3'd7},
'{3'd3,3'd3,3'd2,3'd2,3'd3,3'd6,3'd7,3'd7},
'{3'd3,3'd2,3'd2,3'd5,3'd7,3'd7,3'd7,3'd6}};

parameter bit [2:0] SpriteTableR_6_4[7:0][7:0] = '{'{3'd2,3'd2,3'd6,3'd7,3'd7,3'd7,3'd5,3'd2},
'{3'd4,3'd6,3'd7,3'd7,3'd6,3'd5,3'd2,3'd1},
'{3'd7,3'd7,3'd7,3'd6,3'd3,3'd1,3'd0,3'd1},
'{3'd7,3'd7,3'd6,3'd2,3'd0,3'd0,3'd1,3'd1},
'{3'd7,3'd5,3'd2,3'd1,3'd1,3'd2,3'd4,3'd5},
'{3'd4,3'd2,3'd1,3'd2,3'd4,3'd6,3'd7,3'd7},
'{3'd2,3'd2,3'd4,3'd6,3'd7,3'd7,3'd7,3'd6},
'{3'd6,3'd6,3'd7,3'd7,3'd7,3'd6,3'd4,3'd2}};

parameter bit [2:0] SpriteTableR_6_5[7:0][7:0] = '{'{3'd7,3'd7,3'd7,3'd6,3'd4,3'd2,3'd2,3'd3},
'{3'd6,3'd5,3'd3,3'd2,3'd2,3'd2,3'd3,3'd3},
'{3'd2,3'd1,3'd2,3'd3,3'd3,3'd4,3'd3,3'd2},
'{3'd2,3'd3,3'd3,3'd3,3'd3,3'd3,3'd2,3'd3},
'{3'd3,3'd3,3'd3,3'd3,3'd4,3'd3,3'd2,3'd5},
'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd2,3'd3,3'd7},
'{3'd3,3'd3,3'd3,3'd3,3'd2,3'd1,3'd6,3'd7},
'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd2,3'd6,3'd7}};

parameter bit [2:0] SpriteTableR_6_6[7:0][7:0] = '{'{3'd2,3'd3,3'd3,3'd3,3'd3,3'd2,3'd4,3'd7},
'{3'd2,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd7},
'{3'd2,3'd3,3'd3,3'd3,3'd3,3'd3,3'd2,3'd5},
'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd4,3'd2,3'd3},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_6_7[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_6_8[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd2},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd3,3'd5,3'd7},
'{3'd0,3'd0,3'd1,3'd3,3'd6,3'd7,3'd7,3'd7},
'{3'd1,3'd3,3'd6,3'd7,3'd7,3'd7,3'd6,3'd5},
'{3'd6,3'd7,3'd7,3'd7,3'd6,3'd4,3'd2,3'd1},
'{3'd7,3'd7,3'd6,3'd4,3'd2,3'd1,3'd1,3'd1},
'{3'd7,3'd5,3'd2,3'd1,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_6_9[7:0][7:0] = '{'{3'd3,3'd1,3'd0,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_6_10[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_6_11[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_6_12[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_6_13[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_7_0[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_7_1[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd3}};

parameter bit [2:0] SpriteTableR_7_2[7:0][7:0] = '{'{3'd0,3'd0,3'd1,3'd1,3'd1,3'd3,3'd5,3'd7},
'{3'd0,3'd1,3'd1,3'd2,3'd5,3'd7,3'd7,3'd6},
'{3'd1,3'd2,3'd4,3'd6,3'd7,3'd7,3'd4,3'd2},
'{3'd5,3'd6,3'd7,3'd6,3'd4,3'd3,3'd2,3'd3},
'{3'd7,3'd7,3'd5,3'd2,3'd2,3'd3,3'd4,3'd3},
'{3'd5,3'd3,3'd2,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd2,3'd2,3'd3,3'd3,3'd3,3'd3,3'd2,3'd2},
'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd1,3'd2,3'd5}};

parameter bit [2:0] SpriteTableR_7_3[7:0][7:0] = '{'{3'd3,3'd3,3'd3,3'd2,3'd2,3'd4,3'd6,3'd7},
'{3'd3,3'd2,3'd2,3'd4,3'd6,3'd7,3'd7,3'd7},
'{3'd1,3'd2,3'd5,3'd7,3'd7,3'd7,3'd7,3'd5},
'{3'd3,3'd6,3'd7,3'd7,3'd7,3'd6,3'd3,3'd1},
'{3'd7,3'd7,3'd7,3'd7,3'd5,3'd2,3'd1,3'd1},
'{3'd7,3'd7,3'd6,3'd4,3'd2,3'd1,3'd1,3'd1},
'{3'd7,3'd5,3'd2,3'd1,3'd2,3'd1,3'd1,3'd1},
'{3'd3,3'd1,3'd0,3'd0,3'd1,3'd1,3'd0,3'd2}};

parameter bit [2:0] SpriteTableR_7_4[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd0,3'd1,3'd1,3'd1,3'd3},
'{3'd1,3'd1,3'd1,3'd1,3'd2,3'd4,3'd5,3'd6},
'{3'd1,3'd1,3'd2,3'd4,3'd6,3'd7,3'd7,3'd7},
'{3'd2,3'd4,3'd6,3'd7,3'd7,3'd7,3'd7,3'd7},
'{3'd6,3'd7,3'd7,3'd7,3'd7,3'd7,3'd7,3'd5},
'{3'd7,3'd7,3'd7,3'd7,3'd7,3'd7,3'd6,3'd3},
'{3'd5,3'd4,3'd4,3'd7,3'd7,3'd7,3'd5,3'd1},
'{3'd1,3'd1,3'd5,3'd7,3'd7,3'd6,3'd3,3'd2}};

parameter bit [2:0] SpriteTableR_7_5[7:0][7:0] = '{'{3'd2,3'd3,3'd7,3'd7,3'd7,3'd4,3'd1,3'd1},
'{3'd2,3'd6,3'd7,3'd7,3'd5,3'd2,3'd2,3'd3},
'{3'd4,3'd7,3'd7,3'd7,3'd5,3'd5,3'd6,3'd7},
'{3'd7,3'd7,3'd7,3'd7,3'd7,3'd7,3'd7,3'd7},
'{3'd7,3'd7,3'd7,3'd7,3'd6,3'd5,3'd3,3'd2},
'{3'd7,3'd7,3'd7,3'd6,3'd3,3'd2,3'd1,3'd1},
'{3'd7,3'd7,3'd7,3'd7,3'd6,3'd6,3'd6,3'd6},
'{3'd7,3'd7,3'd7,3'd7,3'd7,3'd7,3'd7,3'd7}};

parameter bit [2:0] SpriteTableR_7_6[7:0][7:0] = '{'{3'd7,3'd7,3'd4,3'd3,3'd3,3'd3,3'd4,3'd6},
'{3'd7,3'd7,3'd3,3'd1,3'd0,3'd1,3'd5,3'd7},
'{3'd7,3'd7,3'd5,3'd2,3'd0,3'd2,3'd7,3'd7},
'{3'd7,3'd7,3'd6,3'd2,3'd0,3'd3,3'd7,3'd7},
'{3'd6,3'd7,3'd7,3'd4,3'd1,3'd3,3'd7,3'd7},
'{3'd3,3'd7,3'd7,3'd6,3'd2,3'd4,3'd7,3'd7},
'{3'd1,3'd6,3'd7,3'd7,3'd4,3'd5,3'd7,3'd6},
'{3'd0,3'd4,3'd7,3'd7,3'd6,3'd7,3'd7,3'd5}};

parameter bit [2:0] SpriteTableR_7_7[7:0][7:0] = '{'{3'd0,3'd1,3'd6,3'd7,3'd7,3'd7,3'd7,3'd5},
'{3'd0,3'd1,3'd4,3'd7,3'd7,3'd7,3'd7,3'd4},
'{3'd0,3'd0,3'd2,3'd7,3'd7,3'd7,3'd7,3'd3},
'{3'd0,3'd0,3'd0,3'd5,3'd7,3'd7,3'd7,3'd2},
'{3'd0,3'd0,3'd0,3'd2,3'd7,3'd7,3'd7,3'd2},
'{3'd0,3'd0,3'd0,3'd1,3'd5,3'd7,3'd6,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd3,3'd7,3'd5,3'd0},
'{3'd0,3'd0,3'd1,3'd2,3'd5,3'd7,3'd4,3'd0}};

parameter bit [2:0] SpriteTableR_7_8[7:0][7:0] = '{'{3'd1,3'd3,3'd5,3'd7,3'd7,3'd7,3'd3,3'd0},
'{3'd5,3'd7,3'd7,3'd7,3'd7,3'd7,3'd2,3'd0},
'{3'd7,3'd7,3'd7,3'd6,3'd7,3'd6,3'd1,3'd0},
'{3'd7,3'd5,3'd3,3'd2,3'd6,3'd6,3'd1,3'd0},
'{3'd3,3'd1,3'd1,3'd2,3'd6,3'd6,3'd1,3'd0},
'{3'd1,3'd0,3'd1,3'd2,3'd6,3'd7,3'd3,3'd0},
'{3'd0,3'd0,3'd1,3'd1,3'd5,3'd7,3'd6,3'd3},
'{3'd0,3'd0,3'd0,3'd1,3'd4,3'd7,3'd7,3'd7}};

parameter bit [2:0] SpriteTableR_7_9[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd5,3'd7,3'd7},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd2,3'd5,3'd5},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_7_10[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_7_11[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_7_12[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_7_13[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_8_0[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_8_1[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd1,3'd1,3'd1,3'd2,3'd4,3'd6},
'{3'd1,3'd1,3'd1,3'd2,3'd4,3'd6,3'd7,3'd7},
'{3'd1,3'd3,3'd5,3'd6,3'd7,3'd7,3'd6,3'd3},
'{3'd6,3'd7,3'd7,3'd7,3'd6,3'd3,3'd2,3'd2}};

parameter bit [2:0] SpriteTableR_8_2[7:0][7:0] = '{'{3'd7,3'd6,3'd5,3'd4,3'd2,3'd2,3'd3,3'd3},
'{3'd4,3'd2,3'd2,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd2,3'd2,3'd3,3'd3,3'd3,3'd3,3'd3,3'd2},
'{3'd3,3'd4,3'd3,3'd3,3'd2,3'd2,3'd3,3'd5},
'{3'd3,3'd3,3'd2,3'd1,3'd3,3'd5,3'd7,3'd7},
'{3'd3,3'd2,3'd2,3'd5,3'd7,3'd7,3'd7,3'd7},
'{3'd3,3'd5,3'd7,3'd7,3'd7,3'd7,3'd6,3'd4},
'{3'd7,3'd7,3'd7,3'd7,3'd6,3'd3,3'd2,3'd1}};

parameter bit [2:0] SpriteTableR_8_3[7:0][7:0] = '{'{3'd7,3'd7,3'd6,3'd4,3'd2,3'd1,3'd0,3'd0},
'{3'd6,3'd3,3'd2,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd2,3'd1,3'd0,3'd1,3'd1,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd0,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0},
'{3'd1,3'd2,3'd3,3'd2,3'd2,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_8_4[7:0][7:0] = '{'{3'd5,3'd6,3'd4,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd7,3'd5,3'd2,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd6,3'd2,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd4,3'd1,3'd2,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd0,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd0,3'd1,3'd2,3'd4,3'd6}};

parameter bit [2:0] SpriteTableR_8_5[7:0][7:0] = '{'{3'd1,3'd1,3'd2,3'd3,3'd5,3'd6,3'd7,3'd7},
'{3'd4,3'd5,3'd6,3'd7,3'd7,3'd7,3'd6,3'd5},
'{3'd7,3'd7,3'd7,3'd7,3'd6,3'd4,3'd2,3'd2},
'{3'd7,3'd6,3'd4,3'd2,3'd2,3'd2,3'd2,3'd3},
'{3'd2,3'd2,3'd2,3'd2,3'd3,3'd3,3'd3,3'd3},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd3,3'd3},
'{3'd6,3'd6,3'd6,3'd5,3'd5,3'd3,3'd2,3'd3},
'{3'd7,3'd7,3'd7,3'd7,3'd7,3'd5,3'd1,3'd3}};

parameter bit [2:0] SpriteTableR_8_6[7:0][7:0] = '{'{3'd7,3'd7,3'd7,3'd7,3'd6,3'd3,3'd2,3'd3},
'{3'd7,3'd7,3'd7,3'd4,3'd2,3'd1,3'd3,3'd3},
'{3'd7,3'd5,3'd3,3'd2,3'd2,3'd3,3'd3,3'd3},
'{3'd6,3'd2,3'd2,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd3,3'd1,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd2,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1}};

parameter bit [2:0] SpriteTableR_8_7[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd2},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd2},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd3},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd4},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd4},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_8_8[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd1,3'd0,3'd0,3'd1,3'd1,3'd2,3'd4,3'd6},
'{3'd5,3'd4,3'd4,3'd5,3'd6,3'd7,3'd7,3'd7}};

parameter bit [2:0] SpriteTableR_8_9[7:0][7:0] = '{'{3'd7,3'd7,3'd7,3'd7,3'd7,3'd7,3'd6,3'd5},
'{3'd6,3'd6,3'd6,3'd6,3'd5,3'd3,3'd2,3'd1},
'{3'd2,3'd2,3'd2,3'd2,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_8_10[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_8_11[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_8_12[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_8_13[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_9_0[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1}};

parameter bit [2:0] SpriteTableR_9_1[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd2},
'{3'd0,3'd0,3'd1,3'd1,3'd1,3'd3,3'd5,3'd6},
'{3'd1,3'd1,3'd2,3'd3,3'd5,3'd6,3'd7,3'd7},
'{3'd3,3'd5,3'd6,3'd7,3'd7,3'd7,3'd5,3'd3},
'{3'd7,3'd7,3'd7,3'd6,3'd4,3'd2,3'd1,3'd2},
'{3'd6,3'd6,3'd4,3'd2,3'd2,3'd2,3'd3,3'd3},
'{3'd2,3'd3,3'd2,3'd3,3'd3,3'd3,3'd3,3'd2},
'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd1,3'd1}};

parameter bit [2:0] SpriteTableR_9_2[7:0][7:0] = '{'{3'd3,3'd3,3'd2,3'd2,3'd2,3'd2,3'd3,3'd5},
'{3'd2,3'd1,3'd2,3'd3,3'd6,3'd7,3'd7,3'd7},
'{3'd2,3'd4,3'd6,3'd7,3'd7,3'd7,3'd7,3'd6},
'{3'd6,3'd7,3'd7,3'd7,3'd6,3'd5,3'd3,3'd2},
'{3'd7,3'd7,3'd6,3'd5,3'd2,3'd1,3'd0,3'd0},
'{3'd6,3'd5,3'd2,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd2,3'd2,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd2,3'd1,3'd1}};

parameter bit [2:0] SpriteTableR_9_3[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd2,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd1,3'd1,3'd2},
'{3'd1,3'd1,3'd1,3'd0,3'd1,3'd3,3'd5,3'd5}};

parameter bit [2:0] SpriteTableR_9_4[7:0][7:0] = '{'{3'd1,3'd1,3'd0,3'd1,3'd1,3'd3,3'd7,3'd6},
'{3'd1,3'd0,3'd0,3'd1,3'd0,3'd1,3'd4,3'd4},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd2},
'{3'd0,3'd0,3'd1,3'd2,3'd3,3'd4,3'd5,3'd6},
'{3'd2,3'd3,3'd4,3'd6,3'd7,3'd7,3'd7,3'd7},
'{3'd6,3'd7,3'd7,3'd7,3'd7,3'd7,3'd7,3'd7}};

parameter bit [2:0] SpriteTableR_9_5[7:0][7:0] = '{'{3'd7,3'd7,3'd6,3'd5,3'd4,3'd3,3'd2,3'd2},
'{3'd4,3'd3,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd2,3'd2,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3}};

parameter bit [2:0] SpriteTableR_9_6[7:0][7:0] = '{'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd2,3'd3,3'd3},
'{3'd3,3'd3,3'd3,3'd2,3'd2,3'd1,3'd2,3'd4},
'{3'd2,3'd2,3'd2,3'd2,3'd3,3'd2,3'd1,3'd1},
'{3'd0,3'd2,3'd4,3'd6,3'd7,3'd3,3'd0,3'd0},
'{3'd2,3'd6,3'd7,3'd7,3'd7,3'd2,3'd0,3'd0},
'{3'd5,3'd7,3'd7,3'd7,3'd7,3'd2,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_9_7[7:0][7:0] = '{'{3'd6,3'd7,3'd5,3'd5,3'd6,3'd1,3'd0,3'd0},
'{3'd7,3'd7,3'd3,3'd5,3'd6,3'd1,3'd0,3'd0},
'{3'd7,3'd7,3'd6,3'd7,3'd5,3'd1,3'd0,3'd0},
'{3'd7,3'd7,3'd7,3'd7,3'd3,3'd0,3'd0,3'd0},
'{3'd7,3'd6,3'd6,3'd4,3'd1,3'd0,3'd0,3'd0},
'{3'd2,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_9_8[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd2,3'd3,3'd1},
'{3'd0,3'd0,3'd0,3'd1,3'd3,3'd6,3'd6,3'd2},
'{3'd0,3'd1,3'd2,3'd4,3'd7,3'd7,3'd7,3'd2},
'{3'd3,3'd5,3'd6,3'd7,3'd7,3'd7,3'd7,3'd3},
'{3'd7,3'd7,3'd7,3'd5,3'd3,3'd4,3'd7,3'd5},
'{3'd7,3'd6,3'd4,3'd1,3'd1,3'd3,3'd7,3'd7}};

parameter bit [2:0] SpriteTableR_9_9[7:0][7:0] = '{'{3'd3,3'd2,3'd1,3'd1,3'd0,3'd2,3'd7,3'd7},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd3,3'd5},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_9_10[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_9_11[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_9_12[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_9_13[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_10_0[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1},
'{3'd0,3'd0,3'd1,3'd0,3'd1,3'd1,3'd2,3'd3},
'{3'd1,3'd1,3'd1,3'd2,3'd3,3'd5,3'd6,3'd7}};

parameter bit [2:0] SpriteTableR_10_1[7:0][7:0] = '{'{3'd3,3'd4,3'd5,3'd6,3'd7,3'd7,3'd7,3'd6},
'{3'd7,3'd7,3'd7,3'd7,3'd6,3'd4,3'd3,3'd2},
'{3'd7,3'd6,3'd5,3'd3,3'd2,3'd2,3'd2,3'd3},
'{3'd3,3'd3,3'd2,3'd2,3'd3,3'd3,3'd3,3'd3},
'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd2,3'd2},
'{3'd3,3'd3,3'd2,3'd2,3'd2,3'd2,3'd2,3'd3},
'{3'd2,3'd1,3'd2,3'd3,3'd5,3'd6,3'd6,3'd7},
'{3'd2,3'd4,3'd6,3'd7,3'd7,3'd7,3'd7,3'd7}};

parameter bit [2:0] SpriteTableR_10_2[7:0][7:0] = '{'{3'd7,3'd7,3'd7,3'd7,3'd6,3'd6,3'd5,3'd4},
'{3'd7,3'd7,3'd6,3'd4,3'd2,3'd1,3'd1,3'd1},
'{3'd5,3'd3,3'd2,3'd1,3'd0,3'd0,3'd0,3'd1},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd0,3'd0},
'{3'd1,3'd0,3'd1,3'd2,3'd1,3'd0,3'd1,3'd2},
'{3'd1,3'd0,3'd1,3'd1,3'd1,3'd1,3'd4,3'd6},
'{3'd1,3'd0,3'd0,3'd0,3'd1,3'd5,3'd7,3'd7}};

parameter bit [2:0] SpriteTableR_10_3[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd2,3'd6,3'd7,3'd7},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd2,3'd3,3'd5},
'{3'd1,3'd1,3'd1,3'd2,3'd1,3'd2,3'd1,3'd2},
'{3'd1,3'd1,3'd0,3'd1,3'd1,3'd1,3'd0,3'd0},
'{3'd2,3'd0,3'd0,3'd1,3'd1,3'd0,3'd0,3'd0},
'{3'd1,3'd0,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0},
'{3'd1,3'd0,3'd1,3'd1,3'd1,3'd2,3'd1,3'd0},
'{3'd2,3'd0,3'd0,3'd1,3'd1,3'd1,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_10_4[7:0][7:0] = '{'{3'd3,3'd0,3'd0,3'd0,3'd1,3'd0,3'd0,3'd0},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd2,3'd1,3'd1,3'd1},
'{3'd5,3'd5,3'd4,3'd3,3'd2,3'd1,3'd2,3'd1},
'{3'd7,3'd7,3'd7,3'd6,3'd4,3'd2,3'd1,3'd0},
'{3'd7,3'd7,3'd7,3'd7,3'd7,3'd6,3'd4,3'd1}};

parameter bit [2:0] SpriteTableR_10_5[7:0][7:0] = '{'{3'd2,3'd3,3'd4,3'd7,3'd7,3'd7,3'd7,3'd4},
'{3'd2,3'd2,3'd2,3'd3,3'd5,3'd7,3'd7,3'd6},
'{3'd3,3'd3,3'd3,3'd2,3'd2,3'd5,3'd7,3'd7},
'{3'd3,3'd3,3'd3,3'd3,3'd2,3'd2,3'd7,3'd7},
'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd2,3'd5,3'd7},
'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd2,3'd4,3'd7},
'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd2,3'd3,3'd7},
'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd2,3'd4,3'd7}};

parameter bit [2:0] SpriteTableR_10_6[7:0][7:0] = '{'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd2,3'd4,3'd7},
'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd2,3'd4,3'd7},
'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd2,3'd4,3'd7},
'{3'd3,3'd3,3'd4,3'd4,3'd3,3'd2,3'd4,3'd7},
'{3'd2,3'd2,3'd2,3'd2,3'd1,3'd1,3'd4,3'd7},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd4,3'd7},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd5,3'd7},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd5,3'd7}};

parameter bit [2:0] SpriteTableR_10_7[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd6,3'd7},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd6,3'd7},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd6,3'd7},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd6,3'd7},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd5,3'd6},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_10_8[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd2,3'd5},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd2,3'd6,3'd7},
'{3'd0,3'd0,3'd0,3'd0,3'd3,3'd6,3'd7,3'd7},
'{3'd0,3'd0,3'd0,3'd3,3'd6,3'd7,3'd6,3'd4},
'{3'd0,3'd1,3'd4,3'd7,3'd7,3'd6,3'd2,3'd1},
'{3'd2,3'd5,3'd7,3'd7,3'd7,3'd3,3'd1,3'd0},
'{3'd7,3'd7,3'd7,3'd6,3'd3,3'd1,3'd1,3'd0}};

parameter bit [2:0] SpriteTableR_10_9[7:0][7:0] = '{'{3'd7,3'd7,3'd5,3'd2,3'd0,3'd0,3'd0,3'd0},
'{3'd6,3'd5,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_10_10[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_10_11[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_10_12[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_10_13[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_11_0[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd0,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd2,3'd3,3'd4},
'{3'd1,3'd2,3'd3,3'd4,3'd5,3'd6,3'd7,3'd7},
'{3'd4,3'd6,3'd7,3'd7,3'd7,3'd7,3'd7,3'd7},
'{3'd7,3'd7,3'd7,3'd7,3'd6,3'd5,3'd3,3'd2}};

parameter bit [2:0] SpriteTableR_11_1[7:0][7:0] = '{'{3'd5,3'd4,3'd4,3'd3,3'd3,3'd2,3'd2,3'd2},
'{3'd2,3'd2,3'd2,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd2,3'd2},
'{3'd3,3'd2,3'd2,3'd2,3'd2,3'd3,3'd4,3'd5},
'{3'd1,3'd2,3'd3,3'd4,3'd6,3'd7,3'd7,3'd7},
'{3'd5,3'd6,3'd7,3'd7,3'd7,3'd7,3'd7,3'd6},
'{3'd7,3'd7,3'd7,3'd7,3'd6,3'd4,3'd3,3'd2},
'{3'd7,3'd6,3'd5,3'd3,3'd2,3'd1,3'd1,3'd0}};

parameter bit [2:0] SpriteTableR_11_2[7:0][7:0] = '{'{3'd3,3'd2,3'd2,3'd1,3'd1,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd0,3'd1,3'd1,3'd3},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd2,3'd5,3'd6},
'{3'd0,3'd0,3'd1,3'd3,3'd5,3'd6,3'd7,3'd7},
'{3'd1,3'd2,3'd5,3'd7,3'd7,3'd7,3'd7,3'd5},
'{3'd3,3'd6,3'd7,3'd7,3'd6,3'd5,3'd2,3'd1},
'{3'd7,3'd7,3'd7,3'd7,3'd5,3'd3,3'd2,3'd2},
'{3'd7,3'd7,3'd7,3'd7,3'd7,3'd7,3'd7,3'd7}};

parameter bit [2:0] SpriteTableR_11_3[7:0][7:0] = '{'{3'd7,3'd7,3'd7,3'd7,3'd7,3'd7,3'd7,3'd7},
'{3'd4,3'd3,3'd3,3'd3,3'd4,3'd4,3'd5,3'd7},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd2,3'd7},
'{3'd0,3'd1,3'd1,3'd0,3'd0,3'd1,3'd2,3'd7},
'{3'd0,3'd1,3'd1,3'd0,3'd1,3'd2,3'd3,3'd7},
'{3'd0,3'd1,3'd2,3'd1,3'd1,3'd1,3'd3,3'd7},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd3,3'd7},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd3,3'd7}};

parameter bit [2:0] SpriteTableR_11_4[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd3,3'd7},
'{3'd0,3'd0,3'd1,3'd0,3'd0,3'd0,3'd3,3'd7},
'{3'd0,3'd1,3'd1,3'd0,3'd1,3'd1,3'd3,3'd7},
'{3'd0,3'd1,3'd1,3'd0,3'd1,3'd1,3'd3,3'd7},
'{3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd3,3'd7},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd4,3'd7},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd4,3'd7},
'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd4,3'd7}};

parameter bit [2:0] SpriteTableR_11_5[7:0][7:0] = '{'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd1,3'd4,3'd7},
'{3'd3,3'd0,3'd0,3'd0,3'd0,3'd1,3'd5,3'd7},
'{3'd6,3'd1,3'd0,3'd0,3'd0,3'd1,3'd5,3'd7},
'{3'd7,3'd2,3'd0,3'd0,3'd0,3'd1,3'd5,3'd7},
'{3'd7,3'd3,3'd1,3'd1,3'd1,3'd1,3'd5,3'd7},
'{3'd7,3'd3,3'd1,3'd1,3'd2,3'd1,3'd5,3'd7},
'{3'd7,3'd3,3'd0,3'd0,3'd1,3'd1,3'd5,3'd7},
'{3'd7,3'd3,3'd0,3'd0,3'd1,3'd1,3'd6,3'd7}};

parameter bit [2:0] SpriteTableR_11_6[7:0][7:0] = '{'{3'd7,3'd3,3'd0,3'd1,3'd1,3'd1,3'd6,3'd7},
'{3'd7,3'd3,3'd1,3'd1,3'd1,3'd1,3'd6,3'd7},
'{3'd7,3'd3,3'd1,3'd1,3'd1,3'd1,3'd6,3'd7},
'{3'd7,3'd3,3'd1,3'd1,3'd1,3'd2,3'd6,3'd7},
'{3'd7,3'd2,3'd0,3'd0,3'd0,3'd2,3'd6,3'd7},
'{3'd7,3'd3,3'd1,3'd1,3'd0,3'd2,3'd7,3'd7},
'{3'd7,3'd2,3'd0,3'd0,3'd0,3'd2,3'd7,3'd7},
'{3'd7,3'd2,3'd0,3'd1,3'd3,3'd5,3'd7,3'd7}};

parameter bit [2:0] SpriteTableR_11_7[7:0][7:0] = '{'{3'd6,3'd3,3'd3,3'd6,3'd7,3'd7,3'd7,3'd7},
'{3'd7,3'd7,3'd7,3'd7,3'd7,3'd7,3'd7,3'd7},
'{3'd7,3'd7,3'd7,3'd7,3'd7,3'd6,3'd6,3'd7},
'{3'd7,3'd7,3'd7,3'd5,3'd3,3'd3,3'd6,3'd7},
'{3'd6,3'd5,3'd3,3'd1,3'd2,3'd6,3'd7,3'd7},
'{3'd1,3'd1,3'd1,3'd3,3'd6,3'd7,3'd7,3'd7},
'{3'd0,3'd1,3'd4,3'd7,3'd7,3'd7,3'd7,3'd7},
'{3'd1,3'd4,3'd7,3'd7,3'd6,3'd5,3'd7,3'd7}};

parameter bit [2:0] SpriteTableR_11_8[7:0][7:0] = '{'{3'd5,3'd7,3'd7,3'd6,3'd3,3'd2,3'd6,3'd7},
'{3'd7,3'd7,3'd6,3'd2,3'd1,3'd1,3'd5,3'd7},
'{3'd7,3'd5,3'd2,3'd1,3'd1,3'd1,3'd6,3'd7},
'{3'd5,3'd2,3'd1,3'd1,3'd1,3'd2,3'd6,3'd6},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd2,3'd6,3'd6},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd2,3'd6,3'd6},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd2,3'd6,3'd7},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd6,3'd7}};

parameter bit [2:0] SpriteTableR_11_9[7:0][7:0] = '{'{3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd4,3'd7},
'{3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd2,3'd6},
'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd3},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_11_10[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_11_11[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_11_12[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_11_13[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_12_0[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd2},
'{3'd1,3'd1,3'd2,3'd3,3'd4,3'd5,3'd5,3'd6},
'{3'd5,3'd6,3'd6,3'd7,3'd7,3'd7,3'd7,3'd7},
'{3'd7,3'd7,3'd7,3'd7,3'd6,3'd6,3'd5,3'd4},
'{3'd6,3'd4,3'd3,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd2,3'd2,3'd2,3'd2,3'd3,3'd3,3'd3,3'd3}};

parameter bit [2:0] SpriteTableR_12_1[7:0][7:0] = '{'{3'd3,3'd3,3'd4,3'd4,3'd3,3'd3,3'd2,3'd2},
'{3'd3,3'd3,3'd2,3'd2,3'd1,3'd2,3'd2,3'd2},
'{3'd2,3'd2,3'd2,3'd3,3'd4,3'd5,3'd6,3'd7},
'{3'd5,3'd6,3'd6,3'd7,3'd7,3'd7,3'd7,3'd7},
'{3'd7,3'd7,3'd7,3'd7,3'd7,3'd6,3'd6,3'd5},
'{3'd6,3'd6,3'd5,3'd5,3'd4,3'd2,3'd2,3'd2},
'{3'd2,3'd3,3'd1,3'd1,3'd1,3'd1,3'd3,3'd5},
'{3'd1,3'd1,3'd0,3'd2,3'd4,3'd6,3'd7,3'd7}};

parameter bit [2:0] SpriteTableR_12_2[7:0][7:0] = '{'{3'd1,3'd2,3'd4,3'd6,3'd7,3'd7,3'd7,3'd6},
'{3'd5,3'd7,3'd7,3'd7,3'd7,3'd6,3'd3,3'd2},
'{3'd7,3'd7,3'd7,3'd5,3'd3,3'd2,3'd1,3'd2},
'{3'd6,3'd4,3'd3,3'd2,3'd2,3'd2,3'd3,3'd3},
'{3'd2,3'd1,3'd2,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd2,3'd2,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd2,3'd2,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd6,3'd2,3'd2,3'd3,3'd3,3'd3,3'd3,3'd3}};

parameter bit [2:0] SpriteTableR_12_3[7:0][7:0] = '{'{3'd7,3'd3,3'd2,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd7,3'd3,3'd2,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd7,3'd3,3'd2,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd7,3'd3,3'd2,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd7,3'd3,3'd2,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd7,3'd3,3'd2,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd7,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd7,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3}};

parameter bit [2:0] SpriteTableR_12_4[7:0][7:0] = '{'{3'd7,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd7,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd7,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd7,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd7,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd6,3'd2,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd6,3'd2,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd6,3'd2,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3}};

parameter bit [2:0] SpriteTableR_12_5[7:0][7:0] = '{'{3'd6,3'd2,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd6,3'd2,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd6,3'd2,3'd3,3'd3,3'd3,3'd3,3'd3,3'd4},
'{3'd6,3'd2,3'd3,3'd3,3'd3,3'd4,3'd4,3'd4},
'{3'd6,3'd2,3'd3,3'd3,3'd3,3'd4,3'd4,3'd4},
'{3'd6,3'd2,3'd3,3'd3,3'd3,3'd4,3'd4,3'd4},
'{3'd5,3'd2,3'd3,3'd4,3'd4,3'd4,3'd3,3'd4},
'{3'd5,3'd2,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3}};

parameter bit [2:0] SpriteTableR_12_6[7:0][7:0] = '{'{3'd4,3'd2,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd4,3'd2,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd4,3'd2,3'd3,3'd3,3'd3,3'd3,3'd4,3'd4},
'{3'd4,3'd2,3'd3,3'd3,3'd4,3'd4,3'd4,3'd4},
'{3'd4,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd4,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd4,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd4,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_12_7[7:0][7:0] = '{'{3'd3,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd3,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd2,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd2,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd2,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd2,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd2,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd2,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_12_8[7:0][7:0] = '{'{3'd2,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd2,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd2,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd2,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd2,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd4},
'{3'd2,3'd0,3'd0,3'd0,3'd1,3'd3,3'd6,3'd7},
'{3'd2,3'd0,3'd0,3'd1,3'd4,3'd7,3'd7,3'd7},
'{3'd4,3'd2,3'd3,3'd6,3'd7,3'd7,3'd7,3'd6}};

parameter bit [2:0] SpriteTableR_12_9[7:0][7:0] = '{'{3'd7,3'd6,3'd7,3'd7,3'd7,3'd6,3'd4,3'd2},
'{3'd7,3'd7,3'd7,3'd7,3'd6,3'd3,3'd1,3'd0},
'{3'd6,3'd6,3'd6,3'd4,3'd2,3'd1,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_12_10[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_12_11[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_12_12[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_12_13[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_13_0[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd2},
'{3'd2,3'd2,3'd2,3'd3,3'd4,3'd5,3'd5,3'd5},
'{3'd6,3'd7,3'd7,3'd7,3'd7,3'd7,3'd7,3'd7},
'{3'd7,3'd7,3'd6,3'd6,3'd5,3'd5,3'd4,3'd3},
'{3'd3,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd2,3'd2,3'd2,3'd2,3'd3,3'd3,3'd3,3'd3},
'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd2,3'd3}};

parameter bit [2:0] SpriteTableR_13_1[7:0][7:0] = '{'{3'd2,3'd2,3'd2,3'd3,3'd3,3'd3,3'd3,3'd4},
'{3'd3,3'd4,3'd5,3'd6,3'd6,3'd7,3'd7,3'd7},
'{3'd7,3'd7,3'd7,3'd7,3'd7,3'd7,3'd7,3'd7},
'{3'd7,3'd7,3'd6,3'd6,3'd5,3'd4,3'd3,3'd3},
'{3'd4,3'd3,3'd2,3'd1,3'd1,3'd1,3'd0,3'd0},
'{3'd2,3'd2,3'd2,3'd2,3'd1,3'd0,3'd0,3'd0},
'{3'd6,3'd6,3'd6,3'd6,3'd4,3'd1,3'd0,3'd0},
'{3'd7,3'd7,3'd7,3'd7,3'd6,3'd2,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_13_2[7:0][7:0] = '{'{3'd5,3'd5,3'd6,3'd7,3'd7,3'd4,3'd1,3'd0},
'{3'd1,3'd1,3'd3,3'd7,3'd7,3'd4,3'd1,3'd1},
'{3'd3,3'd2,3'd2,3'd6,3'd7,3'd4,3'd1,3'd1},
'{3'd3,3'd2,3'd1,3'd6,3'd7,3'd5,3'd1,3'd1},
'{3'd3,3'd2,3'd1,3'd6,3'd7,3'd6,3'd1,3'd0},
'{3'd3,3'd2,3'd1,3'd6,3'd7,3'd5,3'd1,3'd0},
'{3'd3,3'd2,3'd1,3'd6,3'd7,3'd4,3'd0,3'd0},
'{3'd3,3'd2,3'd1,3'd6,3'd7,3'd4,3'd1,3'd0}};

parameter bit [2:0] SpriteTableR_13_3[7:0][7:0] = '{'{3'd3,3'd2,3'd1,3'd6,3'd7,3'd4,3'd1,3'd0},
'{3'd3,3'd2,3'd1,3'd6,3'd7,3'd4,3'd1,3'd0},
'{3'd3,3'd2,3'd2,3'd6,3'd7,3'd5,3'd2,3'd1},
'{3'd3,3'd2,3'd2,3'd6,3'd7,3'd5,3'd1,3'd1},
'{3'd3,3'd2,3'd2,3'd6,3'd7,3'd5,3'd1,3'd0},
'{3'd3,3'd2,3'd2,3'd6,3'd7,3'd5,3'd1,3'd0},
'{3'd3,3'd2,3'd2,3'd7,3'd7,3'd5,3'd1,3'd0},
'{3'd3,3'd2,3'd2,3'd7,3'd7,3'd4,3'd1,3'd0}};

parameter bit [2:0] SpriteTableR_13_4[7:0][7:0] = '{'{3'd3,3'd2,3'd2,3'd7,3'd7,3'd4,3'd1,3'd0},
'{3'd3,3'd2,3'd2,3'd7,3'd7,3'd5,3'd1,3'd1},
'{3'd3,3'd2,3'd2,3'd7,3'd7,3'd4,3'd1,3'd1},
'{3'd3,3'd2,3'd3,3'd7,3'd7,3'd4,3'd1,3'd1},
'{3'd3,3'd2,3'd3,3'd7,3'd7,3'd4,3'd1,3'd1},
'{3'd3,3'd2,3'd3,3'd7,3'd7,3'd5,3'd2,3'd1},
'{3'd3,3'd2,3'd3,3'd7,3'd7,3'd5,3'd2,3'd1},
'{3'd3,3'd2,3'd3,3'd7,3'd7,3'd4,3'd1,3'd1}};

parameter bit [2:0] SpriteTableR_13_5[7:0][7:0] = '{'{3'd3,3'd3,3'd3,3'd7,3'd7,3'd4,3'd2,3'd1},
'{3'd4,3'd3,3'd3,3'd7,3'd7,3'd4,3'd1,3'd2},
'{3'd4,3'd3,3'd3,3'd7,3'd7,3'd6,3'd5,3'd6},
'{3'd4,3'd3,3'd3,3'd7,3'd7,3'd7,3'd7,3'd7},
'{3'd4,3'd3,3'd3,3'd7,3'd7,3'd7,3'd7,3'd5},
'{3'd4,3'd3,3'd3,3'd7,3'd7,3'd7,3'd6,3'd3},
'{3'd4,3'd3,3'd3,3'd7,3'd7,3'd7,3'd7,3'd7},
'{3'd4,3'd3,3'd3,3'd7,3'd7,3'd6,3'd5,3'd6}};

parameter bit [2:0] SpriteTableR_13_6[7:0][7:0] = '{'{3'd4,3'd3,3'd3,3'd7,3'd7,3'd3,3'd1,3'd1},
'{3'd4,3'd3,3'd3,3'd7,3'd7,3'd2,3'd1,3'd1},
'{3'd4,3'd3,3'd3,3'd7,3'd7,3'd2,3'd1,3'd1},
'{3'd4,3'd3,3'd3,3'd7,3'd7,3'd2,3'd1,3'd1},
'{3'd1,3'd1,3'd3,3'd7,3'd7,3'd2,3'd1,3'd1},
'{3'd0,3'd0,3'd3,3'd7,3'd7,3'd2,3'd1,3'd1},
'{3'd0,3'd0,3'd3,3'd7,3'd7,3'd2,3'd1,3'd1},
'{3'd0,3'd0,3'd3,3'd7,3'd7,3'd2,3'd1,3'd1}};

parameter bit [2:0] SpriteTableR_13_7[7:0][7:0] = '{'{3'd0,3'd0,3'd3,3'd7,3'd7,3'd2,3'd1,3'd1},
'{3'd0,3'd0,3'd3,3'd7,3'd7,3'd2,3'd1,3'd1},
'{3'd0,3'd0,3'd3,3'd7,3'd7,3'd2,3'd1,3'd1},
'{3'd0,3'd0,3'd3,3'd7,3'd7,3'd2,3'd1,3'd1},
'{3'd0,3'd0,3'd3,3'd7,3'd7,3'd2,3'd1,3'd2},
'{3'd0,3'd0,3'd3,3'd7,3'd7,3'd2,3'd1,3'd2},
'{3'd0,3'd0,3'd3,3'd7,3'd7,3'd2,3'd1,3'd3},
'{3'd0,3'd0,3'd3,3'd7,3'd7,3'd2,3'd1,3'd5}};

parameter bit [2:0] SpriteTableR_13_8[7:0][7:0] = '{'{3'd0,3'd0,3'd4,3'd7,3'd7,3'd2,3'd2,3'd7},
'{3'd0,3'd1,3'd5,3'd7,3'd6,3'd2,3'd3,3'd7},
'{3'd1,3'd4,3'd7,3'd7,3'd5,3'd1,3'd4,3'd7},
'{3'd4,3'd7,3'd7,3'd7,3'd3,3'd1,3'd4,3'd7},
'{3'd7,3'd7,3'd7,3'd4,3'd1,3'd1,3'd4,3'd7},
'{3'd7,3'd6,3'd3,3'd1,3'd1,3'd1,3'd3,3'd7},
'{3'd6,3'd3,3'd1,3'd1,3'd0,3'd1,3'd2,3'd7},
'{3'd3,3'd1,3'd1,3'd0,3'd0,3'd1,3'd1,3'd4}};

parameter bit [2:0] SpriteTableR_13_9[7:0][7:0] = '{'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_13_10[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_13_11[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_13_12[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_13_13[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_14_0[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd2,3'd2,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd6,3'd6,3'd7,3'd7,3'd7,3'd7,3'd7,3'd7},
'{3'd7,3'd7,3'd7,3'd6,3'd6,3'd6,3'd5,3'd5},
'{3'd3,3'd2,3'd2,3'd2,3'd2,3'd1,3'd1,3'd2},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd3,3'd3},
'{3'd3,3'd3,3'd3,3'd2,3'd3,3'd3,3'd2,3'd2},
'{3'd2,3'd2,3'd2,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableR_14_1[7:0][7:0] = '{'{3'd4,3'd4,3'd4,3'd4,3'd4,3'd4,3'd5,3'd5},
'{3'd7,3'd7,3'd7,3'd7,3'd7,3'd7,3'd7,3'd7},
'{3'd7,3'd7,3'd7,3'd7,3'd6,3'd6,3'd6,3'd6},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1}};

parameter bit [2:0] SpriteTableR_14_2[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0},
'{3'd1,3'd0,3'd2,3'd2,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_14_3[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1},
'{3'd0,3'd0,3'd1,3'd0,3'd0,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd0,3'd1,3'd1,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd0},
'{3'd0,3'd1,3'd1,3'd1,3'd1,3'd2,3'd1,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1}};

parameter bit [2:0] SpriteTableR_14_4[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd1,3'd1,3'd0,3'd0,3'd1,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd2,3'd1,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd2,3'd1,3'd0,3'd1,3'd1,3'd2}};

parameter bit [2:0] SpriteTableR_14_5[7:0][7:0] = '{'{3'd1,3'd1,3'd2,3'd3,3'd3,3'd4,3'd5,3'd7},
'{3'd3,3'd4,3'd5,3'd6,3'd7,3'd7,3'd7,3'd7},
'{3'd7,3'd7,3'd7,3'd7,3'd7,3'd6,3'd5,3'd3},
'{3'd7,3'd7,3'd7,3'd5,3'd4,3'd2,3'd1,3'd2},
'{3'd3,3'd2,3'd1,3'd1,3'd2,3'd2,3'd3,3'd3},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd1,3'd1,3'd1},
'{3'd7,3'd7,3'd6,3'd6,3'd6,3'd5,3'd5,3'd3},
'{3'd6,3'd7,3'd7,3'd7,3'd7,3'd7,3'd7,3'd7}};

parameter bit [2:0] SpriteTableR_14_6[7:0][7:0] = '{'{3'd1,3'd3,3'd5,3'd7,3'd7,3'd7,3'd7,3'd7},
'{3'd1,3'd1,3'd3,3'd7,3'd7,3'd7,3'd5,3'd3},
'{3'd1,3'd1,3'd5,3'd7,3'd6,3'd3,3'd1,3'd1},
'{3'd1,3'd3,3'd7,3'd5,3'd1,3'd1,3'd3,3'd3},
'{3'd1,3'd5,3'd7,3'd2,3'd0,3'd1,3'd1,3'd1},
'{3'd1,3'd6,3'd6,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd2,3'd6,3'd5,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd3,3'd7,3'd4,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_14_7[7:0][7:0] = '{'{3'd3,3'd7,3'd3,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd4,3'd7,3'd2,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd5,3'd6,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd5,3'd5,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd6,3'd4,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd6,3'd3,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd6,3'd2,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd6,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_14_8[7:0][7:0] = '{'{3'd5,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd4,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd3,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd3,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd3,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd5,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd7,3'd4,3'd1,3'd1,3'd2,3'd3,3'd4,3'd5},
'{3'd7,3'd7,3'd6,3'd6,3'd7,3'd7,3'd7,3'd7}};

parameter bit [2:0] SpriteTableR_14_9[7:0][7:0] = '{'{3'd5,3'd7,3'd7,3'd7,3'd7,3'd7,3'd6,3'd5},
'{3'd2,3'd4,3'd5,3'd4,3'd3,3'd2,3'd2,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd0,3'd1,3'd1,3'd1},
'{3'd0,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_14_10[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_14_11[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_14_12[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_14_13[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_15_0[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd7,3'd7,3'd7,3'd7,3'd7,3'd7,3'd7,3'd7},
'{3'd5,3'd5,3'd5,3'd4,3'd4,3'd4,3'd4,3'd4},
'{3'd2,3'd1,3'd1,3'd1,3'd1,3'd2,3'd2,3'd1},
'{3'd3,3'd2,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd1,3'd2,3'd2,3'd1,3'd1,3'd2,3'd1,3'd1}};

parameter bit [2:0] SpriteTableR_15_1[7:0][7:0] = '{'{3'd5,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd7,3'd7,3'd7,3'd7,3'd7,3'd7,3'd7,3'd7},
'{3'd5,3'd6,3'd5,3'd5,3'd5,3'd5,3'd5,3'd4},
'{3'd1,3'd2,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd2,3'd1},
'{3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd1,3'd0},
'{3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd1,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_15_2[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd0,3'd1,3'd1,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd0,3'd0,3'd1,3'd0,3'd0,3'd0},
'{3'd1,3'd2,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableR_15_3[7:0][7:0] = '{'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd0,3'd0,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd0,3'd1,3'd1,3'd1,3'd1,3'd0},
'{3'd1,3'd1,3'd0,3'd1,3'd1,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_15_4[7:0][7:0] = '{'{3'd0,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd1,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd1,3'd2,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd2,3'd2,3'd4,3'd5,3'd5,3'd4},
'{3'd4,3'd5,3'd6,3'd7,3'd7,3'd7,3'd7,3'd6}};

parameter bit [2:0] SpriteTableR_15_5[7:0][7:0] = '{'{3'd7,3'd7,3'd7,3'd7,3'd7,3'd5,3'd3,3'd2},
'{3'd6,3'd5,3'd4,3'd4,3'd3,3'd2,3'd1,3'd2},
'{3'd2,3'd1,3'd2,3'd2,3'd2,3'd3,3'd3,3'd3},
'{3'd2,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd2,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd2,3'd2,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd4,3'd1,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3}};

parameter bit [2:0] SpriteTableR_15_6[7:0][7:0] = '{'{3'd3,3'd1,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd1,3'd2,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd2},
'{3'd4,3'd3,3'd3,3'd3,3'd3,3'd2,3'd1,3'd1},
'{3'd1,3'd0,3'd1,3'd1,3'd1,3'd2,3'd4,3'd5},
'{3'd0,3'd0,3'd0,3'd2,3'd5,3'd7,3'd7,3'd6},
'{3'd0,3'd0,3'd1,3'd5,3'd7,3'd7,3'd7,3'd6},
'{3'd0,3'd0,3'd3,3'd7,3'd7,3'd5,3'd6,3'd6}};

parameter bit [2:0] SpriteTableR_15_7[7:0][7:0] = '{'{3'd0,3'd0,3'd4,3'd7,3'd6,3'd2,3'd6,3'd5},
'{3'd0,3'd0,3'd5,3'd7,3'd7,3'd5,3'd7,3'd4},
'{3'd0,3'd1,3'd6,3'd7,3'd7,3'd7,3'd6,3'd2},
'{3'd0,3'd2,3'd7,3'd7,3'd7,3'd6,3'd3,3'd0},
'{3'd0,3'd1,3'd5,3'd6,3'd4,3'd1,3'd0,3'd0},
'{3'd0,3'd0,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_15_8[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd2},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd4,3'd6},
'{3'd0,3'd0,3'd1,3'd2,3'd3,3'd6,3'd7,3'd7},
'{3'd2,3'd3,3'd5,3'd6,3'd7,3'd7,3'd6,3'd6},
'{3'd6,3'd7,3'd7,3'd7,3'd7,3'd5,3'd2,3'd3},
'{3'd7,3'd7,3'd6,3'd4,3'd2,3'd1,3'd1,3'd2}};

parameter bit [2:0] SpriteTableR_15_9[7:0][7:0] = '{'{3'd4,3'd3,3'd1,3'd1,3'd0,3'd1,3'd1,3'd1},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_15_10[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_15_11[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_15_12[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_15_13[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_16_0[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd3,3'd3,3'd3,3'd3,3'd2,3'd2,3'd2,3'd2},
'{3'd7,3'd7,3'd7,3'd7,3'd7,3'd6,3'd6,3'd6},
'{3'd5,3'd5,3'd5,3'd6,3'd6,3'd6,3'd6,3'd7},
'{3'd2,3'd2,3'd1,3'd1,3'd1,3'd2,3'd2,3'd2},
'{3'd2,3'd3,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd3,3'd3,3'd3},
'{3'd1,3'd1,3'd1,3'd2,3'd2,3'd2,3'd1,3'd1}};

parameter bit [2:0] SpriteTableR_16_1[7:0][7:0] = '{'{3'd6,3'd6,3'd6,3'd6,3'd5,3'd5,3'd4,3'd4},
'{3'd7,3'd7,3'd7,3'd7,3'd7,3'd7,3'd7,3'd7},
'{3'd5,3'd5,3'd5,3'd5,3'd5,3'd6,3'd6,3'd6},
'{3'd1,3'd2,3'd1,3'd1,3'd1,3'd2,3'd2,3'd2},
'{3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd3},
'{3'd0,3'd1,3'd1,3'd0,3'd0,3'd1,3'd1,3'd4},
'{3'd0,3'd0,3'd1,3'd0,3'd0,3'd0,3'd0,3'd1}};

parameter bit [2:0] SpriteTableR_16_2[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd0},
'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd0},
'{3'd0,3'd0,3'd1,3'd1,3'd0,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd0,3'd0,3'd1,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_16_3[7:0][7:0] = '{'{3'd0,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd2,3'd2},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd3,3'd3},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd2,3'd4},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd4},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd0,3'd0,3'd2}};

parameter bit [2:0] SpriteTableR_16_4[7:0][7:0] = '{'{3'd1,3'd1,3'd0,3'd1,3'd2,3'd0,3'd0,3'd1},
'{3'd2,3'd1,3'd0,3'd1,3'd1,3'd0,3'd0,3'd0},
'{3'd2,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd2,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd1,3'd2,3'd3,3'd4,3'd5,3'd5,3'd6,3'd6},
'{3'd3,3'd2,3'd2,3'd2,3'd2,3'd2,3'd1,3'd2},
'{3'd5,3'd4,3'd3,3'd3,3'd2,3'd1,3'd1,3'd3}};

parameter bit [2:0] SpriteTableR_16_5[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd2,3'd1},
'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd2,3'd3},
'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd2,3'd5},
'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd2,3'd4,3'd4},
'{3'd3,3'd3,3'd3,3'd3,3'd2,3'd2,3'd3,3'd2},
'{3'd3,3'd3,3'd3,3'd3,3'd1,3'd2,3'd2,3'd3},
'{3'd3,3'd3,3'd3,3'd1,3'd1,3'd2,3'd3,3'd3}};

parameter bit [2:0] SpriteTableR_16_6[7:0][7:0] = '{'{3'd3,3'd3,3'd2,3'd1,3'd3,3'd3,3'd3,3'd3},
'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd2,3'd3,3'd4,3'd3,3'd4,3'd4,3'd4,3'd3},
'{3'd1,3'd2,3'd3,3'd3,3'd3,3'd3,3'd3,3'd2},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_16_7[7:0][7:0] = '{'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_16_8[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd3,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd7,3'd2,3'd0,3'd0,3'd0,3'd0,3'd1,3'd3},
'{3'd7,3'd3,3'd0,3'd0,3'd0,3'd1,3'd4,3'd7},
'{3'd7,3'd4,3'd0,3'd0,3'd2,3'd5,3'd7,3'd7},
'{3'd7,3'd5,3'd1,3'd2,3'd5,3'd7,3'd7,3'd5},
'{3'd6,3'd7,3'd5,3'd6,3'd7,3'd7,3'd5,3'd2}};

parameter bit [2:0] SpriteTableR_16_9[7:0][7:0] = '{'{3'd5,3'd7,3'd7,3'd7,3'd7,3'd4,3'd1,3'd1},
'{3'd3,3'd7,3'd7,3'd6,3'd4,3'd1,3'd1,3'd1},
'{3'd1,3'd3,3'd3,3'd2,3'd1,3'd1,3'd0,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_16_10[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_16_11[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_16_12[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_16_13[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_17_0[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd2,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd6,3'd5,3'd5,3'd4,3'd2,3'd2,3'd2,3'd2},
'{3'd7,3'd7,3'd7,3'd7,3'd7,3'd7,3'd6,3'd6},
'{3'd3,3'd3,3'd3,3'd4,3'd5,3'd6,3'd6,3'd7},
'{3'd2,3'd2,3'd2,3'd2,3'd1,3'd2,3'd2,3'd2},
'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd2,3'd2,3'd2},
'{3'd2,3'd1,3'd2,3'd2,3'd2,3'd2,3'd2,3'd3}};

parameter bit [2:0] SpriteTableR_17_1[7:0][7:0] = '{'{3'd4,3'd4,3'd4,3'd4,3'd4,3'd4,3'd3,3'd3},
'{3'd7,3'd7,3'd7,3'd7,3'd7,3'd7,3'd7,3'd7},
'{3'd6,3'd7,3'd7,3'd7,3'd7,3'd7,3'd7,3'd7},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd3},
'{3'd2,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd5,3'd4,3'd2,3'd1,3'd1,3'd0,3'd1,3'd1},
'{3'd7,3'd5,3'd2,3'd1,3'd0,3'd0,3'd1,3'd1},
'{3'd4,3'd3,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_17_2[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd0,3'd1,3'd0,3'd0,3'd1},
'{3'd1,3'd1,3'd0,3'd1,3'd1,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_17_3[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1},
'{3'd2,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd0,3'd0,3'd1,3'd1,3'd0,3'd0,3'd0},
'{3'd5,3'd1,3'd0,3'd1,3'd3,3'd1,3'd0,3'd1},
'{3'd6,3'd4,3'd0,3'd1,3'd4,3'd1,3'd0,3'd2}};

parameter bit [2:0] SpriteTableR_17_4[7:0][7:0] = '{'{3'd4,3'd7,3'd3,3'd1,3'd5,3'd3,3'd2,3'd5},
'{3'd2,3'd6,3'd6,3'd4,3'd6,3'd6,3'd6,3'd7},
'{3'd1,3'd4,3'd7,3'd7,3'd7,3'd7,3'd7,3'd7},
'{3'd0,3'd2,3'd6,3'd7,3'd7,3'd7,3'd7,3'd7},
'{3'd4,3'd5,3'd7,3'd7,3'd7,3'd7,3'd7,3'd7},
'{3'd7,3'd7,3'd7,3'd7,3'd7,3'd7,3'd7,3'd7},
'{3'd5,3'd7,3'd7,3'd7,3'd7,3'd7,3'd7,3'd7},
'{3'd5,3'd7,3'd7,3'd7,3'd7,3'd7,3'd7,3'd4}};

parameter bit [2:0] SpriteTableR_17_5[7:0][7:0] = '{'{3'd2,3'd6,3'd7,3'd7,3'd7,3'd7,3'd7,3'd4},
'{3'd3,3'd6,3'd6,3'd5,3'd6,3'd5,3'd7,3'd5},
'{3'd6,3'd6,3'd3,3'd2,3'd5,3'd2,3'd5,3'd5},
'{3'd6,3'd3,3'd2,3'd5,3'd6,3'd2,3'd3,3'd5},
'{3'd2,3'd3,3'd6,3'd7,3'd6,3'd1,3'd1,3'd4},
'{3'd1,3'd4,3'd7,3'd7,3'd4,3'd1,3'd0,3'd2},
'{3'd2,3'd5,3'd7,3'd7,3'd2,3'd0,3'd0,3'd1},
'{3'd2,3'd5,3'd7,3'd6,3'd2,3'd1,3'd1,3'd0}};

parameter bit [2:0] SpriteTableR_17_6[7:0][7:0] = '{'{3'd2,3'd5,3'd7,3'd6,3'd1,3'd1,3'd0,3'd0},
'{3'd2,3'd5,3'd7,3'd6,3'd1,3'd0,3'd0,3'd0},
'{3'd2,3'd6,3'd7,3'd6,3'd1,3'd0,3'd0,3'd0},
'{3'd2,3'd6,3'd7,3'd6,3'd2,3'd0,3'd0,3'd0},
'{3'd2,3'd7,3'd7,3'd6,3'd2,3'd1,3'd0,3'd0},
'{3'd2,3'd7,3'd7,3'd5,3'd2,3'd1,3'd0,3'd1},
'{3'd2,3'd7,3'd7,3'd5,3'd1,3'd1,3'd0,3'd2},
'{3'd2,3'd7,3'd7,3'd4,3'd0,3'd1,3'd1,3'd5}};

parameter bit [2:0] SpriteTableR_17_7[7:0][7:0] = '{'{3'd3,3'd7,3'd7,3'd4,3'd2,3'd3,3'd6,3'd7},
'{3'd4,3'd7,3'd7,3'd6,3'd6,3'd7,3'd7,3'd7},
'{3'd4,3'd7,3'd7,3'd7,3'd7,3'd7,3'd7,3'd6},
'{3'd4,3'd7,3'd7,3'd7,3'd7,3'd6,3'd4,3'd2},
'{3'd2,3'd6,3'd7,3'd6,3'd4,3'd1,3'd1,3'd3},
'{3'd1,3'd2,3'd2,3'd1,3'd0,3'd1,3'd4,3'd7},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd4,3'd7,3'd7},
'{3'd0,3'd0,3'd0,3'd2,3'd5,3'd7,3'd7,3'd7}};

parameter bit [2:0] SpriteTableR_17_8[7:0][7:0] = '{'{3'd0,3'd0,3'd2,3'd6,3'd7,3'd7,3'd7,3'd7},
'{3'd0,3'd2,3'd6,3'd7,3'd7,3'd5,3'd3,3'd7},
'{3'd3,3'd6,3'd7,3'd6,3'd4,3'd1,3'd1,3'd4},
'{3'd7,3'd7,3'd6,3'd3,3'd1,3'd1,3'd0,3'd1},
'{3'd7,3'd5,3'd3,3'd1,3'd1,3'd0,3'd0,3'd1},
'{3'd4,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_17_9[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_17_10[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1}};

parameter bit [2:0] SpriteTableR_17_11[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_17_12[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_17_13[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_18_0[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd2,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0},
'{3'd6,3'd6,3'd5,3'd4,3'd3,3'd2,3'd1,3'd1},
'{3'd7,3'd7,3'd7,3'd7,3'd7,3'd7,3'd6,3'd5},
'{3'd3,3'd4,3'd5,3'd6,3'd6,3'd7,3'd7,3'd7},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd3,3'd4},
'{3'd3,3'd3,3'd3,3'd2,3'd2,3'd2,3'd2,3'd2}};

parameter bit [2:0] SpriteTableR_18_1[7:0][7:0] = '{'{3'd3,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd3},
'{3'd6,3'd5,3'd5,3'd4,3'd3,3'd2,3'd2,3'd2},
'{3'd7,3'd7,3'd7,3'd7,3'd7,3'd7,3'd6,3'd5},
'{3'd4,3'd5,3'd6,3'd6,3'd7,3'd7,3'd7,3'd7},
'{3'd0,3'd1,3'd1,3'd2,3'd2,3'd3,3'd4,3'd5},
'{3'd1,3'd0,3'd0,3'd1,3'd1,3'd0,3'd0,3'd1},
'{3'd1,3'd0,3'd0,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd1,3'd0,3'd1}};

parameter bit [2:0] SpriteTableR_18_2[7:0][7:0] = '{'{3'd1,3'd0,3'd0,3'd0,3'd1,3'd1,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd2}};

parameter bit [2:0] SpriteTableR_18_3[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd2,3'd6},
'{3'd1,3'd1,3'd0,3'd0,3'd1,3'd3,3'd6,3'd7},
'{3'd1,3'd1,3'd0,3'd1,3'd2,3'd6,3'd7,3'd6},
'{3'd0,3'd0,3'd0,3'd2,3'd6,3'd7,3'd7,3'd3},
'{3'd0,3'd0,3'd2,3'd5,3'd7,3'd7,3'd5,3'd1},
'{3'd0,3'd1,3'd5,3'd7,3'd7,3'd6,3'd2,3'd0},
'{3'd2,3'd5,3'd7,3'd7,3'd6,3'd2,3'd0,3'd0},
'{3'd6,3'd7,3'd7,3'd6,3'd3,3'd0,3'd1,3'd0}};

parameter bit [2:0] SpriteTableR_18_4[7:0][7:0] = '{'{3'd7,3'd7,3'd7,3'd4,3'd1,3'd0,3'd0,3'd0},
'{3'd7,3'd7,3'd4,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd7,3'd6,3'd1,3'd1,3'd1,3'd2,3'd2,3'd0},
'{3'd7,3'd6,3'd4,3'd4,3'd4,3'd3,3'd1,3'd0},
'{3'd7,3'd7,3'd5,3'd2,3'd1,3'd0,3'd0,3'd0},
'{3'd7,3'd7,3'd4,3'd2,3'd2,3'd1,3'd1,3'd1},
'{3'd6,3'd5,3'd5,3'd4,3'd4,3'd4,3'd3,3'd2},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd2,3'd1}};

parameter bit [2:0] SpriteTableR_18_5[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd2,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd2,3'd4,3'd4,3'd5},
'{3'd1,3'd1,3'd1,3'd2,3'd6,3'd7,3'd7,3'd7},
'{3'd1,3'd0,3'd2,3'd6,3'd7,3'd7,3'd7,3'd6},
'{3'd2,3'd1,3'd5,3'd7,3'd7,3'd5,3'd3,3'd2},
'{3'd1,3'd2,3'd6,3'd7,3'd6,3'd2,3'd1,3'd3},
'{3'd1,3'd4,3'd7,3'd7,3'd4,3'd1,3'd3,3'd3},
'{3'd1,3'd5,3'd7,3'd7,3'd3,3'd2,3'd3,3'd3}};

parameter bit [2:0] SpriteTableR_18_6[7:0][7:0] = '{'{3'd2,3'd6,3'd7,3'd6,3'd2,3'd3,3'd3,3'd3},
'{3'd3,3'd7,3'd7,3'd5,3'd2,3'd3,3'd3,3'd3},
'{3'd3,3'd7,3'd7,3'd4,3'd2,3'd3,3'd3,3'd4},
'{3'd3,3'd7,3'd7,3'd3,3'd1,3'd2,3'd2,3'd2},
'{3'd4,3'd7,3'd7,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd5,3'd7,3'd6,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd6,3'd7,3'd4,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd7,3'd7,3'd3,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_18_7[7:0][7:0] = '{'{3'd7,3'd7,3'd2,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd7,3'd7,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd7,3'd6,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd4,3'd5,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd6,3'd4,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd7,3'd3,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd7,3'd3,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd7,3'd3,3'd1,3'd1,3'd1,3'd2,3'd3,3'd4}};

parameter bit [2:0] SpriteTableR_18_8[7:0][7:0] = '{'{3'd7,3'd6,3'd4,3'd5,3'd6,3'd7,3'd7,3'd7},
'{3'd7,3'd7,3'd7,3'd7,3'd7,3'd7,3'd7,3'd7},
'{3'd5,3'd6,3'd6,3'd5,3'd4,3'd4,3'd3,3'd4},
'{3'd1,3'd2,3'd2,3'd1,3'd1,3'd1,3'd1,3'd4},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd2,3'd6},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd5,3'd7},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd3,3'd7,3'd7},
'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd5,3'd7,3'd6}};

parameter bit [2:0] SpriteTableR_18_9[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd1,3'd3,3'd5,3'd4,3'd2},
'{3'd0,3'd0,3'd0,3'd1,3'd2,3'd2,3'd1,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd2}};

parameter bit [2:0] SpriteTableR_18_10[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd3,3'd6},
'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd4,3'd7,3'd7},
'{3'd0,3'd0,3'd0,3'd1,3'd4,3'd7,3'd7,3'd6},
'{3'd0,3'd1,3'd2,3'd5,3'd7,3'd7,3'd4,3'd1},
'{3'd1,3'd3,3'd6,3'd7,3'd7,3'd4,3'd1,3'd0},
'{3'd2,3'd6,3'd7,3'd6,3'd4,3'd1,3'd0,3'd0},
'{3'd3,3'd7,3'd7,3'd3,3'd0,3'd0,3'd0,3'd0},
'{3'd3,3'd7,3'd7,3'd2,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_18_11[7:0][7:0] = '{'{3'd3,3'd7,3'd7,3'd3,3'd0,3'd0,3'd0,3'd0},
'{3'd2,3'd7,3'd7,3'd3,3'd0,3'd0,3'd0,3'd0},
'{3'd2,3'd6,3'd7,3'd4,3'd1,3'd0,3'd0,3'd0},
'{3'd1,3'd6,3'd7,3'd5,3'd1,3'd0,3'd0,3'd0},
'{3'd1,3'd6,3'd7,3'd5,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd6,3'd7,3'd5,3'd1,3'd0,3'd0,3'd0},
'{3'd1,3'd5,3'd7,3'd5,3'd1,3'd0,3'd0,3'd0},
'{3'd1,3'd4,3'd7,3'd6,3'd1,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_18_12[7:0][7:0] = '{'{3'd1,3'd4,3'd7,3'd6,3'd1,3'd0,3'd0,3'd0},
'{3'd0,3'd4,3'd7,3'd6,3'd2,3'd0,3'd0,3'd0},
'{3'd0,3'd4,3'd7,3'd6,3'd2,3'd0,3'd0,3'd0},
'{3'd0,3'd4,3'd7,3'd6,3'd2,3'd0,3'd0,3'd0},
'{3'd0,3'd4,3'd7,3'd6,3'd2,3'd0,3'd0,3'd0},
'{3'd0,3'd4,3'd7,3'd6,3'd2,3'd0,3'd0,3'd0},
'{3'd0,3'd4,3'd7,3'd6,3'd2,3'd0,3'd0,3'd1},
'{3'd0,3'd4,3'd7,3'd6,3'd1,3'd0,3'd2,3'd5}};

parameter bit [2:0] SpriteTableR_18_13[7:0][7:0] = '{'{3'd0,3'd4,3'd7,3'd6,3'd2,3'd3,3'd6,3'd7},
'{3'd0,3'd4,3'd7,3'd7,3'd6,3'd7,3'd7,3'd7},
'{3'd1,3'd4,3'd7,3'd7,3'd7,3'd7,3'd7,3'd5},
'{3'd1,3'd5,3'd7,3'd7,3'd7,3'd6,3'd4,3'd1},
'{3'd1,3'd5,3'd7,3'd6,3'd3,3'd2,3'd1,3'd0},
'{3'd1,3'd5,3'd5,3'd2,3'd1,3'd1,3'd0,3'd0},
'{3'd1,3'd2,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_19_0[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0},
'{3'd4,3'd3,3'd2,3'd1,3'd1,3'd1,3'd1,3'd0},
'{3'd7,3'd7,3'd6,3'd5,3'd4,3'd3,3'd2,3'd1},
'{3'd6,3'd7,3'd7,3'd7,3'd7,3'd7,3'd6,3'd4},
'{3'd2,3'd2,3'd3,3'd4,3'd6,3'd7,3'd7,3'd7}};

parameter bit [2:0] SpriteTableR_19_1[7:0][7:0] = '{'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd3,3'd3,3'd4},
'{3'd2,3'd2,3'd2,3'd3,3'd3,3'd3,3'd2,3'd2},
'{3'd4,3'd3,3'd2,3'd2,3'd2,3'd2,3'd3,3'd3},
'{3'd7,3'd7,3'd6,3'd6,3'd5,3'd5,3'd4,3'd3},
'{3'd6,3'd7,3'd7,3'd7,3'd7,3'd7,3'd7,3'd7},
'{3'd2,3'd3,3'd4,3'd5,3'd6,3'd6,3'd6,3'd7},
'{3'd0,3'd1,3'd1,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd1,3'd0,3'd0,3'd1,3'd0,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableR_19_2[7:0][7:0] = '{'{3'd1,3'd0,3'd1,3'd1,3'd0,3'd1,3'd2,3'd4},
'{3'd1,3'd1,3'd1,3'd1,3'd0,3'd2,3'd5,3'd4},
'{3'd1,3'd0,3'd0,3'd0,3'd2,3'd5,3'd5,3'd1},
'{3'd0,3'd0,3'd0,3'd2,3'd5,3'd5,3'd1,3'd0},
'{3'd0,3'd0,3'd2,3'd6,3'd6,3'd2,3'd0,3'd0},
'{3'd1,3'd2,3'd5,3'd6,3'd3,3'd0,3'd1,3'd1},
'{3'd2,3'd6,3'd7,3'd3,3'd1,3'd0,3'd1,3'd2},
'{3'd6,3'd7,3'd4,3'd1,3'd0,3'd0,3'd0,3'd1}};

parameter bit [2:0] SpriteTableR_19_3[7:0][7:0] = '{'{3'd7,3'd5,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd5,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd2,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1},
'{3'd0,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1}};

parameter bit [2:0] SpriteTableR_19_4[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd0,3'd1,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd0},
'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd2,3'd1,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd1,3'd2,3'd2},
'{3'd0,3'd1,3'd1,3'd2,3'd3,3'd5,3'd6,3'd7}};

parameter bit [2:0] SpriteTableR_19_5[7:0][7:0] = '{'{3'd3,3'd4,3'd6,3'd6,3'd7,3'd7,3'd7,3'd7},
'{3'd7,3'd7,3'd7,3'd7,3'd6,3'd5,3'd4,3'd4},
'{3'd7,3'd7,3'd5,3'd3,3'd2,3'd2,3'd2,3'd2},
'{3'd5,3'd3,3'd1,3'd1,3'd2,3'd3,3'd2,3'd3},
'{3'd2,3'd2,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd2}};

parameter bit [2:0] SpriteTableR_19_6[7:0][7:0] = '{'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd2,3'd1,3'd2},
'{3'd3,3'd3,3'd3,3'd2,3'd2,3'd2,3'd4,3'd6},
'{3'd4,3'd3,3'd2,3'd2,3'd4,3'd6,3'd7,3'd7},
'{3'd3,3'd2,3'd1,3'd5,3'd7,3'd7,3'd7,3'd6},
'{3'd0,3'd0,3'd3,3'd7,3'd7,3'd5,3'd3,3'd4},
'{3'd0,3'd0,3'd4,3'd7,3'd7,3'd5,3'd5,3'd6},
'{3'd0,3'd0,3'd5,3'd7,3'd7,3'd7,3'd6,3'd3},
'{3'd0,3'd0,3'd3,3'd4,3'd3,3'd2,3'd1,3'd0}};

parameter bit [2:0] SpriteTableR_19_7[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd1,3'd2,3'd4,3'd2,3'd0,3'd0},
'{3'd1,3'd3,3'd5,3'd7,3'd7,3'd2,3'd0,3'd0},
'{3'd6,3'd7,3'd7,3'd7,3'd4,3'd1,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_19_8[7:0][7:0] = '{'{3'd7,3'd7,3'd7,3'd5,3'd1,3'd0,3'd0,3'd1},
'{3'd7,3'd7,3'd7,3'd2,3'd0,3'd0,3'd0,3'd0},
'{3'd7,3'd7,3'd4,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd7,3'd6,3'd1,3'd0,3'd1,3'd1,3'd2,3'd3},
'{3'd7,3'd3,3'd1,3'd3,3'd5,3'd6,3'd7,3'd7},
'{3'd7,3'd5,3'd6,3'd7,3'd7,3'd7,3'd7,3'd7},
'{3'd7,3'd7,3'd6,3'd5,3'd4,3'd3,3'd3,3'd5},
'{3'd4,3'd3,3'd2,3'd1,3'd1,3'd1,3'd1,3'd4}};

parameter bit [2:0] SpriteTableR_19_9[7:0][7:0] = '{'{3'd1,3'd1,3'd0,3'd1,3'd1,3'd1,3'd3,3'd6},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd3,3'd6,3'd7},
'{3'd0,3'd0,3'd0,3'd1,3'd2,3'd6,3'd7,3'd7},
'{3'd0,3'd1,3'd1,3'd3,3'd6,3'd7,3'd7,3'd3},
'{3'd1,3'd1,3'd3,3'd6,3'd7,3'd7,3'd3,3'd0},
'{3'd1,3'd3,3'd6,3'd7,3'd6,3'd4,3'd1,3'd1},
'{3'd3,3'd6,3'd7,3'd7,3'd3,3'd0,3'd0,3'd2},
'{3'd6,3'd7,3'd7,3'd3,3'd0,3'd0,3'd1,3'd4}};

parameter bit [2:0] SpriteTableR_19_10[7:0][7:0] = '{'{3'd7,3'd6,3'd3,3'd0,3'd0,3'd0,3'd3,3'd7},
'{3'd6,3'd2,3'd0,3'd0,3'd0,3'd1,3'd5,3'd7},
'{3'd2,3'd0,3'd0,3'd0,3'd0,3'd3,3'd7,3'd7},
'{3'd0,3'd0,3'd0,3'd0,3'd2,3'd6,3'd7,3'd7},
'{3'd0,3'd0,3'd0,3'd1,3'd5,3'd7,3'd7,3'd6},
'{3'd0,3'd0,3'd0,3'd2,3'd6,3'd6,3'd4,3'd1},
'{3'd0,3'd0,3'd0,3'd1,3'd2,3'd1,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_19_11[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_19_12[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd5},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd3,3'd6,3'd7},
'{3'd0,3'd0,3'd0,3'd2,3'd6,3'd7,3'd7,3'd7},
'{3'd0,3'd1,3'd4,3'd6,3'd7,3'd7,3'd7,3'd5},
'{3'd3,3'd6,3'd7,3'd7,3'd7,3'd6,3'd4,3'd2},
'{3'd7,3'd7,3'd7,3'd6,3'd4,3'd2,3'd1,3'd1}};

parameter bit [2:0] SpriteTableR_19_13[7:0][7:0] = '{'{3'd7,3'd7,3'd5,3'd3,3'd1,3'd0,3'd1,3'd0},
'{3'd5,3'd3,3'd2,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd2,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_20_0[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd3,3'd2,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd7,3'd6,3'd5,3'd3,3'd2,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableR_20_1[7:0][7:0] = '{'{3'd5,3'd6,3'd7,3'd7,3'd6,3'd4,3'd1,3'd1},
'{3'd1,3'd2,3'd3,3'd4,3'd6,3'd4,3'd2,3'd4},
'{3'd3,3'd2,3'd2,3'd1,3'd1,3'd1,3'd2,3'd6},
'{3'd2,3'd2,3'd2,3'd2,3'd1,3'd1,3'd3,3'd3},
'{3'd6,3'd3,3'd1,3'd2,3'd1,3'd2,3'd2,3'd3},
'{3'd6,3'd3,3'd3,3'd3,3'd4,3'd3,3'd2,3'd3},
'{3'd3,3'd4,3'd3,3'd5,3'd7,3'd7,3'd6,3'd6},
'{3'd4,3'd3,3'd1,3'd3,3'd5,3'd6,3'd7,3'd7}};

parameter bit [2:0] SpriteTableR_20_2[7:0][7:0] = '{'{3'd3,3'd1,3'd1,3'd0,3'd1,3'd2,3'd3,3'd5},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd2,3'd2,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd2,3'd4,3'd4,3'd2,3'd1,3'd1,3'd1,3'd1},
'{3'd4,3'd6,3'd7,3'd4,3'd1,3'd1,3'd2,3'd1},
'{3'd2,3'd6,3'd6,3'd2,3'd0,3'd0,3'd1,3'd0}};

parameter bit [2:0] SpriteTableR_20_3[7:0][7:0] = '{'{3'd1,3'd3,3'd3,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd1,3'd2,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd1,3'd2,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd0,3'd0,3'd0,3'd1,3'd0,3'd0,3'd0},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd1,3'd0,3'd1,3'd2,3'd1,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_20_4[7:0][7:0] = '{'{3'd0,3'd1,3'd1,3'd1,3'd2,3'd1,3'd0,3'd0},
'{3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd0},
'{3'd0,3'd1,3'd1,3'd0,3'd0,3'd0,3'd1,3'd1},
'{3'd0,3'd1,3'd1,3'd0,3'd0,3'd0,3'd1,3'd1},
'{3'd0,3'd0,3'd1,3'd1,3'd1,3'd2,3'd3,3'd5},
'{3'd0,3'd1,3'd2,3'd3,3'd5,3'd6,3'd7,3'd7},
'{3'd3,3'd4,3'd6,3'd7,3'd7,3'd7,3'd7,3'd6},
'{3'd7,3'd7,3'd7,3'd7,3'd6,3'd4,3'd2,3'd2}};

parameter bit [2:0] SpriteTableR_20_5[7:0][7:0] = '{'{3'd7,3'd6,3'd4,3'd3,3'd2,3'd2,3'd2,3'd2},
'{3'd3,3'd2,3'd2,3'd2,3'd3,3'd3,3'd3,3'd2},
'{3'd2,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd1},
'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd2},
'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd3,3'd2,3'd2,3'd2,3'd2,3'd3,3'd3,3'd3},
'{3'd1,3'd2,3'd2,3'd1,3'd2,3'd3,3'd3,3'd3}};

parameter bit [2:0] SpriteTableR_20_6[7:0][7:0] = '{'{3'd3,3'd6,3'd5,3'd1,3'd2,3'd3,3'd3,3'd3},
'{3'd7,3'd7,3'd4,3'd1,3'd3,3'd3,3'd3,3'd3},
'{3'd7,3'd7,3'd4,3'd1,3'd3,3'd3,3'd3,3'd3},
'{3'd7,3'd7,3'd3,3'd1,3'd2,3'd2,3'd2,3'd2},
'{3'd7,3'd6,3'd2,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd5,3'd2,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_20_7[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd2},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd2,3'd4,3'd7},
'{3'd0,3'd0,3'd0,3'd3,3'd5,3'd6,3'd7,3'd7},
'{3'd0,3'd0,3'd3,3'd7,3'd7,3'd7,3'd6,3'd4},
'{3'd0,3'd2,3'd6,3'd7,3'd7,3'd5,3'd3,3'd1},
'{3'd0,3'd4,3'd7,3'd7,3'd5,3'd3,3'd3,3'd3},
'{3'd2,3'd6,3'd7,3'd7,3'd7,3'd6,3'd7,3'd7},
'{3'd3,3'd7,3'd7,3'd7,3'd7,3'd7,3'd7,3'd7}};

parameter bit [2:0] SpriteTableR_20_8[7:0][7:0] = '{'{3'd5,3'd7,3'd7,3'd7,3'd6,3'd6,3'd5,3'd4},
'{3'd2,3'd4,3'd4,3'd3,3'd1,3'd1,3'd1,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd3,3'd3,3'd3,3'd1,3'd1,3'd0,3'd0,3'd0},
'{3'd7,3'd7,3'd7,3'd6,3'd5,3'd3,3'd1,3'd1},
'{3'd7,3'd7,3'd7,3'd7,3'd7,3'd7,3'd6,3'd3},
'{3'd7,3'd7,3'd7,3'd7,3'd7,3'd7,3'd7,3'd7},
'{3'd7,3'd7,3'd7,3'd7,3'd7,3'd7,3'd7,3'd7}};

parameter bit [2:0] SpriteTableR_20_9[7:0][7:0] = '{'{3'd7,3'd6,3'd4,3'd7,3'd7,3'd7,3'd7,3'd7},
'{3'd7,3'd3,3'd4,3'd7,3'd7,3'd6,3'd4,3'd6},
'{3'd3,3'd2,3'd6,3'd7,3'd7,3'd4,3'd1,3'd3},
'{3'd1,3'd4,3'd7,3'd7,3'd6,3'd2,3'd1,3'd2},
'{3'd2,3'd6,3'd7,3'd7,3'd4,3'd1,3'd1,3'd2},
'{3'd4,3'd7,3'd7,3'd6,3'd2,3'd1,3'd3,3'd5},
'{3'd7,3'd7,3'd7,3'd4,3'd2,3'd5,3'd7,3'd7},
'{3'd7,3'd7,3'd7,3'd6,3'd5,3'd7,3'd7,3'd6}};

parameter bit [2:0] SpriteTableR_20_10[7:0][7:0] = '{'{3'd7,3'd7,3'd7,3'd7,3'd7,3'd7,3'd4,3'd2},
'{3'd7,3'd7,3'd7,3'd7,3'd6,3'd2,3'd0,3'd0},
'{3'd7,3'd7,3'd7,3'd5,3'd1,3'd0,3'd0,3'd0},
'{3'd7,3'd5,3'd2,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd3,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_20_11[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd4},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd5,3'd7},
'{3'd0,3'd0,3'd0,3'd0,3'd2,3'd6,3'd7,3'd7},
'{3'd0,3'd0,3'd1,3'd3,3'd6,3'd7,3'd7,3'd7}};

parameter bit [2:0] SpriteTableR_20_12[7:0][7:0] = '{'{3'd1,3'd1,3'd4,3'd7,3'd7,3'd7,3'd6,3'd4},
'{3'd3,3'd6,3'd7,3'd7,3'd7,3'd5,3'd2,3'd1},
'{3'd7,3'd7,3'd7,3'd6,3'd4,3'd1,3'd1,3'd1},
'{3'd7,3'd7,3'd5,3'd3,3'd1,3'd1,3'd0,3'd0},
'{3'd6,3'd3,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0},
'{3'd3,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_20_13[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_21_0[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_21_1[7:0][7:0] = '{'{3'd2,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd6,3'd4,3'd2,3'd1,3'd1,3'd1,3'd0,3'd0},
'{3'd7,3'd7,3'd6,3'd4,3'd3,3'd1,3'd1,3'd1},
'{3'd3,3'd4,3'd6,3'd7,3'd7,3'd6,3'd5,3'd3},
'{3'd2,3'd2,3'd2,3'd3,3'd5,3'd6,3'd7,3'd7},
'{3'd3,3'd3,3'd2,3'd2,3'd2,3'd3,3'd5,3'd6},
'{3'd5,3'd4,3'd2,3'd2,3'd2,3'd2,3'd3,3'd3},
'{3'd7,3'd7,3'd6,3'd4,3'd3,3'd2,3'd2,3'd2}};

parameter bit [2:0] SpriteTableR_21_2[7:0][7:0] = '{'{3'd5,3'd6,3'd7,3'd7,3'd7,3'd5,3'd3,3'd3},
'{3'd1,3'd2,3'd4,3'd5,3'd6,3'd7,3'd7,3'd7},
'{3'd1,3'd2,3'd1,3'd1,3'd2,3'd4,3'd6,3'd7},
'{3'd0,3'd1,3'd1,3'd0,3'd1,3'd1,3'd2,3'd3},
'{3'd0,3'd0,3'd0,3'd2,3'd1,3'd1,3'd2,3'd0},
'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd2,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd0,3'd1},
'{3'd0,3'd1,3'd0,3'd0,3'd0,3'd1,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_21_3[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd1,3'd0,3'd1,3'd1,3'd0},
'{3'd0,3'd0,3'd1,3'd2,3'd1,3'd0,3'd0,3'd0},
'{3'd0,3'd1,3'd0,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd0,3'd0},
'{3'd0,3'd1,3'd1,3'd0,3'd1,3'd1,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_21_4[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd1,3'd2,3'd4},
'{3'd0,3'd0,3'd1,3'd1,3'd3,3'd5,3'd6,3'd7},
'{3'd1,3'd2,3'd3,3'd5,3'd7,3'd7,3'd7,3'd7},
'{3'd6,3'd6,3'd7,3'd7,3'd7,3'd7,3'd7,3'd7},
'{3'd7,3'd7,3'd5,3'd4,3'd7,3'd7,3'd7,3'd5},
'{3'd5,3'd3,3'd1,3'd4,3'd7,3'd7,3'd6,3'd2},
'{3'd2,3'd1,3'd3,3'd7,3'd7,3'd7,3'd6,3'd1}};

parameter bit [2:0] SpriteTableR_21_5[7:0][7:0] = '{'{3'd2,3'd2,3'd6,3'd7,3'd7,3'd7,3'd7,3'd4},
'{3'd2,3'd6,3'd7,3'd6,3'd7,3'd7,3'd7,3'd5},
'{3'd2,3'd4,3'd2,3'd2,3'd2,3'd6,3'd7,3'd6},
'{3'd1,3'd1,3'd2,3'd2,3'd1,3'd4,3'd7,3'd6},
'{3'd3,3'd3,3'd3,3'd3,3'd2,3'd4,3'd7,3'd6},
'{3'd3,3'd3,3'd3,3'd3,3'd2,3'd5,3'd7,3'd5},
'{3'd3,3'd3,3'd3,3'd3,3'd1,3'd5,3'd7,3'd5},
'{3'd3,3'd3,3'd3,3'd2,3'd2,3'd6,3'd7,3'd4}};

parameter bit [2:0] SpriteTableR_21_6[7:0][7:0] = '{'{3'd3,3'd3,3'd3,3'd2,3'd2,3'd6,3'd7,3'd4},
'{3'd3,3'd3,3'd3,3'd2,3'd3,3'd7,3'd7,3'd3},
'{3'd3,3'd3,3'd3,3'd1,3'd3,3'd7,3'd6,3'd2},
'{3'd2,3'd2,3'd1,3'd1,3'd5,3'd7,3'd6,3'd1},
'{3'd0,3'd0,3'd0,3'd2,3'd6,3'd7,3'd4,3'd1},
'{3'd0,3'd0,3'd0,3'd4,3'd7,3'd7,3'd2,3'd0},
'{3'd0,3'd0,3'd1,3'd6,3'd7,3'd6,3'd2,3'd0},
'{3'd1,3'd3,3'd5,3'd7,3'd7,3'd3,3'd2,3'd1}};

parameter bit [2:0] SpriteTableR_21_7[7:0][7:0] = '{'{3'd5,3'd7,3'd7,3'd7,3'd4,3'd1,3'd0,3'd1},
'{3'd7,3'd7,3'd6,3'd4,3'd1,3'd0,3'd0,3'd0},
'{3'd6,3'd4,3'd2,3'd1,3'd0,3'd1,3'd0,3'd0},
'{3'd2,3'd2,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd2,3'd2,3'd2,3'd2,3'd0,3'd0,3'd0},
'{3'd4,3'd4,3'd4,3'd4,3'd4,3'd3,3'd2,3'd2},
'{3'd7,3'd7,3'd7,3'd7,3'd7,3'd7,3'd6,3'd6},
'{3'd7,3'd7,3'd7,3'd7,3'd7,3'd7,3'd7,3'd7}};

parameter bit [2:0] SpriteTableR_21_8[7:0][7:0] = '{'{3'd4,3'd4,3'd5,3'd5,3'd6,3'd6,3'd7,3'd7},
'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd2,3'd3,3'd5},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd3,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd6,3'd2,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_21_9[7:0][7:0] = '{'{3'd7,3'd5,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd7,3'd6,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd7,3'd7,3'd3,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd6,3'd7,3'd4,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd6,3'd7,3'd5,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd7,3'd7,3'd3,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd7,3'd3,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd2,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_21_10[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd2,3'd5},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd2,3'd6,3'd7}};

parameter bit [2:0] SpriteTableR_21_11[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd1,3'd3,3'd6,3'd7,3'd7},
'{3'd0,3'd0,3'd1,3'd4,3'd7,3'd7,3'd7,3'd5},
'{3'd0,3'd1,3'd5,3'd7,3'd7,3'd7,3'd5,3'd2},
'{3'd3,3'd6,3'd7,3'd7,3'd7,3'd4,3'd1,3'd0},
'{3'd7,3'd7,3'd7,3'd6,3'd3,3'd1,3'd1,3'd0},
'{3'd7,3'd7,3'd6,3'd3,3'd1,3'd1,3'd0,3'd0},
'{3'd7,3'd5,3'd2,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd5,3'd2,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_21_12[7:0][7:0] = '{'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_21_13[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_22_0[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_22_1[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd2,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd6,3'd4,3'd2,3'd1,3'd1,3'd1,3'd0,3'd0},
'{3'd6,3'd7,3'd6,3'd3,3'd1,3'd1,3'd1,3'd1},
'{3'd3,3'd4,3'd6,3'd6,3'd6,3'd5,3'd3,3'd1},
'{3'd3,3'd2,3'd2,3'd3,3'd6,3'd7,3'd7,3'd5}};

parameter bit [2:0] SpriteTableR_22_2[7:0][7:0] = '{'{3'd3,3'd2,3'd2,3'd2,3'd3,3'd4,3'd5,3'd6},
'{3'd6,3'd4,3'd2,3'd2,3'd2,3'd2,3'd2,3'd3},
'{3'd7,3'd7,3'd6,3'd4,3'd3,3'd2,3'd2,3'd2},
'{3'd4,3'd5,3'd7,3'd7,3'd6,3'd5,3'd4,3'd3},
'{3'd1,3'd1,3'd3,3'd5,3'd7,3'd7,3'd7,3'd6},
'{3'd1,3'd0,3'd0,3'd2,3'd3,3'd5,3'd6,3'd7},
'{3'd1,3'd0,3'd1,3'd1,3'd1,3'd1,3'd2,3'd3},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1}};

parameter bit [2:0] SpriteTableR_22_3[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd0},
'{3'd0,3'd0,3'd1,3'd0,3'd1,3'd1,3'd1,3'd0}};

parameter bit [2:0] SpriteTableR_22_4[7:0][7:0] = '{'{3'd1,3'd3,3'd3,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd5,3'd7,3'd6,3'd2,3'd0,3'd0,3'd0,3'd0},
'{3'd7,3'd7,3'd3,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd7,3'd4,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd4,3'd1,3'd0,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd2,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd1,3'd1,3'd1,3'd0,3'd0,3'd1}};

parameter bit [2:0] SpriteTableR_22_5[7:0][7:0] = '{'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd1,3'd0,3'd0,3'd0,3'd1,3'd1,3'd0,3'd1},
'{3'd1,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd3},
'{3'd1,3'd0,3'd1,3'd1,3'd2,3'd4,3'd5,3'd6},
'{3'd1,3'd2,3'd5,3'd6,3'd6,3'd7,3'd7,3'd7},
'{3'd2,3'd5,3'd7,3'd7,3'd7,3'd7,3'd7,3'd7},
'{3'd2,3'd4,3'd6,3'd6,3'd6,3'd7,3'd7,3'd7},
'{3'd1,3'd1,3'd1,3'd1,3'd2,3'd3,3'd3,3'd4}};

parameter bit [2:0] SpriteTableR_22_6[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_22_7[7:0][7:0] = '{'{3'd1,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd2},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd2,3'd1,3'd1},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1},
'{3'd3,3'd1,3'd0,3'd1,3'd0,3'd1,3'd0,3'd1},
'{3'd5,3'd3,3'd3,3'd2,3'd1,3'd0,3'd0,3'd1},
'{3'd7,3'd7,3'd6,3'd4,3'd2,3'd1,3'd0,3'd2}};

parameter bit [2:0] SpriteTableR_22_8[7:0][7:0] = '{'{3'd7,3'd7,3'd7,3'd7,3'd6,3'd3,3'd1,3'd2},
'{3'd7,3'd7,3'd7,3'd7,3'd7,3'd6,3'd4,3'd4},
'{3'd2,3'd3,3'd6,3'd7,3'd7,3'd7,3'd7,3'd7},
'{3'd0,3'd0,3'd1,3'd4,3'd7,3'd7,3'd7,3'd7},
'{3'd0,3'd0,3'd0,3'd1,3'd4,3'd7,3'd7,3'd7},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd3,3'd7,3'd7},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd5,3'd7},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd3,3'd7}};

parameter bit [2:0] SpriteTableR_22_9[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd2,3'd7},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd6},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd6},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd2,3'd7},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd3,3'd7},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd4,3'd7},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd6,3'd7},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd3,3'd7,3'd7}};

parameter bit [2:0] SpriteTableR_22_10[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd6,3'd7,3'd7},
'{3'd0,3'd0,3'd0,3'd1,3'd4,3'd7,3'd7,3'd5},
'{3'd0,3'd0,3'd1,3'd3,3'd7,3'd7,3'd6,3'd2},
'{3'd0,3'd1,3'd4,3'd7,3'd7,3'd7,3'd3,3'd1},
'{3'd1,3'd4,3'd7,3'd7,3'd7,3'd4,3'd1,3'd1},
'{3'd4,3'd7,3'd7,3'd7,3'd4,3'd1,3'd1,3'd0},
'{3'd7,3'd7,3'd7,3'd3,3'd1,3'd0,3'd0,3'd0},
'{3'd7,3'd6,3'd3,3'd1,3'd1,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_22_11[7:0][7:0] = '{'{3'd6,3'd3,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd2,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_22_12[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_22_13[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_23_0[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_23_1[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd3,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_23_2[7:0][7:0] = '{'{3'd7,3'd5,3'd4,3'd2,3'd1,3'd1,3'd0,3'd0},
'{3'd4,3'd6,3'd7,3'd6,3'd3,3'd1,3'd0,3'd0},
'{3'd2,3'd3,3'd5,3'd7,3'd7,3'd5,3'd2,3'd1},
'{3'd2,3'd2,3'd3,3'd3,3'd4,3'd6,3'd6,3'd5},
'{3'd4,3'd2,3'd2,3'd2,3'd2,3'd3,3'd5,3'd7},
'{3'd7,3'd6,3'd4,3'd3,3'd3,3'd2,3'd2,3'd3},
'{3'd5,3'd7,3'd7,3'd6,3'd5,3'd3,3'd2,3'd2},
'{3'd1,3'd4,3'd6,3'd7,3'd7,3'd6,3'd4,3'd2}};

parameter bit [2:0] SpriteTableR_23_3[7:0][7:0] = '{'{3'd1,3'd1,3'd2,3'd3,3'd5,3'd7,3'd7,3'd5},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd3,3'd5,3'd7},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd3},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd0,3'd1},
'{3'd0,3'd0,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_23_4[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd0},
'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd2,3'd0},
'{3'd0,3'd0,3'd0,3'd1,3'd0,3'd1,3'd1,3'd0},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1},
'{3'd0,3'd2,3'd1,3'd0,3'd0,3'd1,3'd1,3'd1},
'{3'd0,3'd1,3'd1,3'd0,3'd1,3'd1,3'd0,3'd0},
'{3'd1,3'd1,3'd2,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableR_23_5[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd2,3'd3,3'd5},
'{3'd1,3'd2,3'd3,3'd4,3'd5,3'd6,3'd7,3'd7},
'{3'd4,3'd6,3'd7,3'd7,3'd7,3'd7,3'd7,3'd7},
'{3'd7,3'd7,3'd7,3'd7,3'd7,3'd6,3'd5,3'd3},
'{3'd7,3'd6,3'd5,3'd3,3'd2,3'd2,3'd2,3'd2},
'{3'd7,3'd5,3'd2,3'd1,3'd1,3'd2,3'd2,3'd2},
'{3'd7,3'd7,3'd6,3'd6,3'd6,3'd6,3'd5,3'd4},
'{3'd5,3'd6,3'd6,3'd7,3'd7,3'd7,3'd7,3'd7}};

parameter bit [2:0] SpriteTableR_23_6[7:0][7:0] = '{'{3'd1,3'd1,3'd2,3'd3,3'd6,3'd7,3'd7,3'd7},
'{3'd1,3'd0,3'd1,3'd3,3'd7,3'd7,3'd7,3'd7},
'{3'd2,3'd1,3'd2,3'd6,3'd7,3'd7,3'd6,3'd4},
'{3'd1,3'd1,3'd4,3'd7,3'd7,3'd6,3'd2,3'd0},
'{3'd1,3'd2,3'd6,3'd7,3'd6,3'd2,3'd0,3'd0},
'{3'd1,3'd3,3'd7,3'd7,3'd4,3'd0,3'd0,3'd0},
'{3'd0,3'd4,3'd7,3'd7,3'd3,3'd0,3'd0,3'd0},
'{3'd1,3'd4,3'd7,3'd7,3'd2,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_23_7[7:0][7:0] = '{'{3'd1,3'd5,3'd7,3'd6,3'd1,3'd0,3'd0,3'd0},
'{3'd2,3'd6,3'd7,3'd6,3'd1,3'd0,3'd0,3'd0},
'{3'd2,3'd6,3'd7,3'd5,3'd1,3'd0,3'd0,3'd0},
'{3'd3,3'd7,3'd7,3'd4,3'd0,3'd0,3'd0,3'd0},
'{3'd4,3'd7,3'd7,3'd3,3'd0,3'd0,3'd0,3'd0},
'{3'd5,3'd7,3'd7,3'd2,3'd0,3'd0,3'd0,3'd0},
'{3'd6,3'd7,3'd6,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd6,3'd7,3'd5,3'd1,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_23_8[7:0][7:0] = '{'{3'd7,3'd7,3'd4,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd7,3'd7,3'd3,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd7,3'd7,3'd2,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd7,3'd7,3'd2,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd7,3'd7,3'd4,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd7,3'd7,3'd6,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd7,3'd7,3'd7,3'd5,3'd2,3'd1,3'd1,3'd2},
'{3'd7,3'd7,3'd7,3'd7,3'd7,3'd6,3'd6,3'd7}};

parameter bit [2:0] SpriteTableR_23_9[7:0][7:0] = '{'{3'd7,3'd7,3'd6,3'd6,3'd7,3'd7,3'd7,3'd7},
'{3'd7,3'd7,3'd4,3'd2,3'd4,3'd5,3'd5,3'd5},
'{3'd7,3'd7,3'd3,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd7,3'd7,3'd2,3'd0,3'd1,3'd1,3'd1,3'd1},
'{3'd7,3'd6,3'd2,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd7,3'd4,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd7,3'd2,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd5,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_23_10[7:0][7:0] = '{'{3'd3,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_23_11[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_23_12[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_23_13[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_24_0[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_24_1[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1}};

parameter bit [2:0] SpriteTableR_24_2[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd2,3'd4,3'd5},
'{3'd0,3'd1,3'd1,3'd2,3'd4,3'd6,3'd7,3'd5},
'{3'd1,3'd1,3'd3,3'd5,3'd7,3'd6,3'd3,3'd2},
'{3'd4,3'd5,3'd6,3'd4,3'd3,3'd2,3'd2,3'd2},
'{3'd7,3'd5,3'd3,3'd1,3'd2,3'd3,3'd3,3'd3},
'{3'd3,3'd2,3'd2,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd2,3'd3,3'd3,3'd3,3'd3,3'd3,3'd2,3'd2},
'{3'd2,3'd3,3'd3,3'd3,3'd3,3'd3,3'd2,3'd4}};

parameter bit [2:0] SpriteTableR_24_3[7:0][7:0] = '{'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd1,3'd3,3'd7},
'{3'd7,3'd6,3'd3,3'd2,3'd2,3'd2,3'd2,3'd4},
'{3'd6,3'd7,3'd7,3'd5,3'd2,3'd2,3'd2,3'd1},
'{3'd2,3'd4,3'd7,3'd7,3'd6,3'd3,3'd2,3'd2},
'{3'd0,3'd1,3'd3,3'd5,3'd7,3'd7,3'd4,3'd2},
'{3'd1,3'd0,3'd1,3'd2,3'd4,3'd6,3'd7,3'd6},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd3,3'd5,3'd7},
'{3'd0,3'd0,3'd1,3'd1,3'd1,3'd0,3'd2,3'd3}};

parameter bit [2:0] SpriteTableR_24_4[7:0][7:0] = '{'{3'd0,3'd1,3'd1,3'd0,3'd1,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd2},
'{3'd0,3'd1,3'd1,3'd0,3'd0,3'd1,3'd2,3'd5},
'{3'd0,3'd1,3'd2,3'd3,3'd3,3'd4,3'd6,3'd7},
'{3'd2,3'd4,3'd6,3'd6,3'd7,3'd7,3'd7,3'd7}};

parameter bit [2:0] SpriteTableR_24_5[7:0][7:0] = '{'{3'd6,3'd7,3'd7,3'd7,3'd7,3'd7,3'd6,3'd3},
'{3'd7,3'd7,3'd6,3'd5,3'd4,3'd3,3'd2,3'd2},
'{3'd6,3'd4,3'd2,3'd1,3'd2,3'd2,3'd2,3'd3},
'{3'd2,3'd1,3'd2,3'd2,3'd3,3'd3,3'd3,3'd3},
'{3'd2,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd2,3'd2,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd3,3'd2,3'd2,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd7,3'd6,3'd2,3'd2,3'd3,3'd3,3'd3,3'd3}};

parameter bit [2:0] SpriteTableR_24_6[7:0][7:0] = '{'{3'd7,3'd6,3'd2,3'd2,3'd3,3'd3,3'd3,3'd3},
'{3'd6,3'd3,3'd1,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd1,3'd1,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd2},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd2,3'd5,3'd7},
'{3'd0,3'd0,3'd0,3'd0,3'd2,3'd6,3'd7,3'd7},
'{3'd0,3'd0,3'd0,3'd1,3'd5,3'd7,3'd6,3'd6}};

parameter bit [2:0] SpriteTableR_24_7[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd1,3'd6,3'd7,3'd4,3'd4},
'{3'd0,3'd0,3'd0,3'd2,3'd7,3'd7,3'd5,3'd6},
'{3'd0,3'd0,3'd0,3'd2,3'd7,3'd7,3'd7,3'd7},
'{3'd0,3'd0,3'd0,3'd4,3'd7,3'd7,3'd7,3'd4},
'{3'd0,3'd0,3'd0,3'd3,3'd6,3'd5,3'd2,3'd0},
'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_24_8[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd3},
'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd2,3'd5,3'd7},
'{3'd0,3'd1,3'd2,3'd4,3'd6,3'd7,3'd7,3'd7},
'{3'd3,3'd5,3'd7,3'd7,3'd7,3'd7,3'd6,3'd4},
'{3'd7,3'd7,3'd7,3'd7,3'd6,3'd5,3'd2,3'd1}};

parameter bit [2:0] SpriteTableR_24_9[7:0][7:0] = '{'{3'd7,3'd6,3'd5,3'd3,3'd2,3'd1,3'd0,3'd1},
'{3'd4,3'd2,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_24_10[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_24_11[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_24_12[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_24_13[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_25_0[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_25_1[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd0},
'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd2},
'{3'd0,3'd1,3'd1,3'd1,3'd1,3'd3,3'd5,3'd7},
'{3'd1,3'd1,3'd3,3'd5,3'd6,3'd7,3'd6,3'd4},
'{3'd3,3'd6,3'd7,3'd7,3'd5,3'd3,3'd2,3'd1}};

parameter bit [2:0] SpriteTableR_25_2[7:0][7:0] = '{'{3'd6,3'd6,3'd5,3'd3,3'd2,3'd1,3'd2,3'd3},
'{3'd3,3'd2,3'd2,3'd3,3'd3,3'd3,3'd2,3'd2},
'{3'd2,3'd3,3'd3,3'd3,3'd3,3'd2,3'd3,3'd6},
'{3'd3,3'd4,3'd2,3'd2,3'd4,3'd5,3'd7,3'd7},
'{3'd3,3'd2,3'd2,3'd5,3'd7,3'd7,3'd6,3'd5},
'{3'd2,3'd3,3'd6,3'd7,3'd7,3'd5,3'd3,3'd1},
'{3'd4,3'd7,3'd7,3'd6,3'd3,3'd1,3'd1,3'd1},
'{3'd7,3'd7,3'd6,3'd3,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableR_25_3[7:0][7:0] = '{'{3'd7,3'd7,3'd4,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd7,3'd6,3'd3,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd3,3'd6,3'd6,3'd3,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd2,3'd6,3'd7,3'd5,3'd2,3'd1,3'd2},
'{3'd2,3'd2,3'd2,3'd5,3'd7,3'd5,3'd2,3'd5},
'{3'd3,3'd2,3'd1,3'd2,3'd4,3'd6,3'd7,3'd7},
'{3'd7,3'd4,3'd3,3'd2,3'd1,3'd3,3'd5,3'd4},
'{3'd6,3'd7,3'd6,3'd3,3'd1,3'd2,3'd1,3'd1}};

parameter bit [2:0] SpriteTableR_25_4[7:0][7:0] = '{'{3'd2,3'd5,3'd7,3'd7,3'd4,3'd1,3'd2,3'd3},
'{3'd1,3'd2,3'd6,3'd7,3'd6,3'd2,3'd3,3'd3},
'{3'd1,3'd3,3'd7,3'd7,3'd3,3'd2,3'd3,3'd2},
'{3'd2,3'd6,3'd7,3'd5,3'd1,3'd3,3'd2,3'd2},
'{3'd6,3'd7,3'd5,3'd2,3'd2,3'd2,3'd2,3'd6},
'{3'd7,3'd6,3'd2,3'd2,3'd2,3'd2,3'd6,3'd7},
'{3'd7,3'd3,3'd1,3'd2,3'd2,3'd5,3'd7,3'd7},
'{3'd3,3'd1,3'd1,3'd0,3'd2,3'd4,3'd6,3'd7}};

parameter bit [2:0] SpriteTableR_25_5[7:0][7:0] = '{'{3'd1,3'd2,3'd1,3'd1,3'd1,3'd1,3'd1,3'd4},
'{3'd2,3'd2,3'd2,3'd3,3'd3,3'd3,3'd2,3'd2},
'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd4,3'd3},
'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd4},
'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3}};

parameter bit [2:0] SpriteTableR_25_6[7:0][7:0] = '{'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd2,3'd1,3'd1,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd4,3'd4,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd7,3'd5,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd7,3'd4,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd7,3'd4,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_25_7[7:0][7:0] = '{'{3'd7,3'd4,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd7,3'd3,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd5,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_25_8[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd3,3'd5,3'd4,3'd1,3'd0,3'd0,3'd0},
'{3'd5,3'd7,3'd7,3'd5,3'd1,3'd0,3'd0,3'd0},
'{3'd7,3'd7,3'd7,3'd5,3'd1,3'd0,3'd0,3'd1},
'{3'd6,3'd7,3'd7,3'd6,3'd1,3'd0,3'd1,3'd5},
'{3'd2,3'd5,3'd7,3'd7,3'd5,3'd4,3'd6,3'd7},
'{3'd1,3'd3,3'd6,3'd7,3'd7,3'd7,3'd7,3'd7}};

parameter bit [2:0] SpriteTableR_25_9[7:0][7:0] = '{'{3'd0,3'd1,3'd4,3'd6,3'd7,3'd7,3'd7,3'd5},
'{3'd0,3'd0,3'd1,3'd3,3'd5,3'd5,3'd4,3'd1},
'{3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_25_10[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_25_11[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_25_12[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_25_13[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_26_0[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_26_1[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd2,3'd3,3'd4,3'd5,3'd5,3'd6},
'{3'd4,3'd6,3'd7,3'd7,3'd7,3'd7,3'd7,3'd6},
'{3'd7,3'd6,3'd6,3'd5,3'd4,3'd3,3'd3,3'd2},
'{3'd3,3'd2,3'd2,3'd2,3'd2,3'd2,3'd3,3'd3},
'{3'd2,3'd3,3'd3,3'd3,3'd2,3'd2,3'd2,3'd3}};

parameter bit [2:0] SpriteTableR_26_2[7:0][7:0] = '{'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd2,3'd1},
'{3'd3,3'd5,3'd6,3'd7,3'd7,3'd7,3'd6,3'd2},
'{3'd7,3'd7,3'd7,3'd7,3'd7,3'd7,3'd6,3'd2},
'{3'd7,3'd5,3'd4,3'd3,3'd4,3'd7,3'd4,3'd2},
'{3'd2,3'd1,3'd1,3'd1,3'd4,3'd6,3'd2,3'd2},
'{3'd1,3'd1,3'd1,3'd2,3'd6,3'd5,3'd2,3'd3},
'{3'd1,3'd1,3'd1,3'd5,3'd6,3'd2,3'd3,3'd4},
'{3'd1,3'd1,3'd3,3'd7,3'd4,3'd2,3'd3,3'd4}};

parameter bit [2:0] SpriteTableR_26_3[7:0][7:0] = '{'{3'd1,3'd2,3'd6,3'd6,3'd2,3'd3,3'd3,3'd3},
'{3'd1,3'd4,3'd6,3'd2,3'd3,3'd4,3'd3,3'd1},
'{3'd3,3'd6,3'd4,3'd2,3'd3,3'd3,3'd2,3'd3},
'{3'd6,3'd5,3'd2,3'd3,3'd3,3'd2,3'd2,3'd6},
'{3'd6,3'd2,3'd2,3'd4,3'd2,3'd2,3'd5,3'd7},
'{3'd4,3'd2,3'd3,3'd3,3'd1,3'd4,3'd7,3'd7},
'{3'd2,3'd3,3'd3,3'd2,3'd4,3'd7,3'd7,3'd5},
'{3'd3,3'd3,3'd2,3'd4,3'd7,3'd7,3'd5,3'd2}};

parameter bit [2:0] SpriteTableR_26_4[7:0][7:0] = '{'{3'd3,3'd2,3'd3,3'd7,3'd7,3'd4,3'd1,3'd0},
'{3'd2,3'd3,3'd6,3'd7,3'd5,3'd2,3'd1,3'd0},
'{3'd3,3'd7,3'd7,3'd6,3'd2,3'd0,3'd0,3'd0},
'{3'd6,3'd7,3'd6,3'd3,3'd0,3'd0,3'd0,3'd0},
'{3'd7,3'd6,3'd3,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd7,3'd3,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd7,3'd4,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd7,3'd7,3'd5,3'd2,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_26_5[7:0][7:0] = '{'{3'd6,3'd7,3'd7,3'd5,3'd1,3'd1,3'd0,3'd0},
'{3'd3,3'd6,3'd7,3'd7,3'd4,3'd1,3'd1,3'd0},
'{3'd2,3'd3,3'd7,3'd7,3'd6,3'd2,3'd1,3'd0},
'{3'd3,3'd1,3'd5,3'd7,3'd7,3'd2,3'd1,3'd0},
'{3'd4,3'd2,3'd3,3'd7,3'd7,3'd3,3'd1,3'd0},
'{3'd4,3'd2,3'd3,3'd7,3'd7,3'd4,3'd1,3'd0},
'{3'd4,3'd2,3'd2,3'd7,3'd7,3'd4,3'd1,3'd0},
'{3'd3,3'd2,3'd2,3'd7,3'd7,3'd4,3'd1,3'd0}};

parameter bit [2:0] SpriteTableR_26_6[7:0][7:0] = '{'{3'd3,3'd2,3'd2,3'd7,3'd7,3'd4,3'd1,3'd0},
'{3'd4,3'd2,3'd3,3'd7,3'd7,3'd4,3'd1,3'd0},
'{3'd3,3'd2,3'd3,3'd7,3'd7,3'd4,3'd1,3'd0},
'{3'd1,3'd1,3'd3,3'd7,3'd7,3'd4,3'd1,3'd0},
'{3'd0,3'd0,3'd3,3'd7,3'd7,3'd4,3'd1,3'd0},
'{3'd0,3'd0,3'd3,3'd7,3'd7,3'd4,3'd1,3'd0},
'{3'd0,3'd0,3'd3,3'd7,3'd7,3'd4,3'd1,3'd0},
'{3'd0,3'd0,3'd3,3'd7,3'd7,3'd4,3'd1,3'd0}};

parameter bit [2:0] SpriteTableR_26_7[7:0][7:0] = '{'{3'd0,3'd0,3'd3,3'd7,3'd7,3'd4,3'd2,3'd3},
'{3'd0,3'd0,3'd4,3'd7,3'd7,3'd6,3'd6,3'd7},
'{3'd0,3'd0,3'd4,3'd7,3'd7,3'd7,3'd7,3'd7},
'{3'd0,3'd0,3'd4,3'd7,3'd7,3'd7,3'd5,3'd2},
'{3'd0,3'd0,3'd3,3'd6,3'd4,3'd2,3'd0,3'd1},
'{3'd0,3'd0,3'd1,3'd1,3'd0,3'd0,3'd1,3'd4},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd4,3'd7},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd4,3'd7,3'd7}};

parameter bit [2:0] SpriteTableR_26_8[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd1,3'd5,3'd7,3'd7,3'd6},
'{3'd0,3'd0,3'd1,3'd4,3'd7,3'd7,3'd6,3'd2},
'{3'd0,3'd1,3'd4,3'd7,3'd7,3'd5,3'd2,3'd1},
'{3'd1,3'd5,3'd7,3'd7,3'd5,3'd2,3'd1,3'd0},
'{3'd4,3'd7,3'd7,3'd5,3'd2,3'd0,3'd0,3'd0},
'{3'd7,3'd7,3'd5,3'd2,3'd1,3'd0,3'd0,3'd0},
'{3'd7,3'd5,3'd2,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd5,3'd2,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_26_9[7:0][7:0] = '{'{3'd2,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_26_10[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_26_11[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_26_12[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_26_13[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_27_0[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_27_1[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0},
'{3'd2,3'd2,3'd3,3'd3,3'd2,3'd2,3'd1,3'd1},
'{3'd6,3'd7,3'd7,3'd7,3'd7,3'd6,3'd5,3'd4},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd7,3'd7},
'{3'd2,3'd1,3'd1,3'd1,3'd2,3'd2,3'd5,3'd7},
'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd2,3'd2,3'd6},
'{3'd4,3'd3,3'd4,3'd4,3'd4,3'd3,3'd1,3'd5}};

parameter bit [2:0] SpriteTableR_27_2[7:0][7:0] = '{'{3'd3,3'd4,3'd4,3'd4,3'd4,3'd2,3'd2,3'd7},
'{3'd3,3'd4,3'd4,3'd4,3'd3,3'd1,3'd5,3'd7},
'{3'd3,3'd4,3'd3,3'd4,3'd2,3'd2,3'd7,3'd7},
'{3'd3,3'd4,3'd4,3'd3,3'd2,3'd5,3'd7,3'd6},
'{3'd3,3'd4,3'd3,3'd1,3'd3,3'd7,3'd7,3'd3},
'{3'd4,3'd3,3'd2,3'd2,3'd6,3'd7,3'd5,3'd1},
'{3'd3,3'd2,3'd2,3'd6,3'd7,3'd5,3'd2,3'd0},
'{3'd3,3'd2,3'd5,3'd7,3'd6,3'd2,3'd1,3'd0}};

parameter bit [2:0] SpriteTableR_27_3[7:0][7:0] = '{'{3'd2,3'd4,3'd7,3'd7,3'd4,3'd1,3'd1,3'd0},
'{3'd4,3'd7,3'd7,3'd4,3'd1,3'd1,3'd0,3'd0},
'{3'd7,3'd7,3'd6,3'd2,3'd1,3'd0,3'd0,3'd0},
'{3'd7,3'd6,3'd2,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd6,3'd3,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd4,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd2,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_27_4[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_27_5[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_27_6[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd2,3'd3},
'{3'd1,3'd2,3'd3,3'd3,3'd4,3'd6,3'd7,3'd7}};

parameter bit [2:0] SpriteTableR_27_7[7:0][7:0] = '{'{3'd4,3'd6,3'd7,3'd7,3'd7,3'd7,3'd7,3'd5},
'{3'd7,3'd7,3'd7,3'd7,3'd7,3'd7,3'd6,3'd2},
'{3'd5,3'd5,3'd7,3'd7,3'd7,3'd5,3'd2,3'd0},
'{3'd1,3'd4,3'd7,3'd7,3'd5,3'd2,3'd1,3'd0},
'{3'd3,3'd7,3'd7,3'd6,3'd2,3'd1,3'd0,3'd0},
'{3'd7,3'd7,3'd5,3'd2,3'd1,3'd0,3'd0,3'd0},
'{3'd7,3'd6,3'd2,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd6,3'd2,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_27_8[7:0][7:0] = '{'{3'd2,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_27_9[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_27_10[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_27_11[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_27_12[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_27_13[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_28_0[2:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_28_1[2:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd0},
'{3'd0,3'd2,3'd1,3'd0,3'd5,3'd2,3'd1,3'd7},
'{3'd4,3'd1,3'd7,3'd5,3'd1,3'd7,3'd6,3'd1}};

parameter bit [2:0] SpriteTableR_28_2[2:0][7:0] = '{'{3'd7,3'd4,3'd1,3'd6,3'd2,3'd1,3'd4,3'd1},
'{3'd1,3'd2,3'd1,3'd0,3'd1,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_28_3[2:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_28_4[2:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_28_5[2:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_28_6[2:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd2,3'd1,3'd0,3'd4,3'd1,3'd1}};

parameter bit [2:0] SpriteTableR_28_7[2:0][7:0] = '{'{3'd2,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_28_8[2:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_28_9[2:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_28_10[2:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_28_11[2:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_28_12[2:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_28_13[2:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

logic [9:0] SpriteTableG;

parameter bit [7:0] SpritePaletteG[7:0] = '{8'd16, 8'd49, 8'd82, 8'd115, 8'd148, 8'd181, 8'd214, 8'd247};

	always_comb
	begin
		SpriteTableG = 10'd0;
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableG = SpriteTableG_0_0[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableG = SpriteTableG_0_1[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableG = SpriteTableG_0_2[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableG = SpriteTableG_0_3[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableG = SpriteTableG_0_4[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableG = SpriteTableG_0_5[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableG = SpriteTableG_0_6[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableG = SpriteTableG_0_7[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableG = SpriteTableG_0_8[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableG = SpriteTableG_0_9[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableG = SpriteTableG_0_10[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableG = SpriteTableG_0_11[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableG = SpriteTableG_0_12[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableG = SpriteTableG_0_13[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableG = SpriteTableG_1_0[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableG = SpriteTableG_1_1[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableG = SpriteTableG_1_2[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableG = SpriteTableG_1_3[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableG = SpriteTableG_1_4[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableG = SpriteTableG_1_5[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableG = SpriteTableG_1_6[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableG = SpriteTableG_1_7[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableG = SpriteTableG_1_8[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableG = SpriteTableG_1_9[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableG = SpriteTableG_1_10[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableG = SpriteTableG_1_11[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableG = SpriteTableG_1_12[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableG = SpriteTableG_1_13[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableG = SpriteTableG_2_0[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableG = SpriteTableG_2_1[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableG = SpriteTableG_2_2[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableG = SpriteTableG_2_3[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableG = SpriteTableG_2_4[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableG = SpriteTableG_2_5[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableG = SpriteTableG_2_6[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableG = SpriteTableG_2_7[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableG = SpriteTableG_2_8[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableG = SpriteTableG_2_9[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableG = SpriteTableG_2_10[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableG = SpriteTableG_2_11[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableG = SpriteTableG_2_12[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableG = SpriteTableG_2_13[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableG = SpriteTableG_3_0[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableG = SpriteTableG_3_1[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableG = SpriteTableG_3_2[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableG = SpriteTableG_3_3[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableG = SpriteTableG_3_4[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableG = SpriteTableG_3_5[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableG = SpriteTableG_3_6[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableG = SpriteTableG_3_7[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableG = SpriteTableG_3_8[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableG = SpriteTableG_3_9[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableG = SpriteTableG_3_10[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableG = SpriteTableG_3_11[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableG = SpriteTableG_3_12[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableG = SpriteTableG_3_13[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableG = SpriteTableG_4_0[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableG = SpriteTableG_4_1[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableG = SpriteTableG_4_2[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableG = SpriteTableG_4_3[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableG = SpriteTableG_4_4[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableG = SpriteTableG_4_5[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableG = SpriteTableG_4_6[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableG = SpriteTableG_4_7[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableG = SpriteTableG_4_8[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableG = SpriteTableG_4_9[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableG = SpriteTableG_4_10[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableG = SpriteTableG_4_11[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableG = SpriteTableG_4_12[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableG = SpriteTableG_4_13[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableG = SpriteTableG_5_0[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableG = SpriteTableG_5_1[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableG = SpriteTableG_5_2[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableG = SpriteTableG_5_3[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableG = SpriteTableG_5_4[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableG = SpriteTableG_5_5[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableG = SpriteTableG_5_6[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableG = SpriteTableG_5_7[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableG = SpriteTableG_5_8[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableG = SpriteTableG_5_9[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableG = SpriteTableG_5_10[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableG = SpriteTableG_5_11[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableG = SpriteTableG_5_12[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableG = SpriteTableG_5_13[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableG = SpriteTableG_6_0[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableG = SpriteTableG_6_1[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableG = SpriteTableG_6_2[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableG = SpriteTableG_6_3[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableG = SpriteTableG_6_4[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableG = SpriteTableG_6_5[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableG = SpriteTableG_6_6[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableG = SpriteTableG_6_7[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableG = SpriteTableG_6_8[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableG = SpriteTableG_6_9[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableG = SpriteTableG_6_10[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableG = SpriteTableG_6_11[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableG = SpriteTableG_6_12[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableG = SpriteTableG_6_13[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableG = SpriteTableG_7_0[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableG = SpriteTableG_7_1[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableG = SpriteTableG_7_2[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableG = SpriteTableG_7_3[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableG = SpriteTableG_7_4[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableG = SpriteTableG_7_5[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableG = SpriteTableG_7_6[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableG = SpriteTableG_7_7[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableG = SpriteTableG_7_8[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableG = SpriteTableG_7_9[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableG = SpriteTableG_7_10[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableG = SpriteTableG_7_11[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableG = SpriteTableG_7_12[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableG = SpriteTableG_7_13[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableG = SpriteTableG_8_0[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableG = SpriteTableG_8_1[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableG = SpriteTableG_8_2[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableG = SpriteTableG_8_3[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableG = SpriteTableG_8_4[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableG = SpriteTableG_8_5[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableG = SpriteTableG_8_6[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableG = SpriteTableG_8_7[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableG = SpriteTableG_8_8[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableG = SpriteTableG_8_9[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableG = SpriteTableG_8_10[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableG = SpriteTableG_8_11[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableG = SpriteTableG_8_12[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableG = SpriteTableG_8_13[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableG = SpriteTableG_9_0[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableG = SpriteTableG_9_1[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableG = SpriteTableG_9_2[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableG = SpriteTableG_9_3[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableG = SpriteTableG_9_4[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableG = SpriteTableG_9_5[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableG = SpriteTableG_9_6[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableG = SpriteTableG_9_7[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableG = SpriteTableG_9_8[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableG = SpriteTableG_9_9[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableG = SpriteTableG_9_10[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableG = SpriteTableG_9_11[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableG = SpriteTableG_9_12[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableG = SpriteTableG_9_13[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableG = SpriteTableG_10_0[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableG = SpriteTableG_10_1[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableG = SpriteTableG_10_2[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableG = SpriteTableG_10_3[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableG = SpriteTableG_10_4[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableG = SpriteTableG_10_5[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableG = SpriteTableG_10_6[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableG = SpriteTableG_10_7[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableG = SpriteTableG_10_8[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableG = SpriteTableG_10_9[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableG = SpriteTableG_10_10[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableG = SpriteTableG_10_11[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableG = SpriteTableG_10_12[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableG = SpriteTableG_10_13[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableG = SpriteTableG_11_0[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableG = SpriteTableG_11_1[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableG = SpriteTableG_11_2[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableG = SpriteTableG_11_3[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableG = SpriteTableG_11_4[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableG = SpriteTableG_11_5[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableG = SpriteTableG_11_6[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableG = SpriteTableG_11_7[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableG = SpriteTableG_11_8[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableG = SpriteTableG_11_9[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableG = SpriteTableG_11_10[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableG = SpriteTableG_11_11[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableG = SpriteTableG_11_12[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableG = SpriteTableG_11_13[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableG = SpriteTableG_12_0[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableG = SpriteTableG_12_1[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableG = SpriteTableG_12_2[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableG = SpriteTableG_12_3[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableG = SpriteTableG_12_4[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableG = SpriteTableG_12_5[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableG = SpriteTableG_12_6[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableG = SpriteTableG_12_7[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableG = SpriteTableG_12_8[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableG = SpriteTableG_12_9[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableG = SpriteTableG_12_10[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableG = SpriteTableG_12_11[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableG = SpriteTableG_12_12[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableG = SpriteTableG_12_13[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableG = SpriteTableG_13_0[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableG = SpriteTableG_13_1[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableG = SpriteTableG_13_2[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableG = SpriteTableG_13_3[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableG = SpriteTableG_13_4[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableG = SpriteTableG_13_5[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableG = SpriteTableG_13_6[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableG = SpriteTableG_13_7[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableG = SpriteTableG_13_8[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableG = SpriteTableG_13_9[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableG = SpriteTableG_13_10[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableG = SpriteTableG_13_11[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableG = SpriteTableG_13_12[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableG = SpriteTableG_13_13[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableG = SpriteTableG_14_0[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableG = SpriteTableG_14_1[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableG = SpriteTableG_14_2[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableG = SpriteTableG_14_3[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableG = SpriteTableG_14_4[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableG = SpriteTableG_14_5[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableG = SpriteTableG_14_6[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableG = SpriteTableG_14_7[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableG = SpriteTableG_14_8[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableG = SpriteTableG_14_9[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableG = SpriteTableG_14_10[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableG = SpriteTableG_14_11[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableG = SpriteTableG_14_12[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableG = SpriteTableG_14_13[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableG = SpriteTableG_15_0[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableG = SpriteTableG_15_1[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableG = SpriteTableG_15_2[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableG = SpriteTableG_15_3[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableG = SpriteTableG_15_4[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableG = SpriteTableG_15_5[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableG = SpriteTableG_15_6[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableG = SpriteTableG_15_7[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableG = SpriteTableG_15_8[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableG = SpriteTableG_15_9[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableG = SpriteTableG_15_10[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableG = SpriteTableG_15_11[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableG = SpriteTableG_15_12[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableG = SpriteTableG_15_13[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd136 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableG = SpriteTableG_16_0[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd136 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableG = SpriteTableG_16_1[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd136 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableG = SpriteTableG_16_2[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd136 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableG = SpriteTableG_16_3[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd136 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableG = SpriteTableG_16_4[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd136 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableG = SpriteTableG_16_5[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd136 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableG = SpriteTableG_16_6[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd136 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableG = SpriteTableG_16_7[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd136 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableG = SpriteTableG_16_8[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd136 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableG = SpriteTableG_16_9[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd136 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableG = SpriteTableG_16_10[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd136 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableG = SpriteTableG_16_11[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd136 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableG = SpriteTableG_16_12[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd136 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableG = SpriteTableG_16_13[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd136 && SpriteX < 10'd144 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableG = SpriteTableG_17_0[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd136 && SpriteX < 10'd144 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableG = SpriteTableG_17_1[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd136 && SpriteX < 10'd144 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableG = SpriteTableG_17_2[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd136 && SpriteX < 10'd144 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableG = SpriteTableG_17_3[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd136 && SpriteX < 10'd144 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableG = SpriteTableG_17_4[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd136 && SpriteX < 10'd144 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableG = SpriteTableG_17_5[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd136 && SpriteX < 10'd144 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableG = SpriteTableG_17_6[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd136 && SpriteX < 10'd144 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableG = SpriteTableG_17_7[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd136 && SpriteX < 10'd144 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableG = SpriteTableG_17_8[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd136 && SpriteX < 10'd144 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableG = SpriteTableG_17_9[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd136 && SpriteX < 10'd144 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableG = SpriteTableG_17_10[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd136 && SpriteX < 10'd144 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableG = SpriteTableG_17_11[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd136 && SpriteX < 10'd144 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableG = SpriteTableG_17_12[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd136 && SpriteX < 10'd144 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableG = SpriteTableG_17_13[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd144 && SpriteX < 10'd152 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableG = SpriteTableG_18_0[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd144 && SpriteX < 10'd152 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableG = SpriteTableG_18_1[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd144 && SpriteX < 10'd152 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableG = SpriteTableG_18_2[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd144 && SpriteX < 10'd152 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableG = SpriteTableG_18_3[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd144 && SpriteX < 10'd152 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableG = SpriteTableG_18_4[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd144 && SpriteX < 10'd152 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableG = SpriteTableG_18_5[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd144 && SpriteX < 10'd152 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableG = SpriteTableG_18_6[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd144 && SpriteX < 10'd152 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableG = SpriteTableG_18_7[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd144 && SpriteX < 10'd152 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableG = SpriteTableG_18_8[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd144 && SpriteX < 10'd152 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableG = SpriteTableG_18_9[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd144 && SpriteX < 10'd152 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableG = SpriteTableG_18_10[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd144 && SpriteX < 10'd152 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableG = SpriteTableG_18_11[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd144 && SpriteX < 10'd152 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableG = SpriteTableG_18_12[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd144 && SpriteX < 10'd152 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableG = SpriteTableG_18_13[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd152 && SpriteX < 10'd160 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableG = SpriteTableG_19_0[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd152 && SpriteX < 10'd160 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableG = SpriteTableG_19_1[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd152 && SpriteX < 10'd160 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableG = SpriteTableG_19_2[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd152 && SpriteX < 10'd160 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableG = SpriteTableG_19_3[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd152 && SpriteX < 10'd160 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableG = SpriteTableG_19_4[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd152 && SpriteX < 10'd160 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableG = SpriteTableG_19_5[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd152 && SpriteX < 10'd160 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableG = SpriteTableG_19_6[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd152 && SpriteX < 10'd160 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableG = SpriteTableG_19_7[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd152 && SpriteX < 10'd160 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableG = SpriteTableG_19_8[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd152 && SpriteX < 10'd160 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableG = SpriteTableG_19_9[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd152 && SpriteX < 10'd160 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableG = SpriteTableG_19_10[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd152 && SpriteX < 10'd160 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableG = SpriteTableG_19_11[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd152 && SpriteX < 10'd160 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableG = SpriteTableG_19_12[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd152 && SpriteX < 10'd160 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableG = SpriteTableG_19_13[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd160 && SpriteX < 10'd168 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableG = SpriteTableG_20_0[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd160 && SpriteX < 10'd168 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableG = SpriteTableG_20_1[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd160 && SpriteX < 10'd168 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableG = SpriteTableG_20_2[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd160 && SpriteX < 10'd168 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableG = SpriteTableG_20_3[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd160 && SpriteX < 10'd168 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableG = SpriteTableG_20_4[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd160 && SpriteX < 10'd168 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableG = SpriteTableG_20_5[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd160 && SpriteX < 10'd168 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableG = SpriteTableG_20_6[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd160 && SpriteX < 10'd168 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableG = SpriteTableG_20_7[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd160 && SpriteX < 10'd168 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableG = SpriteTableG_20_8[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd160 && SpriteX < 10'd168 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableG = SpriteTableG_20_9[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd160 && SpriteX < 10'd168 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableG = SpriteTableG_20_10[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd160 && SpriteX < 10'd168 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableG = SpriteTableG_20_11[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd160 && SpriteX < 10'd168 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableG = SpriteTableG_20_12[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd160 && SpriteX < 10'd168 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableG = SpriteTableG_20_13[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd168 && SpriteX < 10'd176 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableG = SpriteTableG_21_0[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd168 && SpriteX < 10'd176 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableG = SpriteTableG_21_1[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd168 && SpriteX < 10'd176 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableG = SpriteTableG_21_2[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd168 && SpriteX < 10'd176 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableG = SpriteTableG_21_3[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd168 && SpriteX < 10'd176 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableG = SpriteTableG_21_4[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd168 && SpriteX < 10'd176 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableG = SpriteTableG_21_5[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd168 && SpriteX < 10'd176 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableG = SpriteTableG_21_6[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd168 && SpriteX < 10'd176 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableG = SpriteTableG_21_7[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd168 && SpriteX < 10'd176 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableG = SpriteTableG_21_8[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd168 && SpriteX < 10'd176 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableG = SpriteTableG_21_9[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd168 && SpriteX < 10'd176 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableG = SpriteTableG_21_10[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd168 && SpriteX < 10'd176 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableG = SpriteTableG_21_11[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd168 && SpriteX < 10'd176 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableG = SpriteTableG_21_12[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd168 && SpriteX < 10'd176 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableG = SpriteTableG_21_13[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd176 && SpriteX < 10'd184 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableG = SpriteTableG_22_0[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd176 && SpriteX < 10'd184 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableG = SpriteTableG_22_1[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd176 && SpriteX < 10'd184 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableG = SpriteTableG_22_2[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd176 && SpriteX < 10'd184 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableG = SpriteTableG_22_3[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd176 && SpriteX < 10'd184 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableG = SpriteTableG_22_4[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd176 && SpriteX < 10'd184 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableG = SpriteTableG_22_5[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd176 && SpriteX < 10'd184 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableG = SpriteTableG_22_6[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd176 && SpriteX < 10'd184 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableG = SpriteTableG_22_7[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd176 && SpriteX < 10'd184 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableG = SpriteTableG_22_8[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd176 && SpriteX < 10'd184 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableG = SpriteTableG_22_9[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd176 && SpriteX < 10'd184 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableG = SpriteTableG_22_10[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd176 && SpriteX < 10'd184 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableG = SpriteTableG_22_11[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd176 && SpriteX < 10'd184 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableG = SpriteTableG_22_12[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd176 && SpriteX < 10'd184 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableG = SpriteTableG_22_13[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd184 && SpriteX < 10'd192 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableG = SpriteTableG_23_0[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd184 && SpriteX < 10'd192 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableG = SpriteTableG_23_1[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd184 && SpriteX < 10'd192 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableG = SpriteTableG_23_2[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd184 && SpriteX < 10'd192 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableG = SpriteTableG_23_3[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd184 && SpriteX < 10'd192 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableG = SpriteTableG_23_4[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd184 && SpriteX < 10'd192 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableG = SpriteTableG_23_5[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd184 && SpriteX < 10'd192 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableG = SpriteTableG_23_6[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd184 && SpriteX < 10'd192 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableG = SpriteTableG_23_7[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd184 && SpriteX < 10'd192 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableG = SpriteTableG_23_8[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd184 && SpriteX < 10'd192 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableG = SpriteTableG_23_9[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd184 && SpriteX < 10'd192 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableG = SpriteTableG_23_10[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd184 && SpriteX < 10'd192 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableG = SpriteTableG_23_11[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd184 && SpriteX < 10'd192 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableG = SpriteTableG_23_12[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd184 && SpriteX < 10'd192 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableG = SpriteTableG_23_13[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd192 && SpriteX < 10'd200 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableG = SpriteTableG_24_0[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd192 && SpriteX < 10'd200 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableG = SpriteTableG_24_1[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd192 && SpriteX < 10'd200 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableG = SpriteTableG_24_2[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd192 && SpriteX < 10'd200 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableG = SpriteTableG_24_3[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd192 && SpriteX < 10'd200 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableG = SpriteTableG_24_4[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd192 && SpriteX < 10'd200 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableG = SpriteTableG_24_5[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd192 && SpriteX < 10'd200 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableG = SpriteTableG_24_6[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd192 && SpriteX < 10'd200 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableG = SpriteTableG_24_7[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd192 && SpriteX < 10'd200 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableG = SpriteTableG_24_8[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd192 && SpriteX < 10'd200 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableG = SpriteTableG_24_9[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd192 && SpriteX < 10'd200 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableG = SpriteTableG_24_10[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd192 && SpriteX < 10'd200 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableG = SpriteTableG_24_11[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd192 && SpriteX < 10'd200 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableG = SpriteTableG_24_12[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd192 && SpriteX < 10'd200 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableG = SpriteTableG_24_13[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd200 && SpriteX < 10'd208 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableG = SpriteTableG_25_0[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd200 && SpriteX < 10'd208 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableG = SpriteTableG_25_1[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd200 && SpriteX < 10'd208 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableG = SpriteTableG_25_2[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd200 && SpriteX < 10'd208 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableG = SpriteTableG_25_3[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd200 && SpriteX < 10'd208 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableG = SpriteTableG_25_4[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd200 && SpriteX < 10'd208 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableG = SpriteTableG_25_5[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd200 && SpriteX < 10'd208 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableG = SpriteTableG_25_6[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd200 && SpriteX < 10'd208 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableG = SpriteTableG_25_7[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd200 && SpriteX < 10'd208 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableG = SpriteTableG_25_8[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd200 && SpriteX < 10'd208 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableG = SpriteTableG_25_9[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd200 && SpriteX < 10'd208 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableG = SpriteTableG_25_10[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd200 && SpriteX < 10'd208 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableG = SpriteTableG_25_11[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd200 && SpriteX < 10'd208 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableG = SpriteTableG_25_12[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd200 && SpriteX < 10'd208 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableG = SpriteTableG_25_13[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd208 && SpriteX < 10'd216 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableG = SpriteTableG_26_0[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd208 && SpriteX < 10'd216 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableG = SpriteTableG_26_1[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd208 && SpriteX < 10'd216 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableG = SpriteTableG_26_2[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd208 && SpriteX < 10'd216 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableG = SpriteTableG_26_3[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd208 && SpriteX < 10'd216 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableG = SpriteTableG_26_4[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd208 && SpriteX < 10'd216 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableG = SpriteTableG_26_5[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd208 && SpriteX < 10'd216 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableG = SpriteTableG_26_6[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd208 && SpriteX < 10'd216 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableG = SpriteTableG_26_7[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd208 && SpriteX < 10'd216 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableG = SpriteTableG_26_8[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd208 && SpriteX < 10'd216 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableG = SpriteTableG_26_9[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd208 && SpriteX < 10'd216 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableG = SpriteTableG_26_10[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd208 && SpriteX < 10'd216 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableG = SpriteTableG_26_11[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd208 && SpriteX < 10'd216 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableG = SpriteTableG_26_12[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd208 && SpriteX < 10'd216 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableG = SpriteTableG_26_13[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd216 && SpriteX < 10'd224 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableG = SpriteTableG_27_0[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd216 && SpriteX < 10'd224 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableG = SpriteTableG_27_1[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd216 && SpriteX < 10'd224 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableG = SpriteTableG_27_2[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd216 && SpriteX < 10'd224 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableG = SpriteTableG_27_3[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd216 && SpriteX < 10'd224 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableG = SpriteTableG_27_4[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd216 && SpriteX < 10'd224 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableG = SpriteTableG_27_5[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd216 && SpriteX < 10'd224 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableG = SpriteTableG_27_6[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd216 && SpriteX < 10'd224 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableG = SpriteTableG_27_7[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd216 && SpriteX < 10'd224 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableG = SpriteTableG_27_8[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd216 && SpriteX < 10'd224 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableG = SpriteTableG_27_9[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd216 && SpriteX < 10'd224 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableG = SpriteTableG_27_10[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd216 && SpriteX < 10'd224 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableG = SpriteTableG_27_11[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd216 && SpriteX < 10'd224 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableG = SpriteTableG_27_12[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd216 && SpriteX < 10'd224 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableG = SpriteTableG_27_13[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd224 && SpriteX < 10'd227 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableG = SpriteTableG_28_0[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd224 && SpriteX < 10'd227 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableG = SpriteTableG_28_1[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd224 && SpriteX < 10'd227 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableG = SpriteTableG_28_2[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd224 && SpriteX < 10'd227 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableG = SpriteTableG_28_3[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd224 && SpriteX < 10'd227 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableG = SpriteTableG_28_4[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd224 && SpriteX < 10'd227 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableG = SpriteTableG_28_5[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd224 && SpriteX < 10'd227 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableG = SpriteTableG_28_6[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd224 && SpriteX < 10'd227 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableG = SpriteTableG_28_7[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd224 && SpriteX < 10'd227 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableG = SpriteTableG_28_8[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd224 && SpriteX < 10'd227 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableG = SpriteTableG_28_9[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd224 && SpriteX < 10'd227 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableG = SpriteTableG_28_10[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd224 && SpriteX < 10'd227 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableG = SpriteTableG_28_11[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd224 && SpriteX < 10'd227 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableG = SpriteTableG_28_12[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd224 && SpriteX < 10'd227 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableG = SpriteTableG_28_13[X_Index][Y_Index];
		end
	end

parameter bit [2:0] SpriteTableG_0_0[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_0_1[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_0_2[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_0_3[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_0_4[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_0_5[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd0}};

parameter bit [2:0] SpriteTableG_0_6[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd0,3'd0,3'd3},
'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd0,3'd1,3'd3},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd0,3'd2,3'd3},
'{3'd0,3'd0,3'd1,3'd1,3'd0,3'd1,3'd3,3'd2},
'{3'd0,3'd0,3'd1,3'd1,3'd0,3'd2,3'd3,3'd1}};

parameter bit [2:0] SpriteTableG_0_7[7:0][7:0] = '{'{3'd0,3'd1,3'd1,3'd1,3'd0,3'd3,3'd2,3'd1},
'{3'd0,3'd1,3'd1,3'd0,3'd0,3'd3,3'd1,3'd1},
'{3'd0,3'd1,3'd1,3'd0,3'd2,3'd4,3'd1,3'd2},
'{3'd0,3'd1,3'd0,3'd0,3'd3,3'd3,3'd1,3'd2},
'{3'd1,3'd1,3'd0,3'd0,3'd3,3'd2,3'd1,3'd2},
'{3'd1,3'd1,3'd0,3'd0,3'd3,3'd2,3'd1,3'd2},
'{3'd1,3'd1,3'd0,3'd1,3'd3,3'd1,3'd1,3'd2},
'{3'd1,3'd1,3'd0,3'd1,3'd3,3'd1,3'd1,3'd2}};

parameter bit [2:0] SpriteTableG_0_8[7:0][7:0] = '{'{3'd1,3'd1,3'd0,3'd1,3'd3,3'd1,3'd1,3'd2},
'{3'd1,3'd1,3'd0,3'd1,3'd3,3'd1,3'd1,3'd2},
'{3'd1,3'd1,3'd0,3'd0,3'd3,3'd2,3'd1,3'd2},
'{3'd1,3'd1,3'd0,3'd0,3'd3,3'd2,3'd1,3'd2},
'{3'd0,3'd1,3'd0,3'd0,3'd2,3'd3,3'd1,3'd2},
'{3'd0,3'd1,3'd1,3'd0,3'd1,3'd4,3'd2,3'd1},
'{3'd0,3'd1,3'd1,3'd0,3'd0,3'd3,3'd3,3'd1},
'{3'd0,3'd0,3'd1,3'd1,3'd0,3'd1,3'd4,3'd2}};

parameter bit [2:0] SpriteTableG_0_9[7:0][7:0] = '{'{3'd0,3'd0,3'd1,3'd1,3'd0,3'd0,3'd3,3'd4},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd0,3'd0,3'd3},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_0_10[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_0_11[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_0_12[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_0_13[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_1_0[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_1_1[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_1_2[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_1_3[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_1_4[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd0,3'd0,3'd2},
'{3'd0,3'd0,3'd1,3'd1,3'd0,3'd0,3'd2,3'd3}};

parameter bit [2:0] SpriteTableG_1_5[7:0][7:0] = '{'{3'd0,3'd1,3'd1,3'd1,3'd0,3'd1,3'd3,3'd3},
'{3'd0,3'd1,3'd1,3'd0,3'd1,3'd3,3'd3,3'd5},
'{3'd0,3'd1,3'd0,3'd0,3'd2,3'd2,3'd4,3'd6},
'{3'd1,3'd1,3'd0,3'd2,3'd3,3'd3,3'd6,3'd6},
'{3'd1,3'd0,3'd1,3'd3,3'd3,3'd5,3'd6,3'd6},
'{3'd0,3'd0,3'd2,3'd2,3'd4,3'd6,3'd6,3'd6},
'{3'd0,3'd1,3'd3,3'd2,3'd5,3'd6,3'd6,3'd6},
'{3'd0,3'd3,3'd2,3'd4,3'd6,3'd6,3'd6,3'd6}};

parameter bit [2:0] SpriteTableG_1_6[7:0][7:0] = '{'{3'd2,3'd3,3'd2,3'd5,3'd6,3'd6,3'd6,3'd6},
'{3'd3,3'd2,3'd3,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd3,3'd1,3'd4,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd2,3'd2,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd1,3'd2,3'd5,3'd5,3'd5,3'd5,3'd5,3'd5},
'{3'd1,3'd1,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd1,3'd2,3'd2,3'd2,3'd3,3'd3,3'd3,3'd3},
'{3'd2,3'd2,3'd3,3'd3,3'd3,3'd3,3'd4,3'd3}};

parameter bit [2:0] SpriteTableG_1_7[7:0][7:0] = '{'{3'd2,3'd2,3'd3,3'd3,3'd4,3'd4,3'd4,3'd4},
'{3'd2,3'd3,3'd3,3'd3,3'd4,3'd4,3'd4,3'd4},
'{3'd2,3'd3,3'd3,3'd4,3'd4,3'd4,3'd4,3'd4},
'{3'd3,3'd3,3'd3,3'd4,3'd4,3'd4,3'd4,3'd4},
'{3'd3,3'd3,3'd4,3'd4,3'd4,3'd4,3'd4,3'd4},
'{3'd3,3'd3,3'd3,3'd4,3'd4,3'd4,3'd4,3'd4},
'{3'd3,3'd3,3'd4,3'd4,3'd4,3'd4,3'd4,3'd4},
'{3'd3,3'd3,3'd4,3'd4,3'd4,3'd4,3'd4,3'd4}};

parameter bit [2:0] SpriteTableG_1_8[7:0][7:0] = '{'{3'd3,3'd3,3'd4,3'd4,3'd4,3'd4,3'd4,3'd4},
'{3'd3,3'd3,3'd3,3'd4,3'd4,3'd4,3'd4,3'd4},
'{3'd3,3'd3,3'd3,3'd4,3'd4,3'd4,3'd4,3'd4},
'{3'd2,3'd3,3'd3,3'd3,3'd4,3'd4,3'd4,3'd4},
'{3'd2,3'd3,3'd3,3'd3,3'd3,3'd4,3'd4,3'd4},
'{3'd2,3'd2,3'd3,3'd3,3'd3,3'd4,3'd4,3'd4},
'{3'd1,3'd2,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd1,3'd1,3'd2,3'd3,3'd3,3'd3,3'd3,3'd3}};

parameter bit [2:0] SpriteTableG_1_9[7:0][7:0] = '{'{3'd2,3'd1,3'd1,3'd2,3'd2,3'd3,3'd3,3'd3},
'{3'd4,3'd3,3'd1,3'd1,3'd1,3'd1,3'd2,3'd2},
'{3'd3,3'd4,3'd4,3'd3,3'd2,3'd1,3'd1,3'd2},
'{3'd0,3'd0,3'd2,3'd3,3'd4,3'd4,3'd4,3'd4},
'{3'd1,3'd0,3'd0,3'd0,3'd1,3'd1,3'd2,3'd2},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd0}};

parameter bit [2:0] SpriteTableG_1_10[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_1_11[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_1_12[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_1_13[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_2_0[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_2_1[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_2_2[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_2_3[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd0,3'd1,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd1,3'd1,3'd0,3'd0,3'd2,3'd3},
'{3'd0,3'd1,3'd1,3'd0,3'd0,3'd2,3'd3,3'd3}};

parameter bit [2:0] SpriteTableG_2_4[7:0][7:0] = '{'{3'd0,3'd1,3'd0,3'd0,3'd2,3'd3,3'd2,3'd5},
'{3'd1,3'd0,3'd0,3'd2,3'd2,3'd3,3'd5,3'd6},
'{3'd0,3'd0,3'd2,3'd2,3'd3,3'd5,3'd6,3'd6},
'{3'd0,3'd1,3'd3,3'd3,3'd5,3'd6,3'd6,3'd6},
'{3'd1,3'd3,3'd3,3'd5,3'd6,3'd6,3'd6,3'd5},
'{3'd3,3'd2,3'd5,3'd6,3'd6,3'd6,3'd6,3'd3},
'{3'd3,3'd4,3'd6,3'd6,3'd6,3'd6,3'd4,3'd2},
'{3'd4,3'd6,3'd6,3'd6,3'd6,3'd5,3'd2,3'd3}};

parameter bit [2:0] SpriteTableG_2_5[7:0][7:0] = '{'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd4,3'd2,3'd3},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd3,3'd3,3'd3},
'{3'd6,3'd6,3'd6,3'd6,3'd5,3'd2,3'd3,3'd2},
'{3'd6,3'd6,3'd6,3'd6,3'd3,3'd2,3'd3,3'd1},
'{3'd6,3'd6,3'd6,3'd5,3'd2,3'd3,3'd3,3'd0},
'{3'd6,3'd6,3'd6,3'd4,3'd2,3'd4,3'd2,3'd0},
'{3'd6,3'd6,3'd6,3'd3,3'd2,3'd3,3'd1,3'd0},
'{3'd6,3'd6,3'd5,3'd2,3'd3,3'd3,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_2_6[7:0][7:0] = '{'{3'd6,3'd6,3'd5,3'd2,3'd3,3'd2,3'd0,3'd0},
'{3'd6,3'd6,3'd4,3'd2,3'd3,3'd1,3'd0,3'd1},
'{3'd6,3'd6,3'd3,3'd2,3'd3,3'd0,3'd0,3'd1},
'{3'd6,3'd6,3'd3,3'd2,3'd3,3'd0,3'd0,3'd1},
'{3'd5,3'd4,3'd2,3'd3,3'd3,3'd0,3'd0,3'd1},
'{3'd2,3'd2,3'd1,3'd3,3'd2,3'd0,3'd1,3'd1},
'{3'd3,3'd2,3'd1,3'd3,3'd2,3'd0,3'd1,3'd1},
'{3'd3,3'd2,3'd1,3'd3,3'd3,3'd0,3'd0,3'd1}};

parameter bit [2:0] SpriteTableG_2_7[7:0][7:0] = '{'{3'd3,3'd3,3'd1,3'd2,3'd3,3'd0,3'd0,3'd0},
'{3'd4,3'd3,3'd2,3'd1,3'd3,3'd2,3'd0,3'd0},
'{3'd4,3'd4,3'd3,3'd1,3'd2,3'd3,3'd1,3'd0},
'{3'd4,3'd4,3'd3,3'd2,3'd1,3'd2,3'd3,3'd2},
'{3'd4,3'd4,3'd4,3'd3,3'd2,3'd1,3'd1,3'd3},
'{3'd4,3'd4,3'd4,3'd4,3'd3,3'd3,3'd2,3'd2},
'{3'd4,3'd4,3'd4,3'd4,3'd4,3'd4,3'd3,3'd3},
'{3'd4,3'd4,3'd4,3'd4,3'd4,3'd4,3'd4,3'd3}};

parameter bit [2:0] SpriteTableG_2_8[7:0][7:0] = '{'{3'd4,3'd4,3'd4,3'd4,3'd4,3'd4,3'd4,3'd4},
'{3'd4,3'd4,3'd4,3'd4,3'd4,3'd4,3'd4,3'd4},
'{3'd4,3'd4,3'd4,3'd4,3'd4,3'd4,3'd4,3'd4},
'{3'd4,3'd4,3'd4,3'd4,3'd4,3'd4,3'd4,3'd4},
'{3'd4,3'd4,3'd4,3'd4,3'd4,3'd4,3'd4,3'd4},
'{3'd4,3'd4,3'd4,3'd4,3'd3,3'd3,3'd3,3'd3},
'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd2}};

parameter bit [2:0] SpriteTableG_2_9[7:0][7:0] = '{'{3'd3,3'd3,3'd3,3'd3,3'd2,3'd2,3'd2,3'd1},
'{3'd2,3'd2,3'd2,3'd2,3'd1,3'd1,3'd2,3'd2},
'{3'd2,3'd1,3'd1,3'd2,3'd2,3'd3,3'd4,3'd5},
'{3'd4,3'd4,3'd4,3'd4,3'd4,3'd3,3'd2,3'd1},
'{3'd3,3'd2,3'd2,3'd1,3'd1,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd0}};

parameter bit [2:0] SpriteTableG_2_10[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_2_11[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_2_12[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_2_13[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_3_0[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_3_1[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_3_2[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd0,3'd0},
'{3'd0,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd1}};

parameter bit [2:0] SpriteTableG_3_3[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd0,3'd0,3'd1,3'd2,3'd3},
'{3'd1,3'd0,3'd0,3'd0,3'd2,3'd3,3'd3,3'd2},
'{3'd0,3'd0,3'd0,3'd2,3'd3,3'd2,3'd3,3'd5},
'{3'd0,3'd0,3'd3,3'd3,3'd2,3'd4,3'd6,3'd6},
'{3'd1,3'd3,3'd2,3'd2,3'd4,3'd6,3'd6,3'd5},
'{3'd3,3'd2,3'd3,3'd5,3'd6,3'd6,3'd5,3'd3},
'{3'd3,3'd4,3'd6,3'd6,3'd5,3'd4,3'd2,3'd2},
'{3'd5,3'd6,3'd6,3'd5,3'd4,3'd2,3'd3,3'd3}};

parameter bit [2:0] SpriteTableG_3_4[7:0][7:0] = '{'{3'd6,3'd6,3'd6,3'd4,3'd2,3'd3,3'd3,3'd1},
'{3'd6,3'd5,3'd3,3'd2,3'd3,3'd3,3'd0,3'd0},
'{3'd6,3'd4,3'd2,3'd3,3'd3,3'd0,3'd0,3'd0},
'{3'd5,3'd2,3'd3,3'd3,3'd1,3'd0,3'd0,3'd0},
'{3'd2,3'd3,3'd3,3'd1,3'd0,3'd0,3'd1,3'd1},
'{3'd2,3'd3,3'd2,3'd0,3'd0,3'd1,3'd1,3'd1},
'{3'd3,3'd3,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1},
'{3'd3,3'd1,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_3_5[7:0][7:0] = '{'{3'd2,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd2,3'd1},
'{3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd2,3'd2},
'{3'd1,3'd1,3'd1,3'd1,3'd2,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_3_6[7:0][7:0] = '{'{3'd2,3'd2,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd2,3'd2,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd2,3'd1,3'd1,3'd1,3'd2},
'{3'd1,3'd1,3'd1,3'd2,3'd1,3'd1,3'd1,3'd1},
'{3'd2,3'd2,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_3_7[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd2,3'd2,3'd2,3'd1,3'd1,3'd1,3'd1,3'd2},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd1},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3}};

parameter bit [2:0] SpriteTableG_3_8[7:0][7:0] = '{'{3'd4,3'd4,3'd3,3'd3,3'd4,3'd4,3'd4,3'd4},
'{3'd4,3'd4,3'd4,3'd4,3'd4,3'd4,3'd4,3'd4},
'{3'd4,3'd4,3'd4,3'd4,3'd3,3'd3,3'd3,3'd3},
'{3'd4,3'd4,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd4,3'd3,3'd3,3'd3,3'd3,3'd3,3'd2,3'd2},
'{3'd3,3'd3,3'd3,3'd3,3'd2,3'd1,3'd1,3'd3},
'{3'd3,3'd3,3'd2,3'd2,3'd1,3'd2,3'd3,3'd4},
'{3'd2,3'd1,3'd1,3'd2,3'd3,3'd4,3'd4,3'd2}};

parameter bit [2:0] SpriteTableG_3_9[7:0][7:0] = '{'{3'd1,3'd2,3'd3,3'd4,3'd4,3'd3,3'd1,3'd0},
'{3'd3,3'd5,3'd4,3'd3,3'd1,3'd0,3'd0,3'd0},
'{3'd4,3'd3,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd0},
'{3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd0},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd1,3'd0},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_3_10[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_3_11[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_3_12[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_3_13[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_4_0[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_4_1[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_4_2[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd0,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd1,3'd2},
'{3'd0,3'd0,3'd0,3'd1,3'd2,3'd3,3'd3,3'd3},
'{3'd0,3'd1,3'd3,3'd3,3'd3,3'd2,3'd3,3'd3},
'{3'd3,3'd4,3'd3,3'd2,3'd2,3'd4,3'd5,3'd6}};

parameter bit [2:0] SpriteTableG_4_3[7:0][7:0] = '{'{3'd3,3'd3,3'd2,3'd4,3'd5,3'd6,3'd5,3'd4},
'{3'd4,3'd5,3'd6,3'd6,3'd5,3'd4,3'd2,3'd2},
'{3'd6,3'd6,3'd5,3'd4,3'd2,3'd2,3'd2,3'd3},
'{3'd6,3'd4,3'd2,3'd2,3'd2,3'd3,3'd2,3'd1},
'{3'd3,3'd2,3'd2,3'd3,3'd3,3'd1,3'd0,3'd0},
'{3'd2,3'd3,3'd3,3'd2,3'd0,3'd0,3'd0,3'd0},
'{3'd3,3'd2,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_4_4[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd2},
'{3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd2,3'd2,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd2,3'd2},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd2,3'd2,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_4_5[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd2,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd2,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd2}};

parameter bit [2:0] SpriteTableG_4_6[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd2,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd2,3'd2,3'd2},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd2,3'd1,3'd1},
'{3'd1,3'd2,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_4_7[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd2},
'{3'd0,3'd0,3'd0,3'd0,3'd2,3'd2,3'd2,3'd2},
'{3'd0,3'd1,3'd2,3'd3,3'd2,3'd1,3'd1,3'd2},
'{3'd3,3'd3,3'd3,3'd2,3'd1,3'd2,3'd3,3'd3},
'{3'd2,3'd2,3'd2,3'd2,3'd3,3'd3,3'd3,3'd4},
'{3'd3,3'd3,3'd3,3'd3,3'd4,3'd4,3'd4,3'd4},
'{3'd3,3'd3,3'd3,3'd4,3'd4,3'd4,3'd4,3'd4}};

parameter bit [2:0] SpriteTableG_4_8[7:0][7:0] = '{'{3'd4,3'd3,3'd3,3'd4,3'd3,3'd3,3'd4,3'd4},
'{3'd3,3'd3,3'd3,3'd3,3'd2,3'd1,3'd3,3'd4},
'{3'd3,3'd3,3'd2,3'd1,3'd1,3'd1,3'd3,3'd4},
'{3'd2,3'd1,3'd1,3'd2,3'd1,3'd2,3'd3,3'd4},
'{3'd2,3'd2,3'd4,3'd3,3'd1,3'd2,3'd3,3'd4},
'{3'd4,3'd4,3'd4,3'd2,3'd1,3'd3,3'd3,3'd4},
'{3'd3,3'd1,3'd2,3'd2,3'd1,3'd3,3'd3,3'd3},
'{3'd0,3'd0,3'd3,3'd1,3'd2,3'd3,3'd3,3'd3}};

parameter bit [2:0] SpriteTableG_4_9[7:0][7:0] = '{'{3'd0,3'd1,3'd3,3'd1,3'd2,3'd3,3'd2,3'd2},
'{3'd0,3'd2,3'd2,3'd1,3'd2,3'd1,3'd1,3'd2},
'{3'd0,3'd3,3'd1,3'd1,3'd1,3'd2,3'd3,3'd4},
'{3'd1,3'd3,3'd1,3'd3,3'd4,3'd4,3'd3,3'd1},
'{3'd2,3'd5,3'd4,3'd4,3'd3,3'd1,3'd0,3'd0},
'{3'd3,3'd4,3'd3,3'd1,3'd0,3'd0,3'd1,3'd1},
'{3'd1,3'd1,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_4_10[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_4_11[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_4_12[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_4_13[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_5_0[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_5_1[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_5_2[7:0][7:0] = '{'{3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd1,3'd2,3'd2,3'd3,3'd3,3'd3,3'd3},
'{3'd3,3'd4,3'd4,3'd3,3'd3,3'd2,3'd2,3'd2},
'{3'd3,3'd2,3'd2,3'd2,3'd3,3'd3,3'd4,3'd4},
'{3'd4,3'd5,3'd5,3'd5,3'd6,3'd6,3'd6,3'd6},
'{3'd6,3'd6,3'd5,3'd5,3'd4,3'd3,3'd3,3'd2}};

parameter bit [2:0] SpriteTableG_5_3[7:0][7:0] = '{'{3'd4,3'd3,3'd3,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd2,3'd3,3'd3,3'd3,3'd3,3'd2,3'd3,3'd3},
'{3'd3,3'd2,3'd2,3'd1,3'd0,3'd0,3'd1,3'd2},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd2},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd2,3'd2},
'{3'd0,3'd0,3'd1,3'd1,3'd0,3'd0,3'd2,3'd2},
'{3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd2,3'd3},
'{3'd0,3'd1,3'd1,3'd0,3'd0,3'd1,3'd2,3'd4}};

parameter bit [2:0] SpriteTableG_5_4[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd0,3'd0,3'd2,3'd2,3'd4},
'{3'd2,3'd1,3'd1,3'd0,3'd0,3'd2,3'd1,3'd2},
'{3'd1,3'd2,3'd1,3'd0,3'd0,3'd2,3'd0,3'd2},
'{3'd1,3'd1,3'd1,3'd0,3'd1,3'd2,3'd2,3'd3},
'{3'd1,3'd1,3'd0,3'd0,3'd2,3'd3,3'd2,3'd0},
'{3'd1,3'd0,3'd0,3'd0,3'd3,3'd3,3'd0,3'd0},
'{3'd1,3'd0,3'd0,3'd0,3'd2,3'd0,3'd0,3'd0},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_5_5[7:0][7:0] = '{'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd2,3'd2},
'{3'd0,3'd0,3'd0,3'd1,3'd2,3'd2,3'd1,3'd2},
'{3'd1,3'd0,3'd0,3'd0,3'd3,3'd2,3'd1,3'd5},
'{3'd2,3'd1,3'd0,3'd0,3'd0,3'd3,3'd2,3'd3},
'{3'd1,3'd1,3'd1,3'd0,3'd0,3'd1,3'd2,3'd2},
'{3'd2,3'd1,3'd1,3'd1,3'd0,3'd0,3'd2,3'd2}};

parameter bit [2:0] SpriteTableG_5_6[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd1,3'd2},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd1,3'd2},
'{3'd1,3'd2,3'd2,3'd1,3'd0,3'd0,3'd1,3'd2},
'{3'd2,3'd2,3'd2,3'd1,3'd0,3'd0,3'd2,3'd2},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd1,3'd2,3'd1},
'{3'd1,3'd1,3'd0,3'd0,3'd1,3'd2,3'd1,3'd2},
'{3'd0,3'd0,3'd0,3'd1,3'd2,3'd1,3'd2,3'd3},
'{3'd0,3'd0,3'd2,3'd2,3'd2,3'd2,3'd3,3'd3}};

parameter bit [2:0] SpriteTableG_5_7[7:0][7:0] = '{'{3'd1,3'd2,3'd2,3'd2,3'd3,3'd3,3'd4,3'd4},
'{3'd2,3'd2,3'd2,3'd3,3'd3,3'd4,3'd4,3'd4},
'{3'd2,3'd3,3'd3,3'd3,3'd4,3'd4,3'd4,3'd4},
'{3'd3,3'd3,3'd4,3'd4,3'd4,3'd4,3'd4,3'd4},
'{3'd4,3'd4,3'd4,3'd4,3'd4,3'd4,3'd4,3'd4},
'{3'd4,3'd4,3'd4,3'd4,3'd4,3'd4,3'd4,3'd4},
'{3'd4,3'd4,3'd4,3'd4,3'd4,3'd4,3'd4,3'd4},
'{3'd4,3'd4,3'd4,3'd4,3'd4,3'd4,3'd4,3'd4}};

parameter bit [2:0] SpriteTableG_5_8[7:0][7:0] = '{'{3'd4,3'd4,3'd4,3'd4,3'd4,3'd4,3'd4,3'd4},
'{3'd4,3'd4,3'd4,3'd4,3'd4,3'd4,3'd4,3'd4},
'{3'd4,3'd4,3'd4,3'd4,3'd4,3'd4,3'd3,3'd3},
'{3'd4,3'd4,3'd4,3'd4,3'd4,3'd3,3'd3,3'd3},
'{3'd4,3'd3,3'd3,3'd3,3'd3,3'd3,3'd2,3'd2},
'{3'd3,3'd3,3'd3,3'd3,3'd2,3'd1,3'd2,3'd3},
'{3'd3,3'd3,3'd2,3'd1,3'd1,3'd2,3'd4,3'd4},
'{3'd2,3'd1,3'd1,3'd2,3'd4,3'd5,3'd3,3'd1}};

parameter bit [2:0] SpriteTableG_5_9[7:0][7:0] = '{'{3'd1,3'd2,3'd3,3'd4,3'd3,3'd1,3'd0,3'd0},
'{3'd4,3'd5,3'd3,3'd1,3'd0,3'd0,3'd1,3'd1},
'{3'd4,3'd2,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_5_10[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_5_11[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_5_12[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_5_13[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_6_0[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_6_1[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_6_2[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd0,3'd1,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd3,3'd3,3'd3,3'd2,3'd1,3'd1,3'd0,3'd0},
'{3'd2,3'd2,3'd3,3'd4,3'd4,3'd3,3'd2,3'd0},
'{3'd3,3'd3,3'd2,3'd2,3'd2,3'd3,3'd3,3'd3},
'{3'd6,3'd6,3'd5,3'd5,3'd4,3'd4,3'd3,3'd2},
'{3'd2,3'd4,3'd6,3'd6,3'd6,3'd6,3'd5,3'd5}};

parameter bit [2:0] SpriteTableG_6_3[7:0][7:0] = '{'{3'd1,3'd4,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd2,3'd5,3'd6,3'd6,3'd6,3'd6,3'd5,3'd6},
'{3'd3,3'd5,3'd6,3'd6,3'd5,3'd6,3'd6,3'd5},
'{3'd3,3'd6,3'd6,3'd6,3'd6,3'd6,3'd4,3'd2},
'{3'd4,3'd6,3'd6,3'd6,3'd5,3'd4,3'd1,3'd2},
'{3'd5,3'd6,3'd6,3'd5,3'd3,3'd1,3'd2,3'd3},
'{3'd6,3'd6,3'd4,3'd2,3'd2,3'd2,3'd2,3'd1},
'{3'd6,3'd3,3'd1,3'd2,3'd3,3'd1,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_6_4[7:0][7:0] = '{'{3'd3,3'd1,3'd2,3'd3,3'd1,3'd0,3'd0,3'd0},
'{3'd2,3'd2,3'd2,3'd0,3'd0,3'd1,3'd1,3'd0},
'{3'd3,3'd2,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1},
'{3'd1,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0},
'{3'd0,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd2,3'd2,3'd1}};

parameter bit [2:0] SpriteTableG_6_5[7:0][7:0] = '{'{3'd0,3'd0,3'd2,3'd2,3'd2,3'd1,3'd2,3'd4},
'{3'd1,3'd1,3'd2,3'd2,3'd3,3'd4,3'd5,3'd4},
'{3'd1,3'd2,3'd4,3'd5,3'd6,3'd6,3'd5,3'd2},
'{3'd4,3'd5,3'd6,3'd6,3'd6,3'd6,3'd4,3'd1},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd5,3'd2,3'd2},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd3,3'd1,3'd3},
'{3'd5,3'd6,3'd6,3'd6,3'd5,3'd2,3'd2,3'd4},
'{3'd4,3'd6,3'd6,3'd6,3'd5,3'd2,3'd2,3'd3}};

parameter bit [2:0] SpriteTableG_6_6[7:0][7:0] = '{'{3'd3,3'd6,3'd6,3'd6,3'd6,3'd3,3'd2,3'd3},
'{3'd3,3'd6,3'd6,3'd6,3'd6,3'd5,3'd2,3'd3},
'{3'd4,3'd6,3'd6,3'd6,3'd6,3'd6,3'd3,3'd2},
'{3'd4,3'd6,3'd6,3'd6,3'd6,3'd6,3'd4,3'd2},
'{3'd3,3'd4,3'd4,3'd4,3'd4,3'd4,3'd3,3'd1},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd1},
'{3'd3,3'd3,3'd4,3'd3,3'd3,3'd3,3'd3,3'd2},
'{3'd4,3'd4,3'd4,3'd4,3'd4,3'd4,3'd3,3'd3}};

parameter bit [2:0] SpriteTableG_6_7[7:0][7:0] = '{'{3'd4,3'd4,3'd4,3'd4,3'd4,3'd4,3'd4,3'd3},
'{3'd4,3'd4,3'd4,3'd4,3'd4,3'd4,3'd4,3'd3},
'{3'd4,3'd4,3'd4,3'd4,3'd4,3'd4,3'd4,3'd3},
'{3'd4,3'd4,3'd4,3'd4,3'd4,3'd4,3'd4,3'd4},
'{3'd4,3'd4,3'd4,3'd4,3'd4,3'd4,3'd4,3'd4},
'{3'd4,3'd4,3'd4,3'd4,3'd4,3'd4,3'd4,3'd3},
'{3'd4,3'd4,3'd4,3'd4,3'd4,3'd4,3'd3,3'd3},
'{3'd4,3'd4,3'd4,3'd4,3'd3,3'd3,3'd3,3'd3}};

parameter bit [2:0] SpriteTableG_6_8[7:0][7:0] = '{'{3'd4,3'd4,3'd4,3'd3,3'd3,3'd3,3'd2,3'd2},
'{3'd4,3'd3,3'd3,3'd3,3'd3,3'd2,3'd1,3'd1},
'{3'd3,3'd3,3'd2,3'd2,3'd2,3'd3,3'd3,3'd3},
'{3'd2,3'd1,3'd1,3'd2,3'd4,3'd4,3'd3,3'd1},
'{3'd1,3'd2,3'd3,3'd4,3'd3,3'd1,3'd0,3'd0},
'{3'd4,3'd3,3'd2,3'd1,3'd0,3'd1,3'd1,3'd1},
'{3'd3,3'd1,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_6_9[7:0][7:0] = '{'{3'd1,3'd1,3'd0,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_6_10[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_6_11[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_6_12[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_6_13[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_7_0[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_7_1[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd0}};

parameter bit [2:0] SpriteTableG_7_2[7:0][7:0] = '{'{3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd0,3'd1},
'{3'd0,3'd1,3'd1,3'd1,3'd0,3'd1,3'd2,3'd3},
'{3'd1,3'd1,3'd0,3'd0,3'd2,3'd3,3'd2,3'd2},
'{3'd0,3'd0,3'd2,3'd2,3'd2,3'd2,3'd3,3'd4},
'{3'd1,3'd3,3'd3,3'd2,3'd3,3'd5,3'd6,3'd6},
'{3'd3,3'd2,3'd2,3'd4,3'd5,3'd6,3'd6,3'd5},
'{3'd3,3'd4,3'd5,3'd6,3'd6,3'd5,3'd4,3'd2},
'{3'd5,3'd6,3'd6,3'd6,3'd5,3'd3,3'd1,3'd2}};

parameter bit [2:0] SpriteTableG_7_3[7:0][7:0] = '{'{3'd6,3'd6,3'd5,3'd3,3'd2,3'd2,3'd2,3'd2},
'{3'd5,3'd3,3'd2,3'd2,3'd3,3'd2,3'd1,3'd0},
'{3'd3,3'd1,3'd2,3'd3,3'd2,3'd0,3'd0,3'd0},
'{3'd1,3'd3,3'd3,3'd1,3'd0,3'd0,3'd0,3'd1},
'{3'd3,3'd2,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1},
'{3'd2,3'd0,3'd0,3'd0,3'd1,3'd2,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd1,3'd2,3'd2,3'd1,3'd2},
'{3'd0,3'd0,3'd1,3'd1,3'd2,3'd2,3'd1,3'd2}};

parameter bit [2:0] SpriteTableG_7_4[7:0][7:0] = '{'{3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd2,3'd2,3'd2,3'd0,3'd0},
'{3'd0,3'd2,3'd2,3'd3,3'd3,3'd0,3'd0,3'd0},
'{3'd2,3'd2,3'd1,3'd3,3'd2,3'd0,3'd0,3'd1},
'{3'd1,3'd1,3'd2,3'd2,3'd0,3'd0,3'd2,3'd2}};

parameter bit [2:0] SpriteTableG_7_5[7:0][7:0] = '{'{3'd3,3'd1,3'd3,3'd1,3'd0,3'd0,3'd1,3'd2},
'{3'd1,3'd2,3'd2,3'd0,3'd0,3'd1,3'd0,3'd0},
'{3'd2,3'd3,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd3,3'd2,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd2,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd2,3'd2,3'd3,3'd3,3'd2,3'd1,3'd1,3'd1},
'{3'd3,3'd3,3'd3,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_7_6[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd0,3'd0},
'{3'd2,3'd0,3'd0,3'd1,3'd1,3'd1,3'd0,3'd0},
'{3'd3,3'd0,3'd0,3'd2,3'd1,3'd1,3'd0,3'd0},
'{3'd3,3'd2,3'd0,3'd1,3'd1,3'd1,3'd0,3'd1},
'{3'd3,3'd3,3'd0,3'd1,3'd1,3'd0,3'd0,3'd2},
'{3'd1,3'd3,3'd1,3'd0,3'd0,3'd0,3'd0,3'd2},
'{3'd1,3'd3,3'd3,3'd0,3'd0,3'd0,3'd0,3'd2},
'{3'd2,3'd2,3'd3,3'd1,3'd0,3'd0,3'd0,3'd2}};

parameter bit [2:0] SpriteTableG_7_7[7:0][7:0] = '{'{3'd2,3'd1,3'd3,3'd2,3'd0,3'd0,3'd0,3'd2},
'{3'd3,3'd1,3'd2,3'd3,3'd0,3'd0,3'd1,3'd2},
'{3'd3,3'd2,3'd1,3'd3,3'd2,3'd0,3'd2,3'd2},
'{3'd3,3'd3,3'd1,3'd2,3'd3,3'd0,3'd2,3'd2},
'{3'd3,3'd3,3'd2,3'd1,3'd3,3'd2,3'd3,3'd1},
'{3'd3,3'd3,3'd3,3'd1,3'd2,3'd4,3'd3,3'd1},
'{3'd3,3'd3,3'd3,3'd1,3'd1,3'd4,3'd3,3'd1},
'{3'd3,3'd2,3'd2,3'd2,3'd3,3'd4,3'd2,3'd1}};

parameter bit [2:0] SpriteTableG_7_8[7:0][7:0] = '{'{3'd1,3'd1,3'd3,3'd4,3'd3,3'd3,3'd2,3'd1},
'{3'd3,3'd4,3'd3,3'd1,3'd0,3'd2,3'd2,3'd1},
'{3'd2,3'd1,3'd0,3'd0,3'd0,3'd2,3'd1,3'd2},
'{3'd0,3'd0,3'd1,3'd1,3'd0,3'd2,3'd1,3'd2},
'{3'd1,3'd1,3'd1,3'd1,3'd0,3'd3,3'd1,3'd2},
'{3'd1,3'd0,3'd1,3'd1,3'd0,3'd3,3'd3,3'd1},
'{3'd0,3'd0,3'd1,3'd1,3'd0,3'd2,3'd4,3'd2},
'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd0,3'd3,3'd4}};

parameter bit [2:0] SpriteTableG_7_9[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd0,3'd0,3'd2},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_7_10[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_7_11[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_7_12[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_7_13[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_8_0[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_8_1[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd1},
'{3'd1,3'd0,3'd0,3'd0,3'd1,3'd2,3'd2,3'd2},
'{3'd0,3'd0,3'd1,3'd2,3'd3,3'd2,3'd2,3'd3}};

parameter bit [2:0] SpriteTableG_8_2[7:0][7:0] = '{'{3'd1,3'd2,3'd3,3'd3,3'd2,3'd3,3'd5,3'd6},
'{3'd2,3'd2,3'd3,3'd4,3'd5,3'd6,3'd6,3'd5},
'{3'd3,3'd4,3'd5,3'd6,3'd6,3'd5,3'd4,3'd2},
'{3'd5,3'd6,3'd6,3'd5,3'd3,3'd2,3'd2,3'd2},
'{3'd6,3'd5,3'd3,3'd2,3'd1,3'd2,3'd3,3'd2},
'{3'd4,3'd2,3'd1,3'd2,3'd2,3'd2,3'd1,3'd0},
'{3'd2,3'd2,3'd2,3'd1,3'd0,3'd0,3'd0,3'd1},
'{3'd3,3'd2,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_8_3[7:0][7:0] = '{'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd0,3'd0,3'd1,3'd2,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_8_4[7:0][7:0] = '{'{3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd1,3'd2,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_8_5[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd1,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd3,3'd4,3'd5},
'{3'd2,3'd3,3'd3,3'd4,3'd5,3'd6,3'd6,3'd6},
'{3'd1,3'd2,3'd3,3'd3,3'd3,3'd3,3'd5,3'd6},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd1,3'd3,3'd6},
'{3'd0,3'd0,3'd0,3'd0,3'd2,3'd2,3'd2,3'd5}};

parameter bit [2:0] SpriteTableG_8_6[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd1,3'd2,3'd2,3'd2,3'd6},
'{3'd0,3'd1,3'd2,3'd2,3'd2,3'd2,3'd5,3'd6},
'{3'd2,3'd2,3'd2,3'd2,3'd4,3'd5,3'd6,3'd6},
'{3'd3,3'd2,3'd3,3'd5,3'd6,3'd6,3'd6,3'd6},
'{3'd2,3'd1,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd1,3'd1,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd1,3'd2,3'd3,3'd3,3'd3,3'd3,3'd3,3'd2},
'{3'd1,3'd2,3'd3,3'd3,3'd3,3'd3,3'd3,3'd2}};

parameter bit [2:0] SpriteTableG_8_7[7:0][7:0] = '{'{3'd1,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd2},
'{3'd1,3'd3,3'd3,3'd4,3'd4,3'd3,3'd2,3'd2},
'{3'd1,3'd3,3'd3,3'd4,3'd4,3'd3,3'd2,3'd2},
'{3'd2,3'd3,3'd3,3'd4,3'd4,3'd3,3'd2,3'd2},
'{3'd2,3'd3,3'd4,3'd4,3'd4,3'd3,3'd2,3'd2},
'{3'd2,3'd3,3'd4,3'd4,3'd4,3'd4,3'd3,3'd1},
'{3'd2,3'd3,3'd4,3'd4,3'd4,3'd4,3'd3,3'd2},
'{3'd3,3'd3,3'd4,3'd4,3'd4,3'd4,3'd4,3'd4}};

parameter bit [2:0] SpriteTableG_8_8[7:0][7:0] = '{'{3'd3,3'd3,3'd4,3'd4,3'd4,3'd4,3'd4,3'd4},
'{3'd3,3'd3,3'd4,3'd4,3'd4,3'd4,3'd4,3'd3},
'{3'd3,3'd3,3'd3,3'd4,3'd3,3'd3,3'd3,3'd3},
'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd2,3'd2,3'd4},
'{3'd3,3'd3,3'd3,3'd3,3'd4,3'd4,3'd3,3'd2}};

parameter bit [2:0] SpriteTableG_8_9[7:0][7:0] = '{'{3'd2,3'd3,3'd3,3'd2,3'd2,3'd1,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_8_10[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_8_11[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_8_12[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_8_13[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_9_0[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_9_1[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd1,3'd2,3'd2,3'd2,3'd2},
'{3'd0,3'd1,3'd2,3'd3,3'd2,3'd2,3'd2,3'd3},
'{3'd2,3'd3,3'd3,3'd2,3'd2,3'd4,3'd5,3'd5},
'{3'd2,3'd3,3'd4,3'd5,3'd5,3'd6,3'd6,3'd5},
'{3'd5,3'd5,3'd6,3'd6,3'd5,3'd4,3'd3,3'd2}};

parameter bit [2:0] SpriteTableG_9_2[7:0][7:0] = '{'{3'd6,3'd5,3'd4,3'd3,3'd3,3'd2,3'd2,3'd2},
'{3'd4,3'd2,3'd1,3'd2,3'd2,3'd3,3'd2,3'd1},
'{3'd1,3'd1,3'd2,3'd3,3'd2,3'd1,3'd0,3'd0},
'{3'd2,3'd2,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1},
'{3'd0,3'd1,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd2,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd2,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_9_3[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd2,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd2,3'd1,3'd1,3'd1,3'd2,3'd2,3'd2},
'{3'd1,3'd2,3'd1,3'd1,3'd1,3'd3,3'd5,3'd6}};

parameter bit [2:0] SpriteTableG_9_4[7:0][7:0] = '{'{3'd1,3'd2,3'd1,3'd1,3'd2,3'd3,3'd6,3'd7},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd2,3'd4,3'd5},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd2},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd2},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd2},
'{3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd2,3'd3,3'd3}};

parameter bit [2:0] SpriteTableG_9_5[7:0][7:0] = '{'{3'd1,3'd1,3'd2,3'd2,3'd2,3'd2,3'd1,3'd1},
'{3'd2,3'd2,3'd3,3'd3,3'd3,3'd3,3'd4,3'd4},
'{3'd3,3'd4,3'd5,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6}};

parameter bit [2:0] SpriteTableG_9_6[7:0][7:0] = '{'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd5,3'd5,3'd6},
'{3'd6,3'd6,3'd6,3'd5,3'd3,3'd1,3'd3,3'd6},
'{3'd3,3'd3,3'd3,3'd2,3'd2,3'd1,3'd1,3'd3},
'{3'd1,3'd1,3'd2,3'd3,3'd3,3'd2,3'd1,3'd2},
'{3'd1,3'd2,3'd2,3'd1,3'd1,3'd1,3'd2,3'd3},
'{3'd2,3'd2,3'd0,3'd0,3'd1,3'd1,3'd2,3'd3}};

parameter bit [2:0] SpriteTableG_9_7[7:0][7:0] = '{'{3'd2,3'd0,3'd0,3'd0,3'd1,3'd1,3'd2,3'd3},
'{3'd2,3'd0,3'd1,3'd0,3'd1,3'd1,3'd3,3'd3},
'{3'd2,3'd0,3'd0,3'd0,3'd1,3'd1,3'd3,3'd4},
'{3'd2,3'd0,3'd0,3'd2,3'd2,3'd2,3'd3,3'd4},
'{3'd3,3'd2,3'd3,3'd2,3'd2,3'd2,3'd3,3'd4},
'{3'd2,3'd2,3'd2,3'd2,3'd3,3'd3,3'd4,3'd4},
'{3'd2,3'd2,3'd3,3'd3,3'd3,3'd3,3'd4,3'd4},
'{3'd3,3'd3,3'd4,3'd3,3'd3,3'd3,3'd3,3'd3}};

parameter bit [2:0] SpriteTableG_9_8[7:0][7:0] = '{'{3'd4,3'd4,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd2,3'd1},
'{3'd3,3'd3,3'd3,3'd3,3'd2,3'd2,3'd2,3'd1},
'{3'd3,3'd3,3'd2,3'd1,3'd2,3'd4,3'd4,3'd1},
'{3'd2,3'd2,3'd1,3'd2,3'd4,3'd2,3'd2,3'd2},
'{3'd2,3'd3,3'd3,3'd2,3'd1,3'd0,3'd1,3'd2},
'{3'd4,3'd2,3'd1,3'd0,3'd0,3'd0,3'd1,3'd3},
'{3'd1,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd4}};

parameter bit [2:0] SpriteTableG_9_9[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd0,3'd1,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_9_10[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_9_11[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_9_12[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_9_13[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_10_0[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1},
'{3'd0,3'd0,3'd1,3'd0,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_10_1[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd2,3'd2,3'd2},
'{3'd0,3'd1,3'd2,3'd3,3'd3,3'd2,3'd2,3'd2},
'{3'd2,3'd3,3'd3,3'd2,3'd2,3'd3,3'd4,3'd5},
'{3'd2,3'd3,3'd4,3'd4,3'd5,3'd5,3'd6,3'd6},
'{3'd5,3'd5,3'd6,3'd6,3'd5,3'd5,3'd4,3'd3},
'{3'd5,3'd5,3'd4,3'd4,3'd3,3'd2,3'd2,3'd1},
'{3'd3,3'd2,3'd1,3'd2,3'd2,3'd3,3'd2,3'd2},
'{3'd1,3'd2,3'd2,3'd3,3'd2,3'd1,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_10_2[7:0][7:0] = '{'{3'd2,3'd2,3'd2,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd2,3'd1,3'd1,3'd1,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_10_3[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0},
'{3'd1,3'd2,3'd1,3'd1,3'd1,3'd1,3'd0,3'd2},
'{3'd1,3'd1,3'd1,3'd2,3'd2,3'd2,3'd1,3'd2},
'{3'd2,3'd2,3'd1,3'd2,3'd1,3'd1,3'd1,3'd1},
'{3'd2,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd2,3'd1,3'd1},
'{3'd3,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_10_4[7:0][7:0] = '{'{3'd4,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd2,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd0,3'd1,3'd1,3'd2,3'd2,3'd2,3'd2},
'{3'd0,3'd0,3'd0,3'd1,3'd2,3'd2,3'd2,3'd2},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1},
'{3'd3,3'd3,3'd2,3'd1,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_10_5[7:0][7:0] = '{'{3'd1,3'd2,3'd2,3'd3,3'd2,3'd0,3'd0,3'd0},
'{3'd4,3'd3,3'd3,3'd2,3'd2,3'd3,3'd1,3'd0},
'{3'd6,3'd6,3'd6,3'd4,3'd2,3'd2,3'd3,3'd0},
'{3'd6,3'd6,3'd6,3'd6,3'd4,3'd1,3'd3,3'd2},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd3,3'd2,3'd3},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd4,3'd2,3'd3},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd4,3'd2,3'd3},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd4,3'd2,3'd3}};

parameter bit [2:0] SpriteTableG_10_6[7:0][7:0] = '{'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd4,3'd1,3'd3},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd4,3'd2,3'd3},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd3,3'd2,3'd3},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd3,3'd2,3'd2},
'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd2,3'd2,3'd3},
'{3'd2,3'd3,3'd3,3'd2,3'd2,3'd1,3'd2,3'd2},
'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd1,3'd2,3'd2},
'{3'd3,3'd4,3'd4,3'd3,3'd3,3'd1,3'd2,3'd2}};

parameter bit [2:0] SpriteTableG_10_7[7:0][7:0] = '{'{3'd4,3'd4,3'd4,3'd3,3'd3,3'd1,3'd2,3'd3},
'{3'd4,3'd4,3'd4,3'd3,3'd3,3'd1,3'd2,3'd2},
'{3'd4,3'd4,3'd4,3'd3,3'd3,3'd1,3'd2,3'd2},
'{3'd4,3'd4,3'd4,3'd3,3'd3,3'd1,3'd2,3'd3},
'{3'd4,3'd4,3'd4,3'd4,3'd3,3'd1,3'd2,3'd4},
'{3'd4,3'd4,3'd4,3'd3,3'd3,3'd2,3'd1,3'd1},
'{3'd4,3'd4,3'd4,3'd3,3'd3,3'd3,3'd2,3'd2},
'{3'd4,3'd4,3'd4,3'd4,3'd3,3'd3,3'd3,3'd2}};

parameter bit [2:0] SpriteTableG_10_8[7:0][7:0] = '{'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd2,3'd1},
'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd2,3'd2,3'd3},
'{3'd2,3'd3,3'd3,3'd3,3'd2,3'd2,3'd4,3'd3},
'{3'd2,3'd3,3'd3,3'd2,3'd2,3'd4,3'd3,3'd0},
'{3'd1,3'd2,3'd2,3'd2,3'd4,3'd3,3'd1,3'd0},
'{3'd1,3'd1,3'd3,3'd4,3'd2,3'd0,3'd1,3'd1},
'{3'd2,3'd3,3'd5,3'd2,3'd0,3'd1,3'd1,3'd0},
'{3'd5,3'd4,3'd2,3'd0,3'd1,3'd1,3'd1,3'd0}};

parameter bit [2:0] SpriteTableG_10_9[7:0][7:0] = '{'{3'd2,3'd1,3'd0,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_10_10[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_10_11[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_10_12[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_10_13[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_11_0[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd0,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd0},
'{3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd2,3'd3,3'd3},
'{3'd1,3'd2,3'd2,3'd3,3'd3,3'd2,3'd2,3'd2}};

parameter bit [2:0] SpriteTableG_11_1[7:0][7:0] = '{'{3'd2,3'd2,3'd3,3'd3,3'd3,3'd3,3'd3,3'd4},
'{3'd2,3'd3,3'd4,3'd5,3'd6,3'd6,3'd6,3'd5},
'{3'd5,3'd6,3'd6,3'd5,3'd5,3'd5,3'd4,3'd3},
'{3'd5,3'd4,3'd3,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd2,3'd1,3'd1,3'd2,3'd2,3'd3,3'd3,3'd2},
'{3'd2,3'd2,3'd3,3'd3,3'd2,3'd1,3'd0,3'd0},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd1,3'd1,3'd1,3'd0,3'd1,3'd0}};

parameter bit [2:0] SpriteTableG_11_2[7:0][7:0] = '{'{3'd1,3'd1,3'd2,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd1,3'd0},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd2},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd2,3'd2,3'd2,3'd2,3'd1,3'd2},
'{3'd0,3'd0,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2}};

parameter bit [2:0] SpriteTableG_11_3[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd2,3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0},
'{3'd1,3'd2,3'd2,3'd1,3'd1,3'd1,3'd1,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd2,3'd1,3'd0},
'{3'd1,3'd1,3'd2,3'd1,3'd1,3'd2,3'd1,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd0}};

parameter bit [2:0] SpriteTableG_11_4[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd0},
'{3'd1,3'd1,3'd2,3'd2,3'd2,3'd2,3'd1,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd2,3'd1,3'd0},
'{3'd2,3'd2,3'd2,3'd1,3'd1,3'd1,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd2,3'd2,3'd1,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd2,3'd2,3'd1,3'd0}};

parameter bit [2:0] SpriteTableG_11_5[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0},
'{3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0},
'{3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0},
'{3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0},
'{3'd0,3'd0,3'd1,3'd1,3'd2,3'd1,3'd0,3'd0},
'{3'd0,3'd0,3'd2,3'd1,3'd2,3'd1,3'd0,3'd0},
'{3'd0,3'd0,3'd1,3'd1,3'd2,3'd1,3'd0,3'd0},
'{3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_11_6[7:0][7:0] = '{'{3'd0,3'd1,3'd1,3'd1,3'd2,3'd1,3'd0,3'd0},
'{3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0},
'{3'd0,3'd1,3'd2,3'd1,3'd2,3'd1,3'd0,3'd0},
'{3'd0,3'd1,3'd3,3'd2,3'd2,3'd1,3'd0,3'd0},
'{3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0},
'{3'd0,3'd2,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0},
'{3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0},
'{3'd0,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_11_7[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd2},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd3,3'd4},
'{3'd0,3'd0,3'd1,3'd3,3'd3,3'd3,3'd3,3'd4},
'{3'd2,3'd3,3'd4,3'd3,3'd2,3'd1,3'd3,3'd4},
'{3'd3,3'd3,3'd2,3'd1,3'd1,3'd3,3'd2,3'd2},
'{3'd1,3'd1,3'd1,3'd2,3'd3,3'd2,3'd0,3'd1},
'{3'd2,3'd1,3'd2,3'd3,3'd2,3'd0,3'd0,3'd1},
'{3'd2,3'd2,3'd3,3'd2,3'd0,3'd0,3'd0,3'd1}};

parameter bit [2:0] SpriteTableG_11_8[7:0][7:0] = '{'{3'd3,3'd4,3'd1,3'd0,3'd1,3'd1,3'd0,3'd1},
'{3'd4,3'd1,3'd0,3'd1,3'd1,3'd1,3'd0,3'd2},
'{3'd1,3'd0,3'd1,3'd1,3'd1,3'd1,3'd0,3'd2},
'{3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd2},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd2},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd3},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd3},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd2}};

parameter bit [2:0] SpriteTableG_11_9[7:0][7:0] = '{'{3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd0},
'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_11_10[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_11_11[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_11_12[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_11_13[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_12_0[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd2,3'd2},
'{3'd1,3'd2,3'd3,3'd3,3'd3,3'd3,3'd2,3'd2},
'{3'd3,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd3},
'{3'd2,3'd2,3'd3,3'd4,3'd4,3'd5,3'd5,3'd5}};

parameter bit [2:0] SpriteTableG_12_1[7:0][7:0] = '{'{3'd5,3'd5,3'd6,3'd6,3'd5,3'd5,3'd4,3'd4},
'{3'd5,3'd5,3'd4,3'd3,3'd2,3'd2,3'd1,3'd1},
'{3'd2,3'd2,3'd1,3'd1,3'd2,3'd2,3'd2,3'd3},
'{3'd3,3'd2,3'd2,3'd2,3'd2,3'd1,3'd1,3'd1},
'{3'd2,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd0,3'd0},
'{3'd1,3'd2,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_12_2[7:0][7:0] = '{'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd2,3'd2,3'd1},
'{3'd0,3'd0,3'd1,3'd2,3'd2,3'd1,3'd2,3'd4},
'{3'd1,3'd1,3'd2,3'd3,3'd3,3'd4,3'd5,3'd5},
'{3'd1,3'd2,3'd4,3'd5,3'd6,3'd6,3'd6,3'd5},
'{3'd3,3'd5,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd2,3'd3,3'd5,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd2,3'd1,3'd3,3'd6,3'd6,3'd6,3'd6,3'd6}};

parameter bit [2:0] SpriteTableG_12_3[7:0][7:0] = '{'{3'd1,3'd1,3'd3,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd0,3'd1,3'd3,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd0,3'd1,3'd3,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd0,3'd2,3'd3,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd0,3'd2,3'd3,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd0,3'd1,3'd3,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd1,3'd1,3'd3,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd0,3'd1,3'd4,3'd6,3'd6,3'd6,3'd6,3'd6}};

parameter bit [2:0] SpriteTableG_12_4[7:0][7:0] = '{'{3'd1,3'd2,3'd4,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd1,3'd2,3'd4,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd1,3'd2,3'd4,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd1,3'd2,3'd5,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd1,3'd2,3'd5,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd1,3'd2,3'd5,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd1,3'd2,3'd5,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd1,3'd2,3'd5,3'd6,3'd6,3'd6,3'd6,3'd6}};

parameter bit [2:0] SpriteTableG_12_5[7:0][7:0] = '{'{3'd1,3'd2,3'd5,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd1,3'd2,3'd5,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd1,3'd2,3'd5,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd2,3'd2,3'd5,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd2,3'd2,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd2,3'd3,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd2,3'd3,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd2,3'd2,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6}};

parameter bit [2:0] SpriteTableG_12_6[7:0][7:0] = '{'{3'd1,3'd2,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd1,3'd3,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd1,3'd3,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd1,3'd2,3'd5,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd1,3'd1,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd1,3'd1,3'd2,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd1,3'd1,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd1,3'd1,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3}};

parameter bit [2:0] SpriteTableG_12_7[7:0][7:0] = '{'{3'd2,3'd2,3'd3,3'd3,3'd4,3'd4,3'd4,3'd3},
'{3'd2,3'd2,3'd3,3'd4,3'd4,3'd4,3'd4,3'd3},
'{3'd2,3'd1,3'd3,3'd3,3'd4,3'd4,3'd4,3'd3},
'{3'd2,3'd2,3'd3,3'd3,3'd4,3'd4,3'd4,3'd3},
'{3'd1,3'd2,3'd3,3'd3,3'd4,3'd4,3'd4,3'd3},
'{3'd1,3'd2,3'd3,3'd3,3'd4,3'd4,3'd4,3'd3},
'{3'd1,3'd2,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd1,3'd2,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3}};

parameter bit [2:0] SpriteTableG_12_8[7:0][7:0] = '{'{3'd1,3'd2,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd1,3'd2,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd1,3'd2,3'd3,3'd3,3'd3,3'd3,3'd3,3'd2},
'{3'd2,3'd2,3'd3,3'd3,3'd3,3'd3,3'd2,3'd1},
'{3'd2,3'd2,3'd3,3'd3,3'd3,3'd2,3'd1,3'd3},
'{3'd2,3'd2,3'd2,3'd2,3'd1,3'd2,3'd4,3'd4},
'{3'd2,3'd1,3'd1,3'd1,3'd3,3'd5,3'd4,3'd1},
'{3'd3,3'd1,3'd2,3'd4,3'd5,3'd3,3'd1,3'd0}};

parameter bit [2:0] SpriteTableG_12_9[7:0][7:0] = '{'{3'd3,3'd4,3'd5,3'd4,3'd2,3'd0,3'd1,3'd1},
'{3'd1,3'd2,3'd2,3'd1,3'd0,3'd1,3'd1,3'd0},
'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_12_10[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_12_11[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_12_12[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_12_13[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_13_0[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd1,3'd1,3'd2,3'd2,3'd2,3'd2},
'{3'd3,3'd3,3'd3,3'd3,3'd2,3'd2,3'd2,3'd2},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd3,3'd3,3'd3},
'{3'd3,3'd4,3'd4,3'd5,3'd5,3'd5,3'd5,3'd5},
'{3'd5,3'd6,3'd5,3'd6,3'd5,3'd5,3'd5,3'd4}};

parameter bit [2:0] SpriteTableG_13_1[7:0][7:0] = '{'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd2,3'd2,3'd2},
'{3'd1,3'd1,3'd2,3'd2,3'd2,3'd3,3'd3,3'd2},
'{3'd3,3'd3,3'd2,3'd2,3'd1,3'd1,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_13_2[7:0][7:0] = '{'{3'd1,3'd2,3'd2,3'd2,3'd0,3'd0,3'd0,3'd1},
'{3'd2,3'd2,3'd1,3'd3,3'd0,3'd0,3'd0,3'd1},
'{3'd5,3'd4,3'd1,3'd2,3'd0,3'd0,3'd1,3'd2},
'{3'd6,3'd5,3'd2,3'd2,3'd0,3'd0,3'd1,3'd1},
'{3'd5,3'd5,3'd2,3'd2,3'd1,3'd1,3'd2,3'd1},
'{3'd6,3'd5,3'd2,3'd2,3'd0,3'd0,3'd1,3'd0},
'{3'd6,3'd5,3'd2,3'd2,3'd0,3'd0,3'd0,3'd1},
'{3'd6,3'd5,3'd2,3'd2,3'd1,3'd0,3'd0,3'd1}};

parameter bit [2:0] SpriteTableG_13_3[7:0][7:0] = '{'{3'd6,3'd5,3'd2,3'd2,3'd1,3'd0,3'd0,3'd1},
'{3'd6,3'd5,3'd2,3'd3,3'd1,3'd0,3'd1,3'd1},
'{3'd6,3'd5,3'd2,3'd3,3'd1,3'd1,3'd2,3'd1},
'{3'd6,3'd5,3'd2,3'd2,3'd1,3'd1,3'd2,3'd1},
'{3'd6,3'd5,3'd2,3'd2,3'd0,3'd1,3'd2,3'd1},
'{3'd6,3'd5,3'd2,3'd2,3'd1,3'd1,3'd1,3'd1},
'{3'd6,3'd5,3'd2,3'd2,3'd1,3'd0,3'd1,3'd1},
'{3'd6,3'd5,3'd2,3'd3,3'd1,3'd0,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_13_4[7:0][7:0] = '{'{3'd6,3'd5,3'd2,3'd3,3'd1,3'd0,3'd1,3'd1},
'{3'd6,3'd5,3'd2,3'd3,3'd1,3'd0,3'd1,3'd1},
'{3'd6,3'd5,3'd2,3'd3,3'd0,3'd0,3'd2,3'd2},
'{3'd6,3'd5,3'd2,3'd3,3'd0,3'd0,3'd1,3'd1},
'{3'd6,3'd5,3'd2,3'd3,3'd1,3'd0,3'd1,3'd1},
'{3'd6,3'd5,3'd2,3'd3,3'd1,3'd0,3'd1,3'd1},
'{3'd6,3'd5,3'd2,3'd3,3'd0,3'd0,3'd2,3'd2},
'{3'd6,3'd5,3'd2,3'd3,3'd0,3'd0,3'd1,3'd2}};

parameter bit [2:0] SpriteTableG_13_5[7:0][7:0] = '{'{3'd6,3'd5,3'd2,3'd3,3'd0,3'd1,3'd3,3'd2},
'{3'd6,3'd5,3'd2,3'd3,3'd0,3'd0,3'd1,3'd1},
'{3'd6,3'd5,3'd2,3'd3,3'd0,3'd0,3'd0,3'd0},
'{3'd6,3'd5,3'd2,3'd3,3'd1,3'd0,3'd0,3'd0},
'{3'd6,3'd5,3'd2,3'd3,3'd3,3'd3,3'd2,3'd2},
'{3'd6,3'd5,3'd2,3'd4,3'd4,3'd4,3'd3,3'd2},
'{3'd6,3'd5,3'd2,3'd3,3'd2,3'd2,3'd2,3'd2},
'{3'd6,3'd5,3'd2,3'd3,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_13_6[7:0][7:0] = '{'{3'd6,3'd5,3'd2,3'd3,3'd0,3'd1,3'd1,3'd1},
'{3'd6,3'd5,3'd2,3'd3,3'd1,3'd1,3'd1,3'd1},
'{3'd6,3'd5,3'd2,3'd3,3'd0,3'd1,3'd1,3'd1},
'{3'd6,3'd4,3'd2,3'd3,3'd0,3'd1,3'd1,3'd1},
'{3'd3,3'd2,3'd1,3'd3,3'd0,3'd1,3'd1,3'd1},
'{3'd3,3'd2,3'd1,3'd3,3'd1,3'd1,3'd1,3'd1},
'{3'd3,3'd2,3'd1,3'd3,3'd0,3'd1,3'd1,3'd1},
'{3'd3,3'd2,3'd1,3'd3,3'd0,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_13_7[7:0][7:0] = '{'{3'd3,3'd2,3'd1,3'd3,3'd0,3'd1,3'd1,3'd1},
'{3'd3,3'd2,3'd1,3'd3,3'd0,3'd1,3'd1,3'd1},
'{3'd3,3'd2,3'd1,3'd3,3'd0,3'd1,3'd1,3'd1},
'{3'd3,3'd2,3'd1,3'd3,3'd0,3'd1,3'd1,3'd1},
'{3'd3,3'd2,3'd1,3'd3,3'd0,3'd1,3'd1,3'd1},
'{3'd3,3'd2,3'd2,3'd3,3'd0,3'd1,3'd1,3'd1},
'{3'd3,3'd2,3'd1,3'd3,3'd0,3'd1,3'd1,3'd0},
'{3'd3,3'd2,3'd1,3'd3,3'd0,3'd1,3'd1,3'd0}};

parameter bit [2:0] SpriteTableG_13_8[7:0][7:0] = '{'{3'd3,3'd1,3'd2,3'd3,3'd0,3'd1,3'd1,3'd0},
'{3'd2,3'd1,3'd3,3'd3,3'd0,3'd1,3'd1,3'd1},
'{3'd1,3'd3,3'd4,3'd2,3'd0,3'd1,3'd0,3'd1},
'{3'd3,3'd5,3'd3,3'd0,3'd1,3'd1,3'd0,3'd2},
'{3'd5,3'd3,3'd0,3'd0,3'd1,3'd1,3'd0,3'd2},
'{3'd2,3'd0,3'd1,3'd1,3'd1,3'd1,3'd0,3'd1},
'{3'd0,3'd1,3'd1,3'd1,3'd0,3'd1,3'd1,3'd0},
'{3'd1,3'd1,3'd1,3'd0,3'd0,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_13_9[7:0][7:0] = '{'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_13_10[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_13_11[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_13_12[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_13_13[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_14_0[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd2,3'd2},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd4,3'd4,3'd4,3'd4,3'd5,3'd5,3'd5,3'd5},
'{3'd5,3'd6,3'd5,3'd5,3'd5,3'd5,3'd5,3'd5},
'{3'd4,3'd4,3'd3,3'd3,3'd3,3'd2,3'd2,3'd2}};

parameter bit [2:0] SpriteTableG_14_1[7:0][7:0] = '{'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd2,3'd2,3'd2,3'd2,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd2},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_14_2[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd2,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd2,3'd2,3'd2,3'd2,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd2,3'd3,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_14_3[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd2,3'd2,3'd2},
'{3'd2,3'd1,3'd1,3'd2,3'd2,3'd1,3'd1,3'd1},
'{3'd2,3'd1,3'd1,3'd2,3'd1,3'd1,3'd2,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd3,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_14_4[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd2,3'd2,3'd2,3'd1,3'd1,3'd3,3'd1,3'd1},
'{3'd2,3'd2,3'd2,3'd2,3'd1,3'd1,3'd1,3'd1},
'{3'd2,3'd2,3'd2,3'd2,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd2,3'd2,3'd2,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_14_5[7:0][7:0] = '{'{3'd1,3'd1,3'd2,3'd2,3'd1,3'd0,3'd0,3'd0},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd2},
'{3'd0,3'd0,3'd0,3'd1,3'd2,3'd2,3'd2,3'd2},
'{3'd1,3'd2,3'd2,3'd2,3'd2,3'd1,3'd2,3'd3},
'{3'd2,3'd1,3'd1,3'd2,3'd3,3'd3,3'd4,3'd5},
'{3'd1,3'd1,3'd1,3'd1,3'd2,3'd2,3'd2,3'd2},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1}};

parameter bit [2:0] SpriteTableG_14_6[7:0][7:0] = '{'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd1,3'd2},
'{3'd1,3'd1,3'd1,3'd0,3'd0,3'd2,3'd2,3'd2},
'{3'd1,3'd1,3'd0,3'd1,3'd2,3'd2,3'd1,3'd2},
'{3'd1,3'd0,3'd0,3'd2,3'd1,3'd2,3'd4,3'd5},
'{3'd1,3'd0,3'd1,3'd1,3'd1,3'd2,3'd2,3'd2},
'{3'd1,3'd0,3'd2,3'd1,3'd2,3'd3,3'd3,3'd3},
'{3'd1,3'd0,3'd2,3'd1,3'd2,3'd3,3'd3,3'd3},
'{3'd1,3'd0,3'd2,3'd1,3'd3,3'd3,3'd3,3'd3}};

parameter bit [2:0] SpriteTableG_14_7[7:0][7:0] = '{'{3'd0,3'd1,3'd2,3'd1,3'd3,3'd3,3'd3,3'd3},
'{3'd0,3'd1,3'd2,3'd2,3'd3,3'd3,3'd3,3'd3},
'{3'd0,3'd2,3'd1,3'd2,3'd3,3'd3,3'd3,3'd3},
'{3'd1,3'd2,3'd1,3'd3,3'd3,3'd3,3'd4,3'd3},
'{3'd1,3'd2,3'd1,3'd3,3'd3,3'd3,3'd4,3'd4},
'{3'd1,3'd1,3'd2,3'd3,3'd3,3'd4,3'd4,3'd4},
'{3'd2,3'd1,3'd2,3'd3,3'd3,3'd4,3'd4,3'd4},
'{3'd2,3'd1,3'd2,3'd3,3'd3,3'd4,3'd4,3'd4}};

parameter bit [2:0] SpriteTableG_14_8[7:0][7:0] = '{'{3'd2,3'd1,3'd3,3'd3,3'd4,3'd4,3'd4,3'd4},
'{3'd2,3'd2,3'd3,3'd3,3'd3,3'd3,3'd4,3'd4},
'{3'd2,3'd2,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd2,3'd2,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd2,3'd2,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd3,3'd1,3'd2,3'd2,3'd2,3'd2,3'd1,3'd1},
'{3'd3,3'd3,3'd1,3'd1,3'd2,3'd2,3'd3,3'd3},
'{3'd1,3'd3,3'd4,3'd4,3'd4,3'd4,3'd3,3'd2}};

parameter bit [2:0] SpriteTableG_14_9[7:0][7:0] = '{'{3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd0,3'd1,3'd1,3'd1},
'{3'd0,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_14_10[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_14_11[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_14_12[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_14_13[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_15_0[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd5,3'd5,3'd5,3'd5,3'd5,3'd5,3'd5,3'd5},
'{3'd5,3'd5,3'd5,3'd5,3'd5,3'd5,3'd4,3'd4},
'{3'd2,3'd2,3'd2,3'd2,3'd1,3'd2,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_15_1[7:0][7:0] = '{'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd2,3'd2,3'd1,3'd2,3'd2},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_15_2[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd2,3'd2,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd2,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_15_3[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd2,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd2,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd2,3'd2,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd2,3'd2,3'd1,3'd1,3'd1,3'd2,3'd2},
'{3'd2,3'd2,3'd1,3'd1,3'd1,3'd1,3'd2,3'd1},
'{3'd2,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_15_4[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd2,3'd2,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd0,3'd0,3'd1,3'd0,3'd0,3'd1},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd2,3'd3}};

parameter bit [2:0] SpriteTableG_15_5[7:0][7:0] = '{'{3'd0,3'd0,3'd1,3'd2,3'd2,3'd3,3'd2,3'd2},
'{3'd2,3'd2,3'd2,3'd3,3'd3,3'd3,3'd3,3'd4},
'{3'd2,3'd2,3'd3,3'd4,3'd5,3'd6,3'd6,3'd6},
'{3'd4,3'd5,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd3,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd1,3'd3,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd2,3'd2,3'd5,3'd6,3'd6,3'd6,3'd6,3'd6}};

parameter bit [2:0] SpriteTableG_15_6[7:0][7:0] = '{'{3'd2,3'd2,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd1,3'd4,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd4,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd4},
'{3'd6,3'd6,3'd5,3'd5,3'd5,3'd4,3'd2,3'd1},
'{3'd2,3'd2,3'd2,3'd1,3'd1,3'd2,3'd2,3'd2},
'{3'd3,3'd3,3'd2,3'd1,3'd2,3'd2,3'd1,3'd1},
'{3'd3,3'd3,3'd1,3'd2,3'd2,3'd0,3'd0,3'd1},
'{3'd3,3'd2,3'd2,3'd2,3'd0,3'd0,3'd0,3'd1}};

parameter bit [2:0] SpriteTableG_15_7[7:0][7:0] = '{'{3'd3,3'd2,3'd2,3'd2,3'd0,3'd1,3'd0,3'd1},
'{3'd3,3'd2,3'd2,3'd2,3'd0,3'd0,3'd0,3'd1},
'{3'd3,3'd2,3'd3,3'd1,3'd0,3'd1,3'd2,3'd1},
'{3'd3,3'd2,3'd3,3'd2,3'd2,3'd3,3'd1,3'd1},
'{3'd3,3'd2,3'd3,3'd3,3'd2,3'd1,3'd1,3'd3},
'{3'd3,3'd2,3'd1,3'd2,3'd2,3'd3,3'd3,3'd3},
'{3'd4,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd4,3'd4,3'd4,3'd4,3'd4,3'd4,3'd3,3'd3}};

parameter bit [2:0] SpriteTableG_15_8[7:0][7:0] = '{'{3'd4,3'd4,3'd4,3'd4,3'd4,3'd3,3'd3,3'd3},
'{3'd4,3'd4,3'd4,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd2,3'd2},
'{3'd3,3'd3,3'd3,3'd2,3'd2,3'd2,3'd3,3'd4},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd3,3'd3,3'd1},
'{3'd2,3'd3,3'd3,3'd3,3'd2,3'd1,3'd0,3'd0},
'{3'd4,3'd3,3'd2,3'd1,3'd0,3'd0,3'd1,3'd1},
'{3'd1,3'd1,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_15_9[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd0,3'd1,3'd1,3'd1},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_15_10[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_15_11[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_15_12[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_15_13[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_16_0[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd2,3'd2,3'd2,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd5,3'd5,3'd5,3'd5,3'd5,3'd4,3'd4,3'd4},
'{3'd4,3'd4,3'd5,3'd5,3'd5,3'd5,3'd5,3'd5},
'{3'd1,3'd1,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2}};

parameter bit [2:0] SpriteTableG_16_1[7:0][7:0] = '{'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1},
'{3'd0,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd0},
'{3'd1,3'd1,3'd2,3'd2,3'd1,3'd1,3'd1,3'd1},
'{3'd2,3'd1,3'd2,3'd1,3'd1,3'd1,3'd2,3'd3},
'{3'd1,3'd1,3'd2,3'd1,3'd1,3'd1,3'd2,3'd4},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd2}};

parameter bit [2:0] SpriteTableG_16_2[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd2,3'd2,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd2,3'd1,3'd1,3'd0,3'd0,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_16_3[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd2,3'd2},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd2,3'd3},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd2,3'd4},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd3},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd2}};

parameter bit [2:0] SpriteTableG_16_4[7:0][7:0] = '{'{3'd2,3'd1,3'd1,3'd2,3'd2,3'd1,3'd1,3'd1},
'{3'd2,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd3,3'd2,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd2,3'd2,3'd3,3'd3,3'd4,3'd4,3'd4,3'd4},
'{3'd2,3'd2,3'd3,3'd4,3'd5,3'd5,3'd6,3'd6},
'{3'd1,3'd1,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd2,3'd2,3'd2,3'd2,3'd1,3'd1,3'd2,3'd3}};

parameter bit [2:0] SpriteTableG_16_5[7:0][7:0] = '{'{3'd2,3'd2,3'd2,3'd1,3'd1,3'd1,3'd2,3'd1},
'{3'd5,3'd6,3'd6,3'd5,3'd5,3'd5,3'd4,3'd1},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd5,3'd3},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd5,3'd3,3'd4},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd4,3'd4,3'd4},
'{3'd6,3'd6,3'd6,3'd6,3'd4,3'd3,3'd3,3'd3},
'{3'd6,3'd6,3'd6,3'd5,3'd2,3'd2,3'd3,3'd5},
'{3'd6,3'd6,3'd6,3'd2,3'd1,3'd4,3'd5,3'd6}};

parameter bit [2:0] SpriteTableG_16_6[7:0][7:0] = '{'{3'd6,3'd6,3'd5,3'd2,3'd4,3'd6,3'd6,3'd6},
'{3'd6,3'd6,3'd6,3'd5,3'd6,3'd6,3'd6,3'd6},
'{3'd3,3'd5,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd1,3'd4,3'd5,3'd5,3'd5,3'd5,3'd5,3'd4},
'{3'd1,3'd1,3'd2,3'd2,3'd2,3'd2,3'd2,3'd1},
'{3'd1,3'd2,3'd3,3'd3,3'd3,3'd3,3'd3,3'd2},
'{3'd1,3'd3,3'd4,3'd4,3'd4,3'd3,3'd3,3'd2},
'{3'd1,3'd3,3'd3,3'd4,3'd4,3'd3,3'd3,3'd2}};

parameter bit [2:0] SpriteTableG_16_7[7:0][7:0] = '{'{3'd2,3'd3,3'd4,3'd4,3'd4,3'd3,3'd3,3'd2},
'{3'd2,3'd3,3'd4,3'd4,3'd4,3'd4,3'd3,3'd2},
'{3'd2,3'd3,3'd4,3'd4,3'd4,3'd4,3'd3,3'd2},
'{3'd3,3'd4,3'd4,3'd4,3'd4,3'd4,3'd3,3'd2},
'{3'd3,3'd4,3'd4,3'd4,3'd4,3'd4,3'd3,3'd2},
'{3'd4,3'd4,3'd4,3'd4,3'd4,3'd4,3'd3,3'd3},
'{3'd4,3'd4,3'd4,3'd4,3'd4,3'd4,3'd3,3'd3},
'{3'd4,3'd4,3'd4,3'd4,3'd4,3'd3,3'd3,3'd3}};

parameter bit [2:0] SpriteTableG_16_8[7:0][7:0] = '{'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd2,3'd2,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd3,3'd1,3'd2,3'd3,3'd3,3'd3,3'd2,3'd2},
'{3'd4,3'd2,3'd2,3'd3,3'd3,3'd2,3'd1,3'd2},
'{3'd2,3'd2,3'd2,3'd3,3'd2,3'd2,3'd2,3'd3},
'{3'd1,3'd2,3'd1,3'd2,3'd1,3'd3,3'd3,3'd1},
'{3'd1,3'd3,3'd1,3'd1,3'd3,3'd3,3'd0,3'd0},
'{3'd0,3'd3,3'd3,3'd4,3'd3,3'd0,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_16_9[7:0][7:0] = '{'{3'd0,3'd1,3'd3,3'd2,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_16_10[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_16_11[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_16_12[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_16_13[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_17_0[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1},
'{3'd3,3'd3,3'd3,3'd2,3'd2,3'd2,3'd1,3'd1},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd3,3'd3,3'd3},
'{3'd4,3'd3,3'd3,3'd3,3'd2,3'd2,3'd2,3'd2},
'{3'd5,3'd5,3'd5,3'd5,3'd5,3'd5,3'd5,3'd4},
'{3'd3,3'd3,3'd3,3'd4,3'd4,3'd5,3'd5,3'd5}};

parameter bit [2:0] SpriteTableG_17_1[7:0][7:0] = '{'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd3},
'{3'd1,3'd1,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd2,3'd2,3'd1,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd5,3'd4,3'd2,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd7,3'd5,3'd2,3'd2,3'd1,3'd1,3'd1,3'd1},
'{3'd4,3'd4,3'd2,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_17_2[7:0][7:0] = '{'{3'd2,3'd2,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_17_3[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd0,3'd1,3'd1,3'd2,3'd2},
'{3'd3,3'd2,3'd1,3'd0,3'd0,3'd1,3'd1,3'd1},
'{3'd2,3'd1,3'd1,3'd0,3'd0,3'd1,3'd1,3'd1},
'{3'd2,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd5,3'd2,3'd0,3'd1,3'd3,3'd1,3'd1,3'd1},
'{3'd6,3'd4,3'd1,3'd1,3'd4,3'd2,3'd0,3'd2}};

parameter bit [2:0] SpriteTableG_17_4[7:0][7:0] = '{'{3'd4,3'd7,3'd3,3'd1,3'd5,3'd3,3'd2,3'd5},
'{3'd2,3'd6,3'd6,3'd4,3'd6,3'd6,3'd5,3'd7},
'{3'd1,3'd4,3'd7,3'd7,3'd7,3'd7,3'd7,3'd7},
'{3'd1,3'd2,3'd7,3'd7,3'd7,3'd7,3'd7,3'd7},
'{3'd4,3'd5,3'd7,3'd7,3'd7,3'd7,3'd7,3'd7},
'{3'd7,3'd7,3'd7,3'd7,3'd7,3'd7,3'd7,3'd7},
'{3'd5,3'd7,3'd7,3'd7,3'd7,3'd7,3'd7,3'd7},
'{3'd5,3'd7,3'd7,3'd7,3'd7,3'd7,3'd7,3'd5}};

parameter bit [2:0] SpriteTableG_17_5[7:0][7:0] = '{'{3'd2,3'd5,3'd7,3'd7,3'd7,3'd7,3'd7,3'd4},
'{3'd3,3'd6,3'd7,3'd5,3'd6,3'd5,3'd6,3'd5},
'{3'd6,3'd6,3'd3,3'd1,3'd4,3'd2,3'd5,3'd5},
'{3'd6,3'd3,3'd1,3'd1,3'd3,3'd2,3'd2,3'd5},
'{3'd2,3'd2,3'd4,3'd1,3'd2,3'd1,3'd1,3'd3},
'{3'd2,3'd2,3'd4,3'd1,3'd1,3'd1,3'd0,3'd2},
'{3'd3,3'd2,3'd3,3'd0,3'd0,3'd0,3'd1,3'd1},
'{3'd3,3'd2,3'd2,3'd0,3'd0,3'd2,3'd2,3'd1}};

parameter bit [2:0] SpriteTableG_17_6[7:0][7:0] = '{'{3'd3,3'd3,3'd2,3'd0,3'd0,3'd1,3'd1,3'd1},
'{3'd3,3'd3,3'd2,3'd0,3'd0,3'd1,3'd1,3'd1},
'{3'd2,3'd3,3'd2,3'd0,3'd1,3'd1,3'd1,3'd1},
'{3'd2,3'd3,3'd1,3'd0,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd3,3'd1,3'd0,3'd2,3'd2,3'd1,3'd1},
'{3'd1,3'd3,3'd1,3'd0,3'd2,3'd2,3'd1,3'd1},
'{3'd2,3'd3,3'd0,3'd0,3'd1,3'd2,3'd1,3'd1},
'{3'd2,3'd3,3'd0,3'd0,3'd1,3'd1,3'd1,3'd0}};

parameter bit [2:0] SpriteTableG_17_7[7:0][7:0] = '{'{3'd2,3'd3,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd2,3'd3,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd2,3'd3,3'd0,3'd0,3'd0,3'd0,3'd2,3'd2},
'{3'd2,3'd4,3'd1,3'd1,3'd2,3'd3,3'd2,3'd1},
'{3'd1,3'd4,3'd3,3'd3,3'd2,3'd1,3'd0,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd2,3'd2},
'{3'd2,3'd1,3'd1,3'd1,3'd1,3'd2,3'd2,3'd0},
'{3'd3,3'd3,3'd2,3'd1,3'd2,3'd2,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_17_8[7:0][7:0] = '{'{3'd3,3'd2,3'd2,3'd3,3'd2,3'd0,3'd0,3'd0},
'{3'd2,3'd2,3'd3,3'd2,3'd0,3'd0,3'd1,3'd0},
'{3'd2,3'd3,3'd2,3'd0,3'd1,3'd1,3'd1,3'd0},
'{3'd3,3'd1,3'd0,3'd1,3'd1,3'd1,3'd0,3'd1},
'{3'd1,3'd0,3'd1,3'd1,3'd1,3'd0,3'd0,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_17_9[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_17_10[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1}};

parameter bit [2:0] SpriteTableG_17_11[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_17_12[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_17_13[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_18_0[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1},
'{3'd3,3'd3,3'd2,3'd2,3'd1,3'd1,3'd0,3'd0},
'{3'd2,3'd2,3'd2,3'd3,3'd3,3'd3,3'd3,3'd2},
'{3'd4,3'd3,3'd3,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd5,3'd5,3'd5,3'd5,3'd4,3'd4,3'd3,3'd2}};

parameter bit [2:0] SpriteTableG_18_1[7:0][7:0] = '{'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd4,3'd5,3'd5},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd1,3'd2,3'd2},
'{3'd1,3'd1,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd2,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd2,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_18_2[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd2,3'd1,3'd2},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd2}};

parameter bit [2:0] SpriteTableG_18_3[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd2,3'd5},
'{3'd2,3'd1,3'd1,3'd1,3'd1,3'd2,3'd6,3'd7},
'{3'd2,3'd1,3'd1,3'd0,3'd2,3'd6,3'd7,3'd6},
'{3'd1,3'd1,3'd1,3'd2,3'd5,3'd7,3'd7,3'd4},
'{3'd1,3'd1,3'd2,3'd5,3'd7,3'd7,3'd5,3'd1},
'{3'd1,3'd2,3'd5,3'd7,3'd7,3'd6,3'd2,3'd1},
'{3'd2,3'd5,3'd7,3'd7,3'd6,3'd3,3'd1,3'd1},
'{3'd5,3'd7,3'd7,3'd7,3'd3,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_18_4[7:0][7:0] = '{'{3'd7,3'd7,3'd7,3'd4,3'd1,3'd1,3'd1,3'd1},
'{3'd7,3'd7,3'd4,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd7,3'd6,3'd2,3'd1,3'd1,3'd2,3'd2,3'd1},
'{3'd7,3'd6,3'd4,3'd4,3'd5,3'd3,3'd1,3'd1},
'{3'd7,3'd7,3'd5,3'd2,3'd1,3'd1,3'd0,3'd1},
'{3'd7,3'd7,3'd4,3'd2,3'd1,3'd1,3'd1,3'd1},
'{3'd6,3'd5,3'd5,3'd4,3'd4,3'd3,3'd3,3'd2},
'{3'd2,3'd1,3'd1,3'd1,3'd1,3'd2,3'd2,3'd1}};

parameter bit [2:0] SpriteTableG_18_5[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd2,3'd2,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd0},
'{3'd2,3'd2,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd2,3'd1,3'd1,3'd0,3'd0,3'd0,3'd1,3'd2},
'{3'd2,3'd1,3'd0,3'd0,3'd2,3'd2,3'd2,3'd3},
'{3'd2,3'd0,3'd0,3'd0,3'd2,3'd1,3'd3,3'd5},
'{3'd1,3'd0,3'd0,3'd1,3'd2,3'd2,3'd5,3'd6},
'{3'd0,3'd0,3'd0,3'd2,3'd2,3'd4,3'd6,3'd6}};

parameter bit [2:0] SpriteTableG_18_6[7:0][7:0] = '{'{3'd1,3'd0,3'd0,3'd2,3'd2,3'd5,3'd6,3'd6},
'{3'd1,3'd0,3'd1,3'd2,3'd2,3'd5,3'd6,3'd6},
'{3'd1,3'd0,3'd1,3'd2,3'd3,3'd6,3'd6,3'd6},
'{3'd1,3'd0,3'd2,3'd2,3'd2,3'd4,3'd4,3'd4},
'{3'd1,3'd0,3'd2,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd3,3'd1,3'd2,3'd3,3'd3,3'd3},
'{3'd0,3'd1,3'd2,3'd1,3'd3,3'd3,3'd3,3'd4},
'{3'd0,3'd2,3'd2,3'd1,3'd3,3'd3,3'd3,3'd4}};

parameter bit [2:0] SpriteTableG_18_7[7:0][7:0] = '{'{3'd0,3'd2,3'd1,3'd1,3'd3,3'd3,3'd4,3'd4},
'{3'd1,3'd3,3'd1,3'd2,3'd3,3'd3,3'd4,3'd4},
'{3'd2,3'd3,3'd1,3'd2,3'd3,3'd3,3'd4,3'd4},
'{3'd2,3'd3,3'd1,3'd2,3'd3,3'd3,3'd3,3'd3},
'{3'd3,3'd3,3'd1,3'd2,3'd3,3'd3,3'd3,3'd3},
'{3'd3,3'd2,3'd1,3'd2,3'd3,3'd3,3'd3,3'd3},
'{3'd2,3'd2,3'd1,3'd2,3'd2,3'd2,3'd2,3'd1},
'{3'd3,3'd2,3'd1,3'd1,3'd2,3'd2,3'd2,3'd2}};

parameter bit [2:0] SpriteTableG_18_8[7:0][7:0] = '{'{3'd2,3'd3,3'd2,3'd3,3'd3,3'd2,3'd2,3'd0},
'{3'd0,3'd2,3'd2,3'd1,3'd1,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_18_9[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd0,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_18_10[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd0},
'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd0,3'd0,3'd2},
'{3'd0,3'd0,3'd0,3'd1,3'd0,3'd0,3'd2,3'd3},
'{3'd0,3'd1,3'd1,3'd0,3'd1,3'd3,3'd3,3'd1},
'{3'd1,3'd1,3'd0,3'd1,3'd3,3'd3,3'd1,3'd1},
'{3'd1,3'd0,3'd1,3'd3,3'd3,3'd1,3'd1,3'd2},
'{3'd1,3'd0,3'd2,3'd3,3'd1,3'd2,3'd2,3'd3},
'{3'd1,3'd0,3'd2,3'd2,3'd1,3'd2,3'd2,3'd3}};

parameter bit [2:0] SpriteTableG_18_11[7:0][7:0] = '{'{3'd1,3'd0,3'd2,3'd2,3'd1,3'd2,3'd3,3'd3},
'{3'd1,3'd0,3'd2,3'd2,3'd1,3'd2,3'd2,3'd3},
'{3'd1,3'd0,3'd1,3'd3,3'd1,3'd2,3'd2,3'd3},
'{3'd1,3'd0,3'd1,3'd3,3'd1,3'd2,3'd2,3'd3},
'{3'd1,3'd0,3'd1,3'd3,3'd1,3'd2,3'd2,3'd3},
'{3'd1,3'd0,3'd1,3'd3,3'd1,3'd2,3'd2,3'd3},
'{3'd1,3'd0,3'd0,3'd3,3'd1,3'd2,3'd2,3'd3},
'{3'd1,3'd0,3'd0,3'd3,3'd1,3'd1,3'd2,3'd3}};

parameter bit [2:0] SpriteTableG_18_12[7:0][7:0] = '{'{3'd1,3'd0,3'd0,3'd2,3'd1,3'd1,3'd2,3'd2},
'{3'd0,3'd0,3'd0,3'd3,3'd1,3'd1,3'd2,3'd2},
'{3'd0,3'd0,3'd0,3'd3,3'd1,3'd1,3'd2,3'd2},
'{3'd0,3'd0,3'd0,3'd3,3'd1,3'd1,3'd2,3'd2},
'{3'd0,3'd0,3'd0,3'd3,3'd1,3'd1,3'd2,3'd2},
'{3'd0,3'd0,3'd0,3'd3,3'd1,3'd1,3'd2,3'd2},
'{3'd0,3'd0,3'd0,3'd3,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd3,3'd1,3'd0,3'd1,3'd3}};

parameter bit [2:0] SpriteTableG_18_13[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd3,3'd2,3'd2,3'd3,3'd2},
'{3'd0,3'd0,3'd0,3'd4,3'd4,3'd2,3'd1,3'd0},
'{3'd1,3'd1,3'd0,3'd2,3'd1,3'd0,3'd0,3'd0},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1},
'{3'd1,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_19_0[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd0},
'{3'd2,3'd1,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1},
'{3'd3,3'd3,3'd3,3'd2,3'd2,3'd1,3'd0,3'd0},
'{3'd2,3'd2,3'd2,3'd2,3'd3,3'd3,3'd2,3'd2}};

parameter bit [2:0] SpriteTableG_19_1[7:0][7:0] = '{'{3'd5,3'd4,3'd4,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd3,3'd3,3'd4,3'd5,3'd5,3'd5,3'd4,3'd3},
'{3'd2,3'd1,3'd2,3'd2,3'd3,3'd4,3'd4,3'd5},
'{3'd1,3'd1,3'd1,3'd2,3'd2,3'd3,3'd3,3'd2},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd2,3'd2},
'{3'd0,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd2,3'd2,3'd1,3'd1,3'd1,3'd0},
'{3'd2,3'd1,3'd1,3'd1,3'd1,3'd2,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_19_2[7:0][7:0] = '{'{3'd2,3'd1,3'd1,3'd1,3'd1,3'd1,3'd2,3'd4},
'{3'd2,3'd1,3'd2,3'd2,3'd1,3'd2,3'd5,3'd4},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd5,3'd5,3'd2},
'{3'd1,3'd1,3'd1,3'd2,3'd5,3'd5,3'd2,3'd0},
'{3'd1,3'd1,3'd2,3'd6,3'd6,3'd2,3'd0,3'd1},
'{3'd1,3'd2,3'd6,3'd7,3'd3,3'd1,3'd1,3'd1},
'{3'd2,3'd6,3'd7,3'd4,3'd1,3'd1,3'd1,3'd3},
'{3'd6,3'd7,3'd5,3'd1,3'd0,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_19_3[7:0][7:0] = '{'{3'd7,3'd5,3'd2,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd6,3'd2,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd3,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_19_4[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd2,3'd2,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd2,3'd2,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_19_5[7:0][7:0] = '{'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd2},
'{3'd1,3'd2,3'd2,3'd2,3'd2,3'd2,3'd3,3'd4},
'{3'd2,3'd2,3'd2,3'd3,3'd4,3'd5,3'd6,3'd6},
'{3'd4,3'd4,3'd5,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd5,3'd4}};

parameter bit [2:0] SpriteTableG_19_6[7:0][7:0] = '{'{3'd6,3'd6,3'd6,3'd6,3'd5,3'd4,3'd2,3'd1},
'{3'd6,3'd6,3'd6,3'd4,3'd2,3'd2,3'd2,3'd2},
'{3'd6,3'd6,3'd3,3'd2,3'd2,3'd2,3'd1,3'd0},
'{3'd4,3'd3,3'd1,3'd2,3'd1,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd2,3'd0,3'd0,3'd0,3'd0},
'{3'd3,3'd1,3'd2,3'd2,3'd0,3'd0,3'd1,3'd1},
'{3'd3,3'd1,3'd2,3'd3,3'd1,3'd2,3'd2,3'd2},
'{3'd3,3'd1,3'd1,3'd2,3'd2,3'd2,3'd2,3'd2}};

parameter bit [2:0] SpriteTableG_19_7[7:0][7:0] = '{'{3'd4,3'd2,3'd1,3'd2,3'd2,3'd3,3'd3,3'd3},
'{3'd4,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd4,3'd4,3'd3,3'd3,3'd3,3'd3,3'd4,3'd3},
'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd3,3'd3,3'd3,3'd2,3'd2,3'd2,3'd2,3'd3},
'{3'd2,3'd2,3'd1,3'd2,3'd2,3'd1,3'd1,3'd2},
'{3'd1,3'd2,3'd2,3'd2,3'd3,3'd2,3'd1,3'd2},
'{3'd2,3'd2,3'd1,3'd2,3'd2,3'd1,3'd2,3'd2}};

parameter bit [2:0] SpriteTableG_19_8[7:0][7:0] = '{'{3'd0,3'd0,3'd1,3'd2,3'd1,3'd2,3'd3,3'd1},
'{3'd0,3'd0,3'd2,3'd2,3'd1,3'd2,3'd3,3'd1},
'{3'd0,3'd2,3'd2,3'd1,3'd2,3'd2,3'd2,3'd1},
'{3'd1,3'd3,3'd1,3'd1,3'd1,3'd1,3'd1,3'd2},
'{3'd2,3'd2,3'd1,3'd1,3'd2,3'd3,3'd4,3'd3},
'{3'd4,3'd3,3'd2,3'd2,3'd1,3'd1,3'd1,3'd0},
'{3'd2,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd0}};

parameter bit [2:0] SpriteTableG_19_9[7:0][7:0] = '{'{3'd1,3'd1,3'd0,3'd1,3'd1,3'd1,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd0,3'd0,3'd3},
'{3'd0,3'd1,3'd1,3'd1,3'd0,3'd0,3'd3,3'd2},
'{3'd1,3'd1,3'd1,3'd0,3'd0,3'd3,3'd2,3'd1},
'{3'd1,3'd1,3'd0,3'd1,3'd3,3'd2,3'd1,3'd1},
'{3'd1,3'd0,3'd1,3'd3,3'd2,3'd1,3'd1,3'd1},
'{3'd0,3'd1,3'd3,3'd2,3'd1,3'd1,3'd1,3'd3}};

parameter bit [2:0] SpriteTableG_19_10[7:0][7:0] = '{'{3'd2,3'd3,3'd2,3'd1,3'd2,3'd1,3'd1,3'd4},
'{3'd3,3'd2,3'd1,3'd2,3'd2,3'd1,3'd3,3'd3},
'{3'd2,3'd1,3'd2,3'd2,3'd1,3'd2,3'd4,3'd1},
'{3'd1,3'd2,3'd2,3'd1,3'd1,3'd4,3'd3,3'd2},
'{3'd2,3'd2,3'd2,3'd1,3'd3,3'd5,3'd4,3'd3},
'{3'd2,3'd3,3'd1,3'd1,3'd4,3'd3,3'd2,3'd1},
'{3'd3,3'd3,3'd1,3'd1,3'd1,3'd1,3'd1,3'd2},
'{3'd3,3'd3,3'd2,3'd1,3'd1,3'd2,3'd3,3'd3}};

parameter bit [2:0] SpriteTableG_19_11[7:0][7:0] = '{'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd2}};

parameter bit [2:0] SpriteTableG_19_12[7:0][7:0] = '{'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd2,3'd2,3'd2},
'{3'd3,3'd3,3'd3,3'd2,3'd2,3'd2,3'd1,3'd1},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd1,3'd1,3'd3},
'{3'd2,3'd2,3'd2,3'd1,3'd1,3'd2,3'd3,3'd3},
'{3'd2,3'd1,3'd1,3'd2,3'd3,3'd3,3'd1,3'd0},
'{3'd1,3'd1,3'd2,3'd4,3'd2,3'd0,3'd0,3'd0},
'{3'd2,3'd3,3'd3,3'd1,3'd0,3'd0,3'd0,3'd1},
'{3'd3,3'd1,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_19_13[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd0,3'd1,3'd0},
'{3'd0,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_20_0[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_20_1[7:0][7:0] = '{'{3'd2,3'd2,3'd2,3'd2,3'd1,3'd1,3'd1,3'd1},
'{3'd2,3'd2,3'd2,3'd2,3'd3,3'd1,3'd1,3'd2},
'{3'd5,3'd4,3'd3,3'd2,3'd1,3'd1,3'd1,3'd4},
'{3'd2,3'd2,3'd3,3'd2,3'd1,3'd3,3'd4,3'd4},
'{3'd2,3'd1,3'd1,3'd2,3'd1,3'd3,3'd5,3'd5},
'{3'd1,3'd2,3'd3,3'd2,3'd1,3'd1,3'd2,3'd3},
'{3'd1,3'd3,3'd2,3'd1,3'd0,3'd1,3'd2,3'd2},
'{3'd4,3'd3,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_20_2[7:0][7:0] = '{'{3'd3,3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0},
'{3'd1,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd2,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd2,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd2,3'd4,3'd4,3'd2,3'd1,3'd1,3'd1,3'd1},
'{3'd4,3'd6,3'd7,3'd5,3'd2,3'd2,3'd3,3'd2},
'{3'd2,3'd6,3'd6,3'd3,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_20_3[7:0][7:0] = '{'{3'd1,3'd3,3'd4,3'd2,3'd1,3'd0,3'd0,3'd1},
'{3'd1,3'd1,3'd2,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd2,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd2,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd2,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd2,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_20_4[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd3,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd2,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd1,3'd2,3'd2,3'd2,3'd3}};

parameter bit [2:0] SpriteTableG_20_5[7:0][7:0] = '{'{3'd1,3'd2,3'd2,3'd2,3'd2,3'd3,3'd5,3'd6},
'{3'd3,3'd3,3'd3,3'd4,3'd5,3'd6,3'd6,3'd4},
'{3'd5,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd2},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd4},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd6,3'd5,3'd5,3'd3,3'd4,3'd6,3'd6,3'd6},
'{3'd2,3'd2,3'd1,3'd1,3'd4,3'd6,3'd6,3'd6}};

parameter bit [2:0] SpriteTableG_20_6[7:0][7:0] = '{'{3'd2,3'd2,3'd3,3'd1,3'd5,3'd6,3'd6,3'd6},
'{3'd2,3'd1,3'd2,3'd1,3'd5,3'd6,3'd6,3'd6},
'{3'd0,3'd0,3'd2,3'd2,3'd5,3'd6,3'd6,3'd6},
'{3'd0,3'd1,3'd2,3'd1,3'd3,3'd4,3'd4,3'd4},
'{3'd0,3'd2,3'd1,3'd1,3'd1,3'd1,3'd2,3'd2},
'{3'd2,3'd1,3'd1,3'd2,3'd3,3'd3,3'd3,3'd3},
'{3'd1,3'd1,3'd2,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd2,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd2}};

parameter bit [2:0] SpriteTableG_20_7[7:0][7:0] = '{'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd2,3'd1,3'd1},
'{3'd3,3'd3,3'd3,3'd2,3'd2,3'd1,3'd2,3'd2},
'{3'd3,3'd3,3'd2,3'd2,3'd2,3'd1,3'd1,3'd0},
'{3'd3,3'd2,3'd1,3'd2,3'd1,3'd0,3'd0,3'd0},
'{3'd2,3'd1,3'd2,3'd1,3'd0,3'd0,3'd0,3'd1},
'{3'd1,3'd2,3'd2,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd3,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd2,3'd2,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_20_8[7:0][7:0] = '{'{3'd2,3'd4,3'd3,3'd3,3'd3,3'd3,3'd3,3'd2},
'{3'd1,3'd3,3'd2,3'd2,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd1,3'd1,3'd1,3'd2,3'd2,3'd2},
'{3'd2,3'd2,3'd1,3'd1,3'd1,3'd1,3'd2,3'd2},
'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd1,3'd3,3'd4,3'd4,3'd3,3'd2},
'{3'd0,3'd0,3'd2,3'd4,3'd5,3'd2,3'd1,3'd3},
'{3'd0,3'd1,3'd3,3'd4,3'd4,3'd1,3'd0,3'd1}};

parameter bit [2:0] SpriteTableG_20_9[7:0][7:0] = '{'{3'd1,3'd3,3'd2,3'd4,3'd3,3'd0,3'd0,3'd0},
'{3'd3,3'd2,3'd2,3'd4,3'd1,3'd0,3'd0,3'd0},
'{3'd2,3'd1,3'd3,3'd3,3'd0,3'd0,3'd1,3'd0},
'{3'd0,3'd2,3'd4,3'd1,3'd0,3'd1,3'd1,3'd1},
'{3'd1,3'd4,3'd3,3'd0,3'd0,3'd1,3'd1,3'd1},
'{3'd2,3'd4,3'd1,3'd0,3'd1,3'd1,3'd0,3'd0},
'{3'd4,3'd2,3'd0,3'd0,3'd1,3'd0,3'd0,3'd2},
'{3'd4,3'd0,3'd0,3'd0,3'd0,3'd0,3'd3,3'd3}};

parameter bit [2:0] SpriteTableG_20_10[7:0][7:0] = '{'{3'd2,3'd0,3'd0,3'd0,3'd2,3'd3,3'd2,3'd1},
'{3'd0,3'd0,3'd1,3'd3,3'd3,3'd2,3'd1,3'd2},
'{3'd0,3'd2,3'd3,3'd3,3'd1,3'd1,3'd2,3'd3},
'{3'd3,3'd2,3'd1,3'd1,3'd2,3'd2,3'd3,3'd3},
'{3'd2,3'd1,3'd1,3'd2,3'd3,3'd3,3'd3,3'd3},
'{3'd1,3'd2,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3}};

parameter bit [2:0] SpriteTableG_20_11[7:0][7:0] = '{'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd2},
'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd2,3'd2,3'd1},
'{3'd3,3'd3,3'd3,3'd3,3'd2,3'd2,3'd1,3'd2},
'{3'd3,3'd3,3'd2,3'd2,3'd1,3'd1,3'd3,3'd4},
'{3'd3,3'd2,3'd2,3'd1,3'd2,3'd3,3'd3,3'd1},
'{3'd2,3'd2,3'd1,3'd2,3'd4,3'd3,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_20_12[7:0][7:0] = '{'{3'd1,3'd1,3'd2,3'd4,3'd2,3'd0,3'd0,3'd1},
'{3'd2,3'd3,3'd2,3'd1,3'd0,3'd1,3'd1,3'd1},
'{3'd3,3'd2,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd0,3'd0,3'd1,3'd1,3'd1,3'd0,3'd0},
'{3'd0,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_20_13[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_21_0[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_21_1[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd0,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0},
'{3'd3,3'd2,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd3,3'd2,3'd2,3'd3,3'd2,3'd1,3'd1,3'd1},
'{3'd5,3'd4,3'd3,3'd2,3'd3,3'd3,3'd3,3'd1},
'{3'd4,3'd5,3'd5,3'd4,3'd3,3'd3,3'd3,3'd3},
'{3'd2,3'd2,3'd2,3'd3,3'd4,3'd5,3'd5,3'd4},
'{3'd1,3'd2,3'd2,3'd2,3'd2,3'd2,3'd3,3'd5}};

parameter bit [2:0] SpriteTableG_21_2[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd1,3'd2,3'd2,3'd2,3'd2},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd2},
'{3'd1,3'd2,3'd2,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd2,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd2,3'd2,3'd2,3'd2,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd2,3'd2,3'd2},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_21_3[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd2,3'd1,3'd1,3'd2,3'd1},
'{3'd1,3'd1,3'd1,3'd2,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd2,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd2,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_21_4[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd2,3'd2,3'd0,3'd0},
'{3'd0,3'd1,3'd1,3'd1,3'd3,3'd2,3'd0,3'd0},
'{3'd2,3'd2,3'd1,3'd1,3'd2,3'd0,3'd0,3'd0},
'{3'd4,3'd3,3'd2,3'd2,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_21_5[7:0][7:0] = '{'{3'd4,3'd2,3'd2,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd2,3'd3,3'd3,3'd2,3'd2,3'd2,3'd0,3'd0},
'{3'd1,3'd2,3'd2,3'd2,3'd1,3'd3,3'd2,3'd0},
'{3'd2,3'd2,3'd3,3'd4,3'd2,3'd2,3'd2,3'd0},
'{3'd5,3'd6,3'd6,3'd6,3'd3,3'd2,3'd2,3'd0},
'{3'd6,3'd6,3'd6,3'd6,3'd3,3'd2,3'd1,3'd0},
'{3'd6,3'd6,3'd6,3'd6,3'd2,3'd2,3'd1,3'd0},
'{3'd6,3'd6,3'd6,3'd5,3'd2,3'd2,3'd1,3'd0}};

parameter bit [2:0] SpriteTableG_21_6[7:0][7:0] = '{'{3'd6,3'd6,3'd6,3'd5,3'd2,3'd3,3'd0,3'd0},
'{3'd6,3'd6,3'd6,3'd4,3'd2,3'd2,3'd0,3'd0},
'{3'd6,3'd6,3'd6,3'd3,3'd2,3'd2,3'd0,3'd1},
'{3'd4,3'd4,3'd3,3'd2,3'd2,3'd1,3'd0,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd3,3'd1,3'd0,3'd0},
'{3'd3,3'd2,3'd1,3'd2,3'd2,3'd0,3'd0,3'd1},
'{3'd3,3'd2,3'd1,3'd2,3'd1,3'd0,3'd1,3'd1},
'{3'd2,3'd2,3'd2,3'd2,3'd0,3'd1,3'd2,3'd1}};

parameter bit [2:0] SpriteTableG_21_7[7:0][7:0] = '{'{3'd2,3'd2,3'd1,3'd0,3'd0,3'd1,3'd1,3'd2},
'{3'd1,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd1,3'd2,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd2,3'd2,3'd1,3'd2,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd2,3'd1,3'd1,3'd2,3'd1,3'd0}};

parameter bit [2:0] SpriteTableG_21_8[7:0][7:0] = '{'{3'd2,3'd2,3'd2,3'd3,3'd3,3'd4,3'd4,3'd3},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd2,3'd3},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd1},
'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd2,3'd3,3'd3,3'd3,3'd3,3'd4,3'd3,3'd3},
'{3'd1,3'd2,3'd3,3'd3,3'd3,3'd4,3'd4,3'd4},
'{3'd2,3'd1,3'd2,3'd3,3'd3,3'd4,3'd4,3'd4},
'{3'd3,3'd1,3'd1,3'd3,3'd3,3'd4,3'd4,3'd4}};

parameter bit [2:0] SpriteTableG_21_9[7:0][7:0] = '{'{3'd2,3'd2,3'd1,3'd2,3'd3,3'd4,3'd4,3'd4},
'{3'd1,3'd3,3'd1,3'd2,3'd3,3'd4,3'd4,3'd4},
'{3'd0,3'd3,3'd2,3'd1,3'd3,3'd3,3'd4,3'd4},
'{3'd0,3'd2,3'd3,3'd1,3'd2,3'd3,3'd4,3'd4},
'{3'd0,3'd2,3'd3,3'd1,3'd2,3'd3,3'd4,3'd4},
'{3'd1,3'd3,3'd2,3'd1,3'd3,3'd3,3'd3,3'd4},
'{3'd3,3'd2,3'd1,3'd2,3'd3,3'd4,3'd4,3'd4},
'{3'd2,3'd1,3'd2,3'd3,3'd3,3'd4,3'd4,3'd4}};

parameter bit [2:0] SpriteTableG_21_10[7:0][7:0] = '{'{3'd1,3'd2,3'd3,3'd3,3'd4,3'd4,3'd3,3'd3},
'{3'd2,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd2,3'd2},
'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd2,3'd2,3'd1},
'{3'd3,3'd3,3'd3,3'd3,3'd2,3'd1,3'd1,3'd3},
'{3'd3,3'd3,3'd3,3'd2,3'd1,3'd1,3'd3,3'd3}};

parameter bit [2:0] SpriteTableG_21_11[7:0][7:0] = '{'{3'd3,3'd2,3'd2,3'd1,3'd2,3'd3,3'd3,3'd0},
'{3'd2,3'd2,3'd1,3'd3,3'd4,3'd2,3'd0,3'd0},
'{3'd1,3'd1,3'd3,3'd4,3'd1,3'd0,3'd0,3'd1},
'{3'd2,3'd3,3'd3,3'd1,3'd0,3'd0,3'd1,3'd0},
'{3'd4,3'd2,3'd0,3'd0,3'd1,3'd1,3'd1,3'd0},
'{3'd2,3'd0,3'd0,3'd1,3'd1,3'd1,3'd0,3'd0},
'{3'd0,3'd0,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_21_12[7:0][7:0] = '{'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_21_13[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_22_0[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_22_1[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd0,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0},
'{3'd2,3'd2,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd3,3'd2,3'd3,3'd3,3'd2,3'd1,3'd1,3'd1},
'{3'd5,3'd4,3'd2,3'd2,3'd3,3'd3,3'd2,3'd1}};

parameter bit [2:0] SpriteTableG_22_2[7:0][7:0] = '{'{3'd3,3'd4,3'd4,3'd4,3'd3,3'd3,3'd3,3'd2},
'{3'd2,3'd2,3'd2,3'd3,3'd4,3'd4,3'd3,3'd2},
'{3'd0,3'd1,3'd2,3'd2,3'd2,3'd3,3'd4,3'd4},
'{3'd1,3'd0,3'd0,3'd1,3'd1,3'd2,3'd3,3'd3},
'{3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd1,3'd2},
'{3'd2,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd2,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_22_3[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd2},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd2,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd2,3'd1}};

parameter bit [2:0] SpriteTableG_22_4[7:0][7:0] = '{'{3'd1,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd2,3'd2,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_22_5[7:0][7:0] = '{'{3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd2,3'd1,3'd1},
'{3'd0,3'd1,3'd1,3'd1,3'd1,3'd2,3'd1,3'd1},
'{3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd3},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_22_6[7:0][7:0] = '{'{3'd1,3'd2,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd2,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_22_7[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd2,3'd1,3'd2},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd2,3'd3},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd2,3'd2,3'd2},
'{3'd1,3'd1,3'd1,3'd1,3'd2,3'd2,3'd2,3'd2},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd2,3'd2,3'd2},
'{3'd3,3'd2,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd2,3'd3,3'd2,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_22_8[7:0][7:0] = '{'{3'd2,3'd1,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1},
'{3'd4,3'd4,3'd2,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd2,3'd2,3'd3,3'd3,3'd2,3'd0,3'd0,3'd0},
'{3'd2,3'd1,3'd1,3'd3,3'd4,3'd3,3'd0,3'd0},
'{3'd3,3'd3,3'd2,3'd1,3'd2,3'd4,3'd2,3'd0},
'{3'd4,3'd3,3'd3,3'd2,3'd1,3'd2,3'd4,3'd4},
'{3'd4,3'd4,3'd3,3'd3,3'd2,3'd1,3'd3,3'd5},
'{3'd4,3'd4,3'd3,3'd3,3'd3,3'd1,3'd2,3'd4}};

parameter bit [2:0] SpriteTableG_22_9[7:0][7:0] = '{'{3'd4,3'd4,3'd3,3'd3,3'd3,3'd2,3'd1,3'd4},
'{3'd4,3'd4,3'd4,3'd3,3'd3,3'd2,3'd1,3'd4},
'{3'd4,3'd4,3'd3,3'd3,3'd3,3'd2,3'd1,3'd4},
'{3'd4,3'd4,3'd4,3'd3,3'd3,3'd2,3'd1,3'd4},
'{3'd4,3'd4,3'd3,3'd3,3'd3,3'd2,3'd2,3'd4},
'{3'd4,3'd3,3'd3,3'd3,3'd3,3'd1,3'd3,3'd4},
'{3'd4,3'd3,3'd3,3'd3,3'd2,3'd1,3'd4,3'd2},
'{3'd4,3'd3,3'd3,3'd3,3'd1,3'd2,3'd4,3'd1}};

parameter bit [2:0] SpriteTableG_22_10[7:0][7:0] = '{'{3'd3,3'd3,3'd3,3'd2,3'd1,3'd4,3'd2,3'd0},
'{3'd3,3'd3,3'd2,3'd1,3'd3,3'd3,3'd0,3'd1},
'{3'd3,3'd2,3'd1,3'd2,3'd4,3'd1,3'd0,3'd1},
'{3'd2,3'd1,3'd3,3'd4,3'd1,3'd0,3'd1,3'd1},
'{3'd1,3'd2,3'd4,3'd1,3'd0,3'd1,3'd1,3'd1},
'{3'd2,3'd3,3'd1,3'd0,3'd1,3'd1,3'd1,3'd0},
'{3'd3,3'd1,3'd0,3'd1,3'd1,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_22_11[7:0][7:0] = '{'{3'd0,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_22_12[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_22_13[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_23_0[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_23_1[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_23_2[7:0][7:0] = '{'{3'd2,3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0},
'{3'd3,3'd3,3'd2,3'd1,3'd1,3'd1,3'd0,3'd0},
'{3'd3,3'd2,3'd2,3'd3,3'd2,3'd1,3'd1,3'd1},
'{3'd3,3'd4,3'd3,3'd3,3'd2,3'd2,3'd2,3'd1},
'{3'd2,3'd2,3'd3,3'd4,3'd3,3'd2,3'd2,3'd2},
'{3'd1,3'd2,3'd2,3'd2,3'd4,3'd4,3'd2,3'd2},
'{3'd0,3'd0,3'd0,3'd1,3'd2,3'd2,3'd3,3'd3},
'{3'd1,3'd1,3'd0,3'd0,3'd1,3'd2,3'd2,3'd2}};

parameter bit [2:0] SpriteTableG_23_3[7:0][7:0] = '{'{3'd2,3'd2,3'd1,3'd0,3'd0,3'd0,3'd1,3'd2},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd2,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd2,3'd1,3'd1},
'{3'd1,3'd1,3'd2,3'd1,3'd1,3'd2,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_23_4[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd2,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd2,3'd1},
'{3'd1,3'd1,3'd1,3'd2,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd2,3'd2,3'd2},
'{3'd1,3'd2,3'd1,3'd1,3'd1,3'd1,3'd2,3'd1},
'{3'd1,3'd1,3'd2,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd2,3'd1,3'd2,3'd2,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_23_5[7:0][7:0] = '{'{3'd2,3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd2,3'd2},
'{3'd0,3'd0,3'd0,3'd1,3'd2,3'd3,3'd3,3'd2},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd3,3'd4},
'{3'd3,3'd2,3'd1,3'd1,3'd1,3'd2,3'd2,3'd3},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_23_6[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd2,3'd1,3'd1,3'd0,3'd0,3'd0,3'd1,3'd3},
'{3'd2,3'd1,3'd0,3'd0,3'd0,3'd2,3'd3,3'd2},
'{3'd2,3'd1,3'd0,3'd0,3'd1,3'd3,3'd1,3'd0},
'{3'd1,3'd1,3'd0,3'd0,3'd2,3'd1,3'd1,3'd1},
'{3'd2,3'd1,3'd0,3'd1,3'd2,3'd1,3'd2,3'd3},
'{3'd1,3'd1,3'd0,3'd1,3'd1,3'd1,3'd3,3'd3},
'{3'd1,3'd0,3'd0,3'd1,3'd1,3'd2,3'd3,3'd3}};

parameter bit [2:0] SpriteTableG_23_7[7:0][7:0] = '{'{3'd1,3'd0,3'd0,3'd2,3'd1,3'd2,3'd3,3'd3},
'{3'd2,3'd0,3'd0,3'd2,3'd1,3'd2,3'd3,3'd3},
'{3'd1,3'd0,3'd0,3'd2,3'd1,3'd3,3'd3,3'd3},
'{3'd1,3'd0,3'd1,3'd2,3'd1,3'd3,3'd3,3'd4},
'{3'd0,3'd0,3'd1,3'd2,3'd2,3'd3,3'd3,3'd4},
'{3'd0,3'd0,3'd2,3'd1,3'd2,3'd3,3'd3,3'd4},
'{3'd0,3'd0,3'd2,3'd1,3'd2,3'd3,3'd3,3'd4},
'{3'd0,3'd0,3'd2,3'd1,3'd2,3'd3,3'd3,3'd4}};

parameter bit [2:0] SpriteTableG_23_8[7:0][7:0] = '{'{3'd0,3'd0,3'd2,3'd1,3'd3,3'd3,3'd3,3'd4},
'{3'd0,3'd1,3'd2,3'd1,3'd3,3'd3,3'd3,3'd3},
'{3'd0,3'd2,3'd1,3'd1,3'd3,3'd3,3'd3,3'd3},
'{3'd0,3'd2,3'd1,3'd1,3'd3,3'd3,3'd3,3'd3},
'{3'd1,3'd4,3'd2,3'd1,3'd2,3'd2,3'd3,3'd3},
'{3'd2,3'd2,3'd3,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd2,3'd0,3'd2,3'd3,3'd1,3'd1,3'd1,3'd1},
'{3'd2,3'd0,3'd0,3'd2,3'd3,3'd3,3'd3,3'd3}};

parameter bit [2:0] SpriteTableG_23_9[7:0][7:0] = '{'{3'd2,3'd0,3'd0,3'd0,3'd0,3'd1,3'd0,3'd0},
'{3'd2,3'd0,3'd0,3'd1,3'd1,3'd0,3'd0,3'd0},
'{3'd2,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd2,3'd0,3'd1,3'd0,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd0,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_23_10[7:0][7:0] = '{'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_23_11[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_23_12[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_23_13[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_24_0[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_24_1[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_24_2[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd3,3'd3},
'{3'd1,3'd1,3'd1,3'd1,3'd2,3'd3,3'd2,3'd2},
'{3'd1,3'd1,3'd2,3'd2,3'd2,3'd3,3'd4,3'd5},
'{3'd2,3'd2,3'd2,3'd2,3'd4,3'd5,3'd6,3'd6},
'{3'd2,3'd2,3'd3,3'd5,3'd6,3'd6,3'd6,3'd5},
'{3'd4,3'd5,3'd5,3'd6,3'd6,3'd6,3'd4,3'd2},
'{3'd4,3'd5,3'd6,3'd6,3'd6,3'd5,3'd2,3'd2}};

parameter bit [2:0] SpriteTableG_24_3[7:0][7:0] = '{'{3'd2,3'd3,3'd4,3'd5,3'd5,3'd2,3'd1,3'd3},
'{3'd1,3'd2,3'd2,3'd2,3'd4,3'd3,3'd1,3'd2},
'{3'd0,3'd0,3'd1,3'd2,3'd2,3'd3,3'd3,3'd2},
'{3'd1,3'd0,3'd0,3'd0,3'd2,3'd2,3'd2,3'd3},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd1,3'd2,3'd2},
'{3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd1},
'{3'd1,3'd1,3'd2,3'd1,3'd1,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd2,3'd1,3'd2,3'd1}};

parameter bit [2:0] SpriteTableG_24_4[7:0][7:0] = '{'{3'd1,3'd1,3'd2,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd2,3'd2},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd2,3'd2,3'd1,3'd1,3'd1,3'd1,3'd0},
'{3'd1,3'd1,3'd2,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1}};

parameter bit [2:0] SpriteTableG_24_5[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd2,3'd3,3'd2},
'{3'd1,3'd1,3'd2,3'd2,3'd2,3'd3,3'd3,3'd3},
'{3'd2,3'd2,3'd2,3'd2,3'd3,3'd4,3'd5,3'd6},
'{3'd2,3'd3,3'd4,3'd5,3'd6,3'd6,3'd6,3'd6},
'{3'd5,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd3,3'd4,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd1,3'd2,3'd4,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd1,3'd3,3'd2,3'd5,3'd6,3'd6,3'd6,3'd6}};

parameter bit [2:0] SpriteTableG_24_6[7:0][7:0] = '{'{3'd2,3'd3,3'd2,3'd5,3'd6,3'd6,3'd6,3'd6},
'{3'd3,3'd2,3'd2,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd1,3'd2,3'd5,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd1,3'd2,3'd3,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd2,3'd2,3'd2,3'd2,3'd1,3'd1,3'd1,3'd1},
'{3'd3,3'd3,3'd3,3'd2,3'd1,3'd1,3'd2,3'd2},
'{3'd3,3'd3,3'd3,3'd2,3'd1,3'd2,3'd1,3'd0},
'{3'd3,3'd3,3'd3,3'd1,3'd2,3'd1,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_24_7[7:0][7:0] = '{'{3'd3,3'd3,3'd3,3'd2,3'd2,3'd1,3'd1,3'd0},
'{3'd3,3'd3,3'd2,3'd2,3'd2,3'd0,3'd0,3'd0},
'{3'd3,3'd3,3'd2,3'd2,3'd2,3'd0,3'd1,3'd2},
'{3'd4,3'd3,3'd2,3'd2,3'd3,3'd2,3'd3,3'd2},
'{3'd3,3'd3,3'd2,3'd2,3'd4,3'd3,3'd2,3'd1},
'{3'd4,3'd3,3'd2,3'd1,3'd1,3'd2,3'd2,3'd3},
'{3'd4,3'd4,3'd3,3'd2,3'd2,3'd3,3'd3,3'd3},
'{3'd4,3'd4,3'd4,3'd3,3'd3,3'd3,3'd3,3'd3}};

parameter bit [2:0] SpriteTableG_24_8[7:0][7:0] = '{'{3'd3,3'd4,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd2,3'd1},
'{3'd3,3'd3,3'd3,3'd2,3'd2,3'd1,3'd1,3'd2},
'{3'd2,3'd2,3'd2,3'd1,3'd1,3'd1,3'd3,3'd3},
'{3'd1,3'd1,3'd2,3'd3,3'd3,3'd2,3'd1,3'd1},
'{3'd2,3'd3,3'd3,3'd2,3'd1,3'd0,3'd0,3'd1},
'{3'd2,3'd2,3'd1,3'd0,3'd0,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_24_9[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd0,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_24_10[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_24_11[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_24_12[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_24_13[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_25_0[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_25_1[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd0},
'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd0},
'{3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd2,3'd3,3'd3,3'd2},
'{3'd1,3'd1,3'd2,3'd3,3'd3,3'd2,3'd1,3'd2}};

parameter bit [2:0] SpriteTableG_25_2[7:0][7:0] = '{'{3'd2,3'd3,3'd3,3'd3,3'd2,3'd3,3'd4,3'd4},
'{3'd2,3'd2,3'd3,3'd4,3'd5,3'd5,3'd3,3'd2},
'{3'd3,3'd4,3'd6,3'd6,3'd4,3'd2,3'd2,3'd2},
'{3'd6,3'd6,3'd4,3'd3,3'd2,3'd2,3'd2,3'd1},
'{3'd5,3'd4,3'd2,3'd2,3'd2,3'd1,3'd0,3'd0},
'{3'd3,3'd2,3'd2,3'd2,3'd0,3'd0,3'd1,3'd1},
'{3'd2,3'd2,3'd1,3'd0,3'd1,3'd1,3'd1,3'd1},
'{3'd2,3'd1,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_25_3[7:0][7:0] = '{'{3'd2,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd4,3'd3,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd2,3'd4,3'd3,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd2,3'd2,3'd3,3'd3,3'd1,3'd1,3'd1,3'd1},
'{3'd3,3'd3,3'd2,3'd3,3'd4,3'd2,3'd1,3'd0},
'{3'd2,3'd2,3'd3,3'd2,3'd2,3'd4,3'd2,3'd2},
'{3'd1,3'd1,3'd2,3'd2,3'd2,3'd2,3'd3,3'd2},
'{3'd0,3'd0,3'd1,3'd1,3'd2,3'd2,3'd1,3'd2}};

parameter bit [2:0] SpriteTableG_25_4[7:0][7:0] = '{'{3'd1,3'd0,3'd0,3'd1,3'd1,3'd1,3'd3,3'd4},
'{3'd1,3'd1,3'd0,3'd0,3'd2,3'd1,3'd4,3'd5},
'{3'd1,3'd1,3'd0,3'd1,3'd2,3'd2,3'd5,3'd3},
'{3'd0,3'd0,3'd0,3'd2,3'd2,3'd4,3'd3,3'd2},
'{3'd0,3'd0,3'd2,3'd2,3'd4,3'd3,3'd2,3'd3},
'{3'd0,3'd2,3'd1,3'd3,3'd3,3'd1,3'd2,3'd2},
'{3'd1,3'd2,3'd2,3'd3,3'd1,3'd3,3'd3,3'd1},
'{3'd1,3'd2,3'd2,3'd1,3'd1,3'd3,3'd4,3'd4}};

parameter bit [2:0] SpriteTableG_25_5[7:0][7:0] = '{'{3'd2,3'd3,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd4,3'd5,3'd5,3'd6,3'd6,3'd5,3'd4,3'd2},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd5},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6}};

parameter bit [2:0] SpriteTableG_25_6[7:0][7:0] = '{'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd5,3'd3,3'd3,3'd5,3'd6,3'd6,3'd6,3'd6},
'{3'd2,3'd1,3'd1,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd2,3'd2,3'd1,3'd1,3'd2,3'd2,3'd2,3'd2},
'{3'd1,3'd1,3'd1,3'd2,3'd3,3'd3,3'd3,3'd3},
'{3'd0,3'd1,3'd1,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd0,3'd1,3'd1,3'd3,3'd3,3'd3,3'd3,3'd3}};

parameter bit [2:0] SpriteTableG_25_7[7:0][7:0] = '{'{3'd0,3'd1,3'd1,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd1,3'd1,3'd1,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd2,3'd1,3'd2,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd1,3'd1,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd2,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3}};

parameter bit [2:0] SpriteTableG_25_8[7:0][7:0] = '{'{3'd3,3'd3,3'd2,3'd1,3'd2,3'd3,3'd3,3'd3},
'{3'd2,3'd1,3'd1,3'd1,3'd1,3'd2,3'd3,3'd3},
'{3'd1,3'd2,3'd3,3'd2,3'd1,3'd2,3'd2,3'd2},
'{3'd3,3'd3,3'd3,3'd3,3'd1,3'd2,3'd2,3'd1},
'{3'd2,3'd0,3'd1,3'd3,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd1,3'd3,3'd1,3'd0,3'd1,3'd3},
'{3'd1,3'd0,3'd1,3'd4,3'd4,3'd3,3'd4,3'd3},
'{3'd1,3'd1,3'd0,3'd2,3'd4,3'd4,3'd3,3'd1}};

parameter bit [2:0] SpriteTableG_25_9[7:0][7:0] = '{'{3'd0,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_25_10[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_25_11[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_25_12[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_25_13[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_26_0[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_26_1[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd0,3'd0,3'd1,3'd1,3'd2},
'{3'd0,3'd1,3'd1,3'd2,3'd3,3'd3,3'd3,3'd3},
'{3'd2,3'd2,3'd3,3'd3,3'd3,3'd3,3'd2,3'd2},
'{3'd2,3'd2,3'd2,3'd3,3'd3,3'd4,3'd4,3'd5},
'{3'd3,3'd4,3'd4,3'd4,3'd4,3'd3,3'd3,3'd4}};

parameter bit [2:0] SpriteTableG_26_2[7:0][7:0] = '{'{3'd4,3'd4,3'd3,3'd2,3'd2,3'd2,3'd1,3'd2},
'{3'd2,3'd2,3'd3,3'd2,3'd2,3'd2,3'd3,3'd2},
'{3'd2,3'd2,3'd1,3'd0,3'd0,3'd0,3'd2,3'd2},
'{3'd0,3'd0,3'd0,3'd1,3'd0,3'd1,3'd2,3'd2},
'{3'd0,3'd1,3'd1,3'd1,3'd1,3'd2,3'd2,3'd4},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd2,3'd2,3'd5},
'{3'd1,3'd1,3'd1,3'd1,3'd2,3'd2,3'd4,3'd6},
'{3'd1,3'd1,3'd0,3'd1,3'd2,3'd2,3'd5,3'd6}};

parameter bit [2:0] SpriteTableG_26_3[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd2,3'd2,3'd4,3'd6,3'd5},
'{3'd1,3'd0,3'd2,3'd2,3'd3,3'd6,3'd5,3'd2},
'{3'd0,3'd1,3'd2,3'd2,3'd5,3'd6,3'd3,3'd2},
'{3'd1,3'd2,3'd2,3'd5,3'd6,3'd3,3'd1,3'd3},
'{3'd2,3'd2,3'd3,3'd6,3'd4,3'd2,3'd2,3'd2},
'{3'd2,3'd2,3'd5,3'd5,3'd2,3'd2,3'd2,3'd0},
'{3'd2,3'd5,3'd5,3'd2,3'd2,3'd2,3'd1,3'd1},
'{3'd5,3'd5,3'd2,3'd2,3'd2,3'd0,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_26_4[7:0][7:0] = '{'{3'd5,3'd3,3'd2,3'd3,3'd1,3'd0,3'd1,3'd0},
'{3'd3,3'd2,3'd2,3'd1,3'd0,3'd1,3'd1,3'd0},
'{3'd2,3'd3,3'd1,3'd0,3'd1,3'd0,3'd0,3'd0},
'{3'd3,3'd2,3'd0,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd0,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd2,3'd0,3'd0,3'd1,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_26_5[7:0][7:0] = '{'{3'd4,3'd3,3'd0,3'd0,3'd1,3'd1,3'd0,3'd0},
'{3'd2,3'd3,3'd3,3'd0,3'd0,3'd1,3'd1,3'd0},
'{3'd3,3'd2,3'd4,3'd2,3'd0,3'd1,3'd1,3'd0},
'{3'd5,3'd1,3'd3,3'd3,3'd0,3'd1,3'd1,3'd0},
'{3'd6,3'd3,3'd2,3'd4,3'd1,3'd1,3'd1,3'd0},
'{3'd6,3'd3,3'd2,3'd4,3'd1,3'd1,3'd1,3'd0},
'{3'd6,3'd4,3'd1,3'd4,3'd1,3'd0,3'd1,3'd0},
'{3'd6,3'd4,3'd1,3'd4,3'd1,3'd0,3'd1,3'd0}};

parameter bit [2:0] SpriteTableG_26_6[7:0][7:0] = '{'{3'd6,3'd4,3'd1,3'd4,3'd1,3'd0,3'd1,3'd0},
'{3'd6,3'd4,3'd1,3'd4,3'd1,3'd0,3'd1,3'd0},
'{3'd6,3'd3,3'd1,3'd4,3'd1,3'd0,3'd1,3'd0},
'{3'd2,3'd1,3'd1,3'd4,3'd1,3'd0,3'd1,3'd0},
'{3'd1,3'd1,3'd2,3'd4,3'd1,3'd0,3'd1,3'd0},
'{3'd3,3'd1,3'd2,3'd4,3'd1,3'd0,3'd1,3'd0},
'{3'd3,3'd1,3'd2,3'd4,3'd0,3'd0,3'd1,3'd0},
'{3'd3,3'd1,3'd2,3'd4,3'd0,3'd0,3'd1,3'd0}};

parameter bit [2:0] SpriteTableG_26_7[7:0][7:0] = '{'{3'd3,3'd1,3'd2,3'd4,3'd0,3'd0,3'd1,3'd1},
'{3'd3,3'd1,3'd2,3'd4,3'd0,3'd0,3'd0,3'd0},
'{3'd3,3'd1,3'd2,3'd4,3'd1,3'd2,3'd3,3'd3},
'{3'd3,3'd1,3'd2,3'd5,3'd4,3'd4,3'd3,3'd2},
'{3'd3,3'd1,3'd2,3'd3,3'd2,3'd1,3'd0,3'd0},
'{3'd3,3'd2,3'd1,3'd1,3'd1,3'd1,3'd0,3'd2},
'{3'd3,3'd2,3'd2,3'd2,3'd1,3'd1,3'd2,3'd2},
'{3'd3,3'd2,3'd2,3'd1,3'd1,3'd2,3'd3,3'd1}};

parameter bit [2:0] SpriteTableG_26_8[7:0][7:0] = '{'{3'd3,3'd2,3'd1,3'd1,3'd3,3'd3,3'd0,3'd0},
'{3'd2,3'd1,3'd1,3'd2,3'd3,3'd1,3'd0,3'd1},
'{3'd1,3'd1,3'd3,3'd3,3'd1,3'd0,3'd1,3'd1},
'{3'd1,3'd3,3'd3,3'd0,3'd0,3'd1,3'd1,3'd0},
'{3'd2,3'd3,3'd1,3'd0,3'd1,3'd0,3'd0,3'd0},
'{3'd3,3'd1,3'd0,3'd1,3'd1,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_26_9[7:0][7:0] = '{'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_26_10[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_26_11[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_26_12[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_26_13[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_27_0[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_27_1[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd1,3'd1},
'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd4,3'd4,3'd2},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd3,3'd3},
'{3'd5,3'd5,3'd5,3'd5,3'd5,3'd4,3'd2,3'd3},
'{3'd5,3'd6,3'd6,3'd6,3'd6,3'd5,3'd2,3'd3}};

parameter bit [2:0] SpriteTableG_27_2[7:0][7:0] = '{'{3'd5,3'd6,3'd6,3'd6,3'd6,3'd4,3'd2,3'd3},
'{3'd4,3'd6,3'd6,3'd6,3'd5,3'd2,3'd2,3'd2},
'{3'd5,3'd6,3'd6,3'd6,3'd4,3'd2,3'd3,3'd1},
'{3'd5,3'd6,3'd6,3'd4,3'd2,3'd2,3'd2,3'd0},
'{3'd6,3'd6,3'd5,3'd2,3'd2,3'd2,3'd0,3'd1},
'{3'd6,3'd5,3'd3,3'd2,3'd2,3'd1,3'd0,3'd1},
'{3'd6,3'd4,3'd2,3'd2,3'd1,3'd0,3'd1,3'd0},
'{3'd4,3'd2,3'd2,3'd2,3'd0,3'd1,3'd1,3'd0}};

parameter bit [2:0] SpriteTableG_27_3[7:0][7:0] = '{'{3'd2,3'd2,3'd2,3'd0,3'd1,3'd1,3'd1,3'd0},
'{3'd2,3'd2,3'd0,3'd1,3'd1,3'd1,3'd0,3'd0},
'{3'd3,3'd1,3'd0,3'd1,3'd1,3'd0,3'd0,3'd0},
'{3'd1,3'd0,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_27_4[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_27_5[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_27_6[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_27_7[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd0,3'd0,3'd1},
'{3'd1,3'd2,3'd3,3'd4,3'd3,3'd0,3'd0,3'd1},
'{3'd3,3'd3,3'd5,3'd3,3'd1,3'd0,3'd1,3'd0},
'{3'd1,3'd2,3'd3,3'd0,3'd0,3'd1,3'd1,3'd0},
'{3'd2,3'd3,3'd1,3'd0,3'd1,3'd1,3'd0,3'd0},
'{3'd3,3'd1,3'd0,3'd1,3'd1,3'd0,3'd0,3'd0},
'{3'd1,3'd0,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_27_8[7:0][7:0] = '{'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_27_9[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_27_10[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_27_11[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_27_12[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_27_13[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_28_0[2:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_28_1[2:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd0},
'{3'd0,3'd1,3'd1,3'd0,3'd0,3'd1,3'd1,3'd1},
'{3'd0,3'd1,3'd2,3'd0,3'd1,3'd2,3'd0,3'd1}};

parameter bit [2:0] SpriteTableG_28_2[2:0][7:0] = '{'{3'd1,3'd0,3'd1,3'd0,3'd1,3'd1,3'd0,3'd1},
'{3'd1,3'd1,3'd1,3'd0,3'd1,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_28_3[2:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_28_4[2:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_28_5[2:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_28_6[2:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd1,3'd1,3'd0,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_28_7[2:0][7:0] = '{'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_28_8[2:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_28_9[2:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_28_10[2:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_28_11[2:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_28_12[2:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableG_28_13[2:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

logic [9:0] SpriteTableB;

parameter bit [7:0] SpritePaletteB[7:0] = '{8'd16, 8'd49, 8'd82, 8'd115, 8'd148, 8'd180, 8'd246, 8'd213};

	always_comb
	begin
		SpriteTableB = 10'd0;
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableB = SpriteTableB_0_0[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableB = SpriteTableB_0_1[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableB = SpriteTableB_0_2[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableB = SpriteTableB_0_3[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableB = SpriteTableB_0_4[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableB = SpriteTableB_0_5[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableB = SpriteTableB_0_6[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableB = SpriteTableB_0_7[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableB = SpriteTableB_0_8[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableB = SpriteTableB_0_9[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableB = SpriteTableB_0_10[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableB = SpriteTableB_0_11[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableB = SpriteTableB_0_12[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableB = SpriteTableB_0_13[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableB = SpriteTableB_1_0[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableB = SpriteTableB_1_1[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableB = SpriteTableB_1_2[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableB = SpriteTableB_1_3[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableB = SpriteTableB_1_4[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableB = SpriteTableB_1_5[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableB = SpriteTableB_1_6[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableB = SpriteTableB_1_7[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableB = SpriteTableB_1_8[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableB = SpriteTableB_1_9[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableB = SpriteTableB_1_10[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableB = SpriteTableB_1_11[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableB = SpriteTableB_1_12[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableB = SpriteTableB_1_13[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableB = SpriteTableB_2_0[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableB = SpriteTableB_2_1[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableB = SpriteTableB_2_2[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableB = SpriteTableB_2_3[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableB = SpriteTableB_2_4[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableB = SpriteTableB_2_5[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableB = SpriteTableB_2_6[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableB = SpriteTableB_2_7[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableB = SpriteTableB_2_8[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableB = SpriteTableB_2_9[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableB = SpriteTableB_2_10[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableB = SpriteTableB_2_11[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableB = SpriteTableB_2_12[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableB = SpriteTableB_2_13[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableB = SpriteTableB_3_0[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableB = SpriteTableB_3_1[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableB = SpriteTableB_3_2[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableB = SpriteTableB_3_3[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableB = SpriteTableB_3_4[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableB = SpriteTableB_3_5[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableB = SpriteTableB_3_6[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableB = SpriteTableB_3_7[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableB = SpriteTableB_3_8[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableB = SpriteTableB_3_9[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableB = SpriteTableB_3_10[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableB = SpriteTableB_3_11[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableB = SpriteTableB_3_12[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableB = SpriteTableB_3_13[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableB = SpriteTableB_4_0[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableB = SpriteTableB_4_1[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableB = SpriteTableB_4_2[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableB = SpriteTableB_4_3[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableB = SpriteTableB_4_4[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableB = SpriteTableB_4_5[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableB = SpriteTableB_4_6[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableB = SpriteTableB_4_7[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableB = SpriteTableB_4_8[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableB = SpriteTableB_4_9[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableB = SpriteTableB_4_10[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableB = SpriteTableB_4_11[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableB = SpriteTableB_4_12[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableB = SpriteTableB_4_13[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableB = SpriteTableB_5_0[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableB = SpriteTableB_5_1[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableB = SpriteTableB_5_2[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableB = SpriteTableB_5_3[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableB = SpriteTableB_5_4[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableB = SpriteTableB_5_5[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableB = SpriteTableB_5_6[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableB = SpriteTableB_5_7[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableB = SpriteTableB_5_8[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableB = SpriteTableB_5_9[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableB = SpriteTableB_5_10[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableB = SpriteTableB_5_11[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableB = SpriteTableB_5_12[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableB = SpriteTableB_5_13[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableB = SpriteTableB_6_0[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableB = SpriteTableB_6_1[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableB = SpriteTableB_6_2[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableB = SpriteTableB_6_3[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableB = SpriteTableB_6_4[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableB = SpriteTableB_6_5[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableB = SpriteTableB_6_6[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableB = SpriteTableB_6_7[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableB = SpriteTableB_6_8[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableB = SpriteTableB_6_9[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableB = SpriteTableB_6_10[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableB = SpriteTableB_6_11[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableB = SpriteTableB_6_12[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableB = SpriteTableB_6_13[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableB = SpriteTableB_7_0[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableB = SpriteTableB_7_1[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableB = SpriteTableB_7_2[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableB = SpriteTableB_7_3[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableB = SpriteTableB_7_4[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableB = SpriteTableB_7_5[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableB = SpriteTableB_7_6[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableB = SpriteTableB_7_7[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableB = SpriteTableB_7_8[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableB = SpriteTableB_7_9[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableB = SpriteTableB_7_10[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableB = SpriteTableB_7_11[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableB = SpriteTableB_7_12[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableB = SpriteTableB_7_13[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableB = SpriteTableB_8_0[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableB = SpriteTableB_8_1[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableB = SpriteTableB_8_2[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableB = SpriteTableB_8_3[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableB = SpriteTableB_8_4[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableB = SpriteTableB_8_5[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableB = SpriteTableB_8_6[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableB = SpriteTableB_8_7[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableB = SpriteTableB_8_8[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableB = SpriteTableB_8_9[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableB = SpriteTableB_8_10[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableB = SpriteTableB_8_11[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableB = SpriteTableB_8_12[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableB = SpriteTableB_8_13[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableB = SpriteTableB_9_0[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableB = SpriteTableB_9_1[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableB = SpriteTableB_9_2[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableB = SpriteTableB_9_3[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableB = SpriteTableB_9_4[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableB = SpriteTableB_9_5[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableB = SpriteTableB_9_6[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableB = SpriteTableB_9_7[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableB = SpriteTableB_9_8[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableB = SpriteTableB_9_9[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableB = SpriteTableB_9_10[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableB = SpriteTableB_9_11[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableB = SpriteTableB_9_12[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableB = SpriteTableB_9_13[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableB = SpriteTableB_10_0[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableB = SpriteTableB_10_1[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableB = SpriteTableB_10_2[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableB = SpriteTableB_10_3[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableB = SpriteTableB_10_4[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableB = SpriteTableB_10_5[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableB = SpriteTableB_10_6[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableB = SpriteTableB_10_7[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableB = SpriteTableB_10_8[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableB = SpriteTableB_10_9[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableB = SpriteTableB_10_10[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableB = SpriteTableB_10_11[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableB = SpriteTableB_10_12[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableB = SpriteTableB_10_13[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableB = SpriteTableB_11_0[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableB = SpriteTableB_11_1[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableB = SpriteTableB_11_2[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableB = SpriteTableB_11_3[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableB = SpriteTableB_11_4[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableB = SpriteTableB_11_5[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableB = SpriteTableB_11_6[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableB = SpriteTableB_11_7[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableB = SpriteTableB_11_8[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableB = SpriteTableB_11_9[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableB = SpriteTableB_11_10[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableB = SpriteTableB_11_11[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableB = SpriteTableB_11_12[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableB = SpriteTableB_11_13[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableB = SpriteTableB_12_0[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableB = SpriteTableB_12_1[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableB = SpriteTableB_12_2[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableB = SpriteTableB_12_3[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableB = SpriteTableB_12_4[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableB = SpriteTableB_12_5[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableB = SpriteTableB_12_6[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableB = SpriteTableB_12_7[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableB = SpriteTableB_12_8[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableB = SpriteTableB_12_9[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableB = SpriteTableB_12_10[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableB = SpriteTableB_12_11[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableB = SpriteTableB_12_12[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableB = SpriteTableB_12_13[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableB = SpriteTableB_13_0[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableB = SpriteTableB_13_1[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableB = SpriteTableB_13_2[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableB = SpriteTableB_13_3[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableB = SpriteTableB_13_4[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableB = SpriteTableB_13_5[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableB = SpriteTableB_13_6[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableB = SpriteTableB_13_7[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableB = SpriteTableB_13_8[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableB = SpriteTableB_13_9[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableB = SpriteTableB_13_10[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableB = SpriteTableB_13_11[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableB = SpriteTableB_13_12[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableB = SpriteTableB_13_13[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableB = SpriteTableB_14_0[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableB = SpriteTableB_14_1[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableB = SpriteTableB_14_2[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableB = SpriteTableB_14_3[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableB = SpriteTableB_14_4[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableB = SpriteTableB_14_5[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableB = SpriteTableB_14_6[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableB = SpriteTableB_14_7[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableB = SpriteTableB_14_8[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableB = SpriteTableB_14_9[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableB = SpriteTableB_14_10[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableB = SpriteTableB_14_11[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableB = SpriteTableB_14_12[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableB = SpriteTableB_14_13[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableB = SpriteTableB_15_0[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableB = SpriteTableB_15_1[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableB = SpriteTableB_15_2[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableB = SpriteTableB_15_3[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableB = SpriteTableB_15_4[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableB = SpriteTableB_15_5[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableB = SpriteTableB_15_6[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableB = SpriteTableB_15_7[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableB = SpriteTableB_15_8[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableB = SpriteTableB_15_9[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableB = SpriteTableB_15_10[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableB = SpriteTableB_15_11[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableB = SpriteTableB_15_12[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableB = SpriteTableB_15_13[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd136 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableB = SpriteTableB_16_0[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd136 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableB = SpriteTableB_16_1[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd136 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableB = SpriteTableB_16_2[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd136 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableB = SpriteTableB_16_3[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd136 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableB = SpriteTableB_16_4[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd136 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableB = SpriteTableB_16_5[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd136 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableB = SpriteTableB_16_6[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd136 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableB = SpriteTableB_16_7[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd136 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableB = SpriteTableB_16_8[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd136 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableB = SpriteTableB_16_9[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd136 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableB = SpriteTableB_16_10[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd136 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableB = SpriteTableB_16_11[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd136 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableB = SpriteTableB_16_12[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd136 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableB = SpriteTableB_16_13[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd136 && SpriteX < 10'd144 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableB = SpriteTableB_17_0[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd136 && SpriteX < 10'd144 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableB = SpriteTableB_17_1[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd136 && SpriteX < 10'd144 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableB = SpriteTableB_17_2[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd136 && SpriteX < 10'd144 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableB = SpriteTableB_17_3[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd136 && SpriteX < 10'd144 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableB = SpriteTableB_17_4[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd136 && SpriteX < 10'd144 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableB = SpriteTableB_17_5[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd136 && SpriteX < 10'd144 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableB = SpriteTableB_17_6[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd136 && SpriteX < 10'd144 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableB = SpriteTableB_17_7[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd136 && SpriteX < 10'd144 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableB = SpriteTableB_17_8[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd136 && SpriteX < 10'd144 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableB = SpriteTableB_17_9[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd136 && SpriteX < 10'd144 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableB = SpriteTableB_17_10[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd136 && SpriteX < 10'd144 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableB = SpriteTableB_17_11[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd136 && SpriteX < 10'd144 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableB = SpriteTableB_17_12[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd136 && SpriteX < 10'd144 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableB = SpriteTableB_17_13[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd144 && SpriteX < 10'd152 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableB = SpriteTableB_18_0[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd144 && SpriteX < 10'd152 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableB = SpriteTableB_18_1[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd144 && SpriteX < 10'd152 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableB = SpriteTableB_18_2[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd144 && SpriteX < 10'd152 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableB = SpriteTableB_18_3[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd144 && SpriteX < 10'd152 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableB = SpriteTableB_18_4[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd144 && SpriteX < 10'd152 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableB = SpriteTableB_18_5[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd144 && SpriteX < 10'd152 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableB = SpriteTableB_18_6[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd144 && SpriteX < 10'd152 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableB = SpriteTableB_18_7[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd144 && SpriteX < 10'd152 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableB = SpriteTableB_18_8[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd144 && SpriteX < 10'd152 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableB = SpriteTableB_18_9[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd144 && SpriteX < 10'd152 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableB = SpriteTableB_18_10[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd144 && SpriteX < 10'd152 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableB = SpriteTableB_18_11[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd144 && SpriteX < 10'd152 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableB = SpriteTableB_18_12[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd144 && SpriteX < 10'd152 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableB = SpriteTableB_18_13[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd152 && SpriteX < 10'd160 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableB = SpriteTableB_19_0[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd152 && SpriteX < 10'd160 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableB = SpriteTableB_19_1[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd152 && SpriteX < 10'd160 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableB = SpriteTableB_19_2[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd152 && SpriteX < 10'd160 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableB = SpriteTableB_19_3[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd152 && SpriteX < 10'd160 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableB = SpriteTableB_19_4[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd152 && SpriteX < 10'd160 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableB = SpriteTableB_19_5[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd152 && SpriteX < 10'd160 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableB = SpriteTableB_19_6[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd152 && SpriteX < 10'd160 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableB = SpriteTableB_19_7[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd152 && SpriteX < 10'd160 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableB = SpriteTableB_19_8[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd152 && SpriteX < 10'd160 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableB = SpriteTableB_19_9[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd152 && SpriteX < 10'd160 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableB = SpriteTableB_19_10[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd152 && SpriteX < 10'd160 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableB = SpriteTableB_19_11[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd152 && SpriteX < 10'd160 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableB = SpriteTableB_19_12[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd152 && SpriteX < 10'd160 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableB = SpriteTableB_19_13[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd160 && SpriteX < 10'd168 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableB = SpriteTableB_20_0[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd160 && SpriteX < 10'd168 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableB = SpriteTableB_20_1[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd160 && SpriteX < 10'd168 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableB = SpriteTableB_20_2[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd160 && SpriteX < 10'd168 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableB = SpriteTableB_20_3[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd160 && SpriteX < 10'd168 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableB = SpriteTableB_20_4[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd160 && SpriteX < 10'd168 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableB = SpriteTableB_20_5[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd160 && SpriteX < 10'd168 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableB = SpriteTableB_20_6[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd160 && SpriteX < 10'd168 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableB = SpriteTableB_20_7[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd160 && SpriteX < 10'd168 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableB = SpriteTableB_20_8[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd160 && SpriteX < 10'd168 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableB = SpriteTableB_20_9[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd160 && SpriteX < 10'd168 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableB = SpriteTableB_20_10[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd160 && SpriteX < 10'd168 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableB = SpriteTableB_20_11[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd160 && SpriteX < 10'd168 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableB = SpriteTableB_20_12[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd160 && SpriteX < 10'd168 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableB = SpriteTableB_20_13[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd168 && SpriteX < 10'd176 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableB = SpriteTableB_21_0[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd168 && SpriteX < 10'd176 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableB = SpriteTableB_21_1[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd168 && SpriteX < 10'd176 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableB = SpriteTableB_21_2[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd168 && SpriteX < 10'd176 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableB = SpriteTableB_21_3[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd168 && SpriteX < 10'd176 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableB = SpriteTableB_21_4[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd168 && SpriteX < 10'd176 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableB = SpriteTableB_21_5[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd168 && SpriteX < 10'd176 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableB = SpriteTableB_21_6[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd168 && SpriteX < 10'd176 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableB = SpriteTableB_21_7[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd168 && SpriteX < 10'd176 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableB = SpriteTableB_21_8[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd168 && SpriteX < 10'd176 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableB = SpriteTableB_21_9[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd168 && SpriteX < 10'd176 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableB = SpriteTableB_21_10[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd168 && SpriteX < 10'd176 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableB = SpriteTableB_21_11[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd168 && SpriteX < 10'd176 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableB = SpriteTableB_21_12[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd168 && SpriteX < 10'd176 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableB = SpriteTableB_21_13[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd176 && SpriteX < 10'd184 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableB = SpriteTableB_22_0[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd176 && SpriteX < 10'd184 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableB = SpriteTableB_22_1[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd176 && SpriteX < 10'd184 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableB = SpriteTableB_22_2[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd176 && SpriteX < 10'd184 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableB = SpriteTableB_22_3[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd176 && SpriteX < 10'd184 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableB = SpriteTableB_22_4[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd176 && SpriteX < 10'd184 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableB = SpriteTableB_22_5[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd176 && SpriteX < 10'd184 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableB = SpriteTableB_22_6[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd176 && SpriteX < 10'd184 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableB = SpriteTableB_22_7[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd176 && SpriteX < 10'd184 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableB = SpriteTableB_22_8[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd176 && SpriteX < 10'd184 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableB = SpriteTableB_22_9[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd176 && SpriteX < 10'd184 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableB = SpriteTableB_22_10[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd176 && SpriteX < 10'd184 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableB = SpriteTableB_22_11[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd176 && SpriteX < 10'd184 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableB = SpriteTableB_22_12[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd176 && SpriteX < 10'd184 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableB = SpriteTableB_22_13[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd184 && SpriteX < 10'd192 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableB = SpriteTableB_23_0[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd184 && SpriteX < 10'd192 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableB = SpriteTableB_23_1[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd184 && SpriteX < 10'd192 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableB = SpriteTableB_23_2[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd184 && SpriteX < 10'd192 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableB = SpriteTableB_23_3[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd184 && SpriteX < 10'd192 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableB = SpriteTableB_23_4[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd184 && SpriteX < 10'd192 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableB = SpriteTableB_23_5[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd184 && SpriteX < 10'd192 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableB = SpriteTableB_23_6[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd184 && SpriteX < 10'd192 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableB = SpriteTableB_23_7[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd184 && SpriteX < 10'd192 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableB = SpriteTableB_23_8[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd184 && SpriteX < 10'd192 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableB = SpriteTableB_23_9[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd184 && SpriteX < 10'd192 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableB = SpriteTableB_23_10[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd184 && SpriteX < 10'd192 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableB = SpriteTableB_23_11[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd184 && SpriteX < 10'd192 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableB = SpriteTableB_23_12[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd184 && SpriteX < 10'd192 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableB = SpriteTableB_23_13[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd192 && SpriteX < 10'd200 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableB = SpriteTableB_24_0[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd192 && SpriteX < 10'd200 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableB = SpriteTableB_24_1[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd192 && SpriteX < 10'd200 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableB = SpriteTableB_24_2[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd192 && SpriteX < 10'd200 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableB = SpriteTableB_24_3[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd192 && SpriteX < 10'd200 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableB = SpriteTableB_24_4[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd192 && SpriteX < 10'd200 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableB = SpriteTableB_24_5[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd192 && SpriteX < 10'd200 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableB = SpriteTableB_24_6[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd192 && SpriteX < 10'd200 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableB = SpriteTableB_24_7[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd192 && SpriteX < 10'd200 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableB = SpriteTableB_24_8[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd192 && SpriteX < 10'd200 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableB = SpriteTableB_24_9[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd192 && SpriteX < 10'd200 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableB = SpriteTableB_24_10[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd192 && SpriteX < 10'd200 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableB = SpriteTableB_24_11[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd192 && SpriteX < 10'd200 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableB = SpriteTableB_24_12[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd192 && SpriteX < 10'd200 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableB = SpriteTableB_24_13[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd200 && SpriteX < 10'd208 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableB = SpriteTableB_25_0[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd200 && SpriteX < 10'd208 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableB = SpriteTableB_25_1[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd200 && SpriteX < 10'd208 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableB = SpriteTableB_25_2[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd200 && SpriteX < 10'd208 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableB = SpriteTableB_25_3[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd200 && SpriteX < 10'd208 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableB = SpriteTableB_25_4[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd200 && SpriteX < 10'd208 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableB = SpriteTableB_25_5[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd200 && SpriteX < 10'd208 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableB = SpriteTableB_25_6[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd200 && SpriteX < 10'd208 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableB = SpriteTableB_25_7[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd200 && SpriteX < 10'd208 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableB = SpriteTableB_25_8[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd200 && SpriteX < 10'd208 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableB = SpriteTableB_25_9[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd200 && SpriteX < 10'd208 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableB = SpriteTableB_25_10[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd200 && SpriteX < 10'd208 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableB = SpriteTableB_25_11[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd200 && SpriteX < 10'd208 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableB = SpriteTableB_25_12[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd200 && SpriteX < 10'd208 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableB = SpriteTableB_25_13[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd208 && SpriteX < 10'd216 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableB = SpriteTableB_26_0[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd208 && SpriteX < 10'd216 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableB = SpriteTableB_26_1[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd208 && SpriteX < 10'd216 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableB = SpriteTableB_26_2[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd208 && SpriteX < 10'd216 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableB = SpriteTableB_26_3[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd208 && SpriteX < 10'd216 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableB = SpriteTableB_26_4[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd208 && SpriteX < 10'd216 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableB = SpriteTableB_26_5[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd208 && SpriteX < 10'd216 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableB = SpriteTableB_26_6[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd208 && SpriteX < 10'd216 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableB = SpriteTableB_26_7[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd208 && SpriteX < 10'd216 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableB = SpriteTableB_26_8[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd208 && SpriteX < 10'd216 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableB = SpriteTableB_26_9[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd208 && SpriteX < 10'd216 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableB = SpriteTableB_26_10[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd208 && SpriteX < 10'd216 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableB = SpriteTableB_26_11[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd208 && SpriteX < 10'd216 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableB = SpriteTableB_26_12[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd208 && SpriteX < 10'd216 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableB = SpriteTableB_26_13[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd216 && SpriteX < 10'd224 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableB = SpriteTableB_27_0[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd216 && SpriteX < 10'd224 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableB = SpriteTableB_27_1[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd216 && SpriteX < 10'd224 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableB = SpriteTableB_27_2[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd216 && SpriteX < 10'd224 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableB = SpriteTableB_27_3[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd216 && SpriteX < 10'd224 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableB = SpriteTableB_27_4[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd216 && SpriteX < 10'd224 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableB = SpriteTableB_27_5[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd216 && SpriteX < 10'd224 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableB = SpriteTableB_27_6[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd216 && SpriteX < 10'd224 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableB = SpriteTableB_27_7[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd216 && SpriteX < 10'd224 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableB = SpriteTableB_27_8[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd216 && SpriteX < 10'd224 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableB = SpriteTableB_27_9[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd216 && SpriteX < 10'd224 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableB = SpriteTableB_27_10[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd216 && SpriteX < 10'd224 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableB = SpriteTableB_27_11[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd216 && SpriteX < 10'd224 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableB = SpriteTableB_27_12[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd216 && SpriteX < 10'd224 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableB = SpriteTableB_27_13[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd224 && SpriteX < 10'd227 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableB = SpriteTableB_28_0[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd224 && SpriteX < 10'd227 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableB = SpriteTableB_28_1[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd224 && SpriteX < 10'd227 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableB = SpriteTableB_28_2[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd224 && SpriteX < 10'd227 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableB = SpriteTableB_28_3[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd224 && SpriteX < 10'd227 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableB = SpriteTableB_28_4[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd224 && SpriteX < 10'd227 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableB = SpriteTableB_28_5[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd224 && SpriteX < 10'd227 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableB = SpriteTableB_28_6[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd224 && SpriteX < 10'd227 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableB = SpriteTableB_28_7[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd224 && SpriteX < 10'd227 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableB = SpriteTableB_28_8[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd224 && SpriteX < 10'd227 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableB = SpriteTableB_28_9[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd224 && SpriteX < 10'd227 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableB = SpriteTableB_28_10[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd224 && SpriteX < 10'd227 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableB = SpriteTableB_28_11[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd224 && SpriteX < 10'd227 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableB = SpriteTableB_28_12[X_Index][Y_Index];
		end
		else
		if(SpriteX >= 10'd224 && SpriteX < 10'd227 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableB = SpriteTableB_28_13[X_Index][Y_Index];
		end
	end

parameter bit [2:0] SpriteTableB_0_0[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_0_1[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_0_2[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_0_3[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_0_4[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_0_5[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd0}};

parameter bit [2:0] SpriteTableB_0_6[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_0_7[7:0][7:0] = '{'{3'd0,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1}};

parameter bit [2:0] SpriteTableB_0_8[7:0][7:0] = '{'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_0_9[7:0][7:0] = '{'{3'd0,3'd0,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_0_10[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_0_11[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_0_12[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_0_13[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_1_0[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_1_1[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_1_2[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_1_3[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_1_4[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd1,3'd1,3'd0,3'd0,3'd0,3'd1}};

parameter bit [2:0] SpriteTableB_1_5[7:0][7:0] = '{'{3'd0,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd1,3'd1,3'd0,3'd0,3'd0,3'd1,3'd2},
'{3'd0,3'd1,3'd0,3'd0,3'd0,3'd1,3'd2,3'd3},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd1,3'd2,3'd3},
'{3'd1,3'd0,3'd0,3'd0,3'd1,3'd2,3'd2,3'd2},
'{3'd0,3'd0,3'd0,3'd0,3'd2,3'd2,3'd2,3'd2},
'{3'd0,3'd0,3'd0,3'd1,3'd2,3'd3,3'd2,3'd2},
'{3'd0,3'd0,3'd1,3'd2,3'd3,3'd2,3'd2,3'd2}};

parameter bit [2:0] SpriteTableB_1_6[7:0][7:0] = '{'{3'd0,3'd0,3'd1,3'd2,3'd3,3'd2,3'd2,3'd2},
'{3'd0,3'd0,3'd1,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd0,3'd1,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd0,3'd1,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd0,3'd1,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableB_1_7[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableB_1_8[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableB_1_9[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0},
'{3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd0}};

parameter bit [2:0] SpriteTableB_1_10[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_1_11[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_1_12[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_1_13[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_2_0[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_2_1[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_2_2[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_2_3[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd1}};

parameter bit [2:0] SpriteTableB_2_4[7:0][7:0] = '{'{3'd0,3'd1,3'd0,3'd0,3'd0,3'd0,3'd1,3'd2},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd2,3'd3},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd2,3'd3,3'd2},
'{3'd0,3'd0,3'd0,3'd1,3'd2,3'd2,3'd2,3'd2},
'{3'd0,3'd0,3'd1,3'd2,3'd3,3'd2,3'd2,3'd2},
'{3'd0,3'd1,3'd2,3'd3,3'd2,3'd2,3'd2,3'd2},
'{3'd1,3'd2,3'd2,3'd2,3'd3,3'd2,3'd2,3'd1},
'{3'd2,3'd3,3'd2,3'd2,3'd2,3'd2,3'd1,3'd0}};

parameter bit [2:0] SpriteTableB_2_5[7:0][7:0] = '{'{3'd2,3'd3,3'd3,3'd2,3'd2,3'd2,3'd1,3'd0},
'{3'd3,3'd2,3'd2,3'd2,3'd2,3'd1,3'd0,3'd0},
'{3'd3,3'd2,3'd2,3'd2,3'd2,3'd1,3'd0,3'd0},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd0,3'd0,3'd0},
'{3'd2,3'd2,3'd2,3'd2,3'd1,3'd0,3'd0,3'd0},
'{3'd2,3'd2,3'd2,3'd2,3'd0,3'd0,3'd0,3'd0},
'{3'd2,3'd2,3'd2,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd2,3'd2,3'd2,3'd1,3'd0,3'd0,3'd0,3'd1}};

parameter bit [2:0] SpriteTableB_2_6[7:0][7:0] = '{'{3'd2,3'd2,3'd2,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd2,3'd2,3'd2,3'd0,3'd0,3'd0,3'd0,3'd2},
'{3'd2,3'd2,3'd1,3'd0,3'd0,3'd0,3'd0,3'd2},
'{3'd2,3'd2,3'd1,3'd0,3'd0,3'd0,3'd0,3'd2},
'{3'd2,3'd2,3'd1,3'd0,3'd0,3'd0,3'd1,3'd3},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd2,3'd3},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd1,3'd2},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd2}};

parameter bit [2:0] SpriteTableB_2_7[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableB_2_8[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableB_2_9[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd0}};

parameter bit [2:0] SpriteTableB_2_10[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_2_11[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_2_12[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_2_13[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_3_0[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_3_1[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_3_2[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd0,3'd0,3'd0},
'{3'd0,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_3_3[7:0][7:0] = '{'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd2},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd2,3'd2,3'd2},
'{3'd0,3'd0,3'd0,3'd1,3'd2,3'd2,3'd2,3'd2},
'{3'd0,3'd0,3'd2,3'd2,3'd2,3'd3,3'd2,3'd1},
'{3'd1,3'd2,3'd2,3'd2,3'd2,3'd2,3'd1,3'd0},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_3_4[7:0][7:0] = '{'{3'd3,3'd2,3'd2,3'd2,3'd0,3'd0,3'd0,3'd0},
'{3'd2,3'd2,3'd2,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd2,3'd2,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd2,3'd1,3'd0,3'd0,3'd0,3'd0,3'd1,3'd2},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd1,3'd2,3'd2},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd2,3'd2,3'd2},
'{3'd0,3'd0,3'd0,3'd0,3'd2,3'd2,3'd2,3'd2},
'{3'd0,3'd0,3'd0,3'd1,3'd2,3'd2,3'd2,3'd2}};

parameter bit [2:0] SpriteTableB_3_5[7:0][7:0] = '{'{3'd0,3'd0,3'd1,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd0,3'd0,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd0,3'd1,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd0,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd1,3'd2,3'd2,3'd2,3'd2,3'd3,3'd4,3'd3},
'{3'd2,3'd2,3'd2,3'd2,3'd3,3'd3,3'd4,3'd3},
'{3'd2,3'd2,3'd2,3'd3,3'd4,3'd3,3'd2,3'd3},
'{3'd3,3'd3,3'd2,3'd3,3'd3,3'd3,3'd3,3'd3}};

parameter bit [2:0] SpriteTableB_3_6[7:0][7:0] = '{'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd2,3'd3,3'd3,3'd3,3'd3,3'd3,3'd2,3'd3},
'{3'd2,3'd2,3'd3,3'd4,3'd3,3'd2,3'd3,3'd4},
'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd2,3'd2,3'd3},
'{3'd3,3'd3,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2}};

parameter bit [2:0] SpriteTableB_3_7[7:0][7:0] = '{'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd1,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableB_3_8[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_3_9[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd0},
'{3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd0},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd1,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_3_10[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_3_11[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_3_12[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_3_13[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_4_0[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_4_1[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_4_2[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd0},
'{3'd1,3'd0,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd2},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd2,3'd2,3'd2}};

parameter bit [2:0] SpriteTableB_4_3[7:0][7:0] = '{'{3'd0,3'd1,3'd1,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd1,3'd2,3'd3,3'd2,3'd2,3'd2,3'd1,3'd0},
'{3'd2,3'd3,3'd2,3'd2,3'd1,3'd0,3'd0,3'd0},
'{3'd2,3'd2,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd2,3'd2},
'{3'd0,3'd0,3'd0,3'd1,3'd2,3'd2,3'd2,3'd2}};

parameter bit [2:0] SpriteTableB_4_4[7:0][7:0] = '{'{3'd0,3'd1,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd1,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd3},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd3},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd2,3'd2,3'd2,3'd2,3'd3,3'd3,3'd3,3'd3},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd3,3'd3,3'd3},
'{3'd2,3'd2,3'd2,3'd2,3'd3,3'd3,3'd3,3'd3},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd3,3'd2}};

parameter bit [2:0] SpriteTableB_4_5[7:0][7:0] = '{'{3'd2,3'd2,3'd2,3'd3,3'd2,3'd2,3'd2,3'd2},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd3,3'd3,3'd2,3'd2,3'd2,3'd2,3'd2,3'd1},
'{3'd3,3'd3,3'd2,3'd2,3'd3,3'd2,3'd2,3'd2},
'{3'd3,3'd2,3'd3,3'd3,3'd2,3'd2,3'd3,3'd3},
'{3'd2,3'd3,3'd3,3'd3,3'd2,3'd3,3'd3,3'd3},
'{3'd2,3'd3,3'd3,3'd2,3'd3,3'd3,3'd3,3'd3}};

parameter bit [2:0] SpriteTableB_4_6[7:0][7:0] = '{'{3'd3,3'd3,3'd2,3'd2,3'd3,3'd3,3'd2,3'd2},
'{3'd3,3'd3,3'd2,3'd2,3'd2,3'd3,3'd2,3'd2},
'{3'd3,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd3,3'd3},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd3,3'd3},
'{3'd2,3'd2,3'd2,3'd2,3'd3,3'd3,3'd3,3'd3},
'{3'd3,3'd3,3'd2,3'd3,3'd3,3'd4,3'd3,3'd2},
'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd2,3'd1,3'd0}};

parameter bit [2:0] SpriteTableB_4_7[7:0][7:0] = '{'{3'd2,3'd2,3'd3,3'd3,3'd1,3'd0,3'd0,3'd0},
'{3'd2,3'd2,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1},
'{3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableB_4_8[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd1,3'd1},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableB_4_9[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_4_10[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_4_11[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_4_12[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_4_13[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_5_0[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_5_1[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_5_2[7:0][7:0] = '{'{3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd2,3'd2},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd2,3'd2,3'd2,3'd2,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableB_5_3[7:0][7:0] = '{'{3'd2,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd2,3'd2,3'd2,3'd2,3'd0,3'd0,3'd0,3'd1},
'{3'd2,3'd2,3'd2,3'd2,3'd0,3'd0,3'd0,3'd1},
'{3'd2,3'd2,3'd2,3'd1,3'd0,3'd0,3'd0,3'd1}};

parameter bit [2:0] SpriteTableB_5_4[7:0][7:0] = '{'{3'd3,3'd2,3'd2,3'd1,3'd0,3'd0,3'd0,3'd2},
'{3'd3,3'd3,3'd2,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd3,3'd3,3'd2,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd2,3'd3,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd2,3'd2,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd3,3'd2,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd2,3'd2,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd2,3'd1,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1}};

parameter bit [2:0] SpriteTableB_5_5[7:0][7:0] = '{'{3'd2,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd2,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd2,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd2},
'{3'd3,3'd2,3'd1,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd3,3'd2,3'd2,3'd1,3'd0,3'd0,3'd0,3'd1},
'{3'd4,3'd3,3'd2,3'd2,3'd0,3'd0,3'd0,3'd1}};

parameter bit [2:0] SpriteTableB_5_6[7:0][7:0] = '{'{3'd3,3'd2,3'd2,3'd2,3'd1,3'd0,3'd0,3'd0},
'{3'd2,3'd2,3'd2,3'd3,3'd1,3'd0,3'd0,3'd0},
'{3'd3,3'd3,3'd4,3'd3,3'd1,3'd0,3'd0,3'd0},
'{3'd4,3'd3,3'd4,3'd2,3'd0,3'd0,3'd0,3'd1},
'{3'd3,3'd2,3'd2,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd2,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableB_5_7[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableB_5_8[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_5_9[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd0},
'{3'd0,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_5_10[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_5_11[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_5_12[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_5_13[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_6_0[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_6_1[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_6_2[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd0,3'd1,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd2,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd1,3'd1},
'{3'd1,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2}};

parameter bit [2:0] SpriteTableB_6_3[7:0][7:0] = '{'{3'd1,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd1,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd1,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd1,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd1},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd1,3'd0,3'd0},
'{3'd2,3'd2,3'd2,3'd2,3'd1,3'd0,3'd0,3'd0},
'{3'd2,3'd2,3'd2,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd2,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_6_4[7:0][7:0] = '{'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd2},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd2,3'd2,3'd2},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd2,3'd2,3'd2},
'{3'd0,3'd0,3'd0,3'd1,3'd2,3'd2,3'd2,3'd2},
'{3'd0,3'd1,3'd2,3'd2,3'd2,3'd2,3'd1,3'd0},
'{3'd1,3'd3,3'd2,3'd2,3'd1,3'd0,3'd0,3'd0},
'{3'd2,3'd2,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_6_5[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd2,3'd2},
'{3'd0,3'd1,3'd2,3'd2,3'd2,3'd2,3'd2,3'd1},
'{3'd1,3'd2,3'd2,3'd2,3'd2,3'd2,3'd1,3'd0},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd1,3'd0,3'd0},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd1,3'd0,3'd0},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd0,3'd0,3'd0},
'{3'd1,3'd2,3'd2,3'd2,3'd2,3'd1,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_6_6[7:0][7:0] = '{'{3'd1,3'd2,3'd2,3'd2,3'd2,3'd1,3'd0,3'd0},
'{3'd1,3'd2,3'd2,3'd2,3'd2,3'd2,3'd0,3'd0},
'{3'd1,3'd2,3'd2,3'd2,3'd2,3'd2,3'd1,3'd0},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd1,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableB_6_7[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableB_6_8[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd1,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_6_9[7:0][7:0] = '{'{3'd1,3'd1,3'd0,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_6_10[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_6_11[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_6_12[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_6_13[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_7_0[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_7_1[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd0}};

parameter bit [2:0] SpriteTableB_7_2[7:0][7:0] = '{'{3'd0,3'd0,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0},
'{3'd0,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd2,3'd2},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd2,3'd2,3'd2},
'{3'd0,3'd0,3'd1,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd1,3'd2,3'd2,3'd2,3'd2,3'd2,3'd1,3'd1},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd1,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_7_3[7:0][7:0] = '{'{3'd2,3'd2,3'd2,3'd1,3'd1,3'd0,3'd0,3'd0},
'{3'd2,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd0,3'd0,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd2},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd2,3'd2,3'd3},
'{3'd0,3'd0,3'd0,3'd1,3'd2,3'd3,3'd2,3'd2},
'{3'd0,3'd0,3'd1,3'd2,3'd3,3'd3,3'd2,3'd3},
'{3'd1,3'd2,3'd2,3'd2,3'd3,3'd3,3'd2,3'd3}};

parameter bit [2:0] SpriteTableB_7_4[7:0][7:0] = '{'{3'd2,3'd2,3'd2,3'd2,3'd3,3'd3,3'd2,3'd1},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd1,3'd0,3'd0},
'{3'd2,3'd2,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd2},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd2,3'd3}};

parameter bit [2:0] SpriteTableB_7_5[7:0][7:0] = '{'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd1,3'd2,3'd3},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd2,3'd2,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_7_6[7:0][7:0] = '{'{3'd0,3'd0,3'd1,3'd2,3'd2,3'd2,3'd1,3'd0},
'{3'd0,3'd0,3'd1,3'd3,3'd3,3'd2,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd3,3'd3,3'd1,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd1,3'd3,3'd2,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd1,3'd3,3'd1,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd2,3'd1,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_7_7[7:0][7:0] = '{'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_7_8[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd1,3'd1,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd1},
'{3'd1,3'd0,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd1,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_7_9[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_7_10[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_7_11[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_7_12[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_7_13[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_8_0[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_8_1[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1}};

parameter bit [2:0] SpriteTableB_8_2[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd2,3'd2},
'{3'd0,3'd1,3'd1,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd1,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd1},
'{3'd2,3'd2,3'd2,3'd2,3'd1,3'd1,3'd0,3'd0},
'{3'd2,3'd2,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd2,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd2},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd2,3'd3}};

parameter bit [2:0] SpriteTableB_8_3[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd1,3'd2,3'd2,3'd3,3'd2},
'{3'd0,3'd1,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd1,3'd2,3'd2,3'd3,3'd3,3'd2,3'd2,3'd2},
'{3'd2,3'd2,3'd2,3'd3,3'd3,3'd2,3'd2,3'd2},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd2,3'd2,3'd2,3'd2,3'd3,3'd3,3'd2,3'd2},
'{3'd2,3'd1,3'd1,3'd2,3'd4,3'd3,3'd2,3'd2}};

parameter bit [2:0] SpriteTableB_8_4[7:0][7:0] = '{'{3'd0,3'd0,3'd1,3'd2,3'd3,3'd3,3'd2,3'd2},
'{3'd0,3'd0,3'd2,3'd3,3'd2,3'd2,3'd2,3'd2},
'{3'd0,3'd1,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd0,3'd2,3'd3,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd2,3'd2,3'd3,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd2,3'd3,3'd3,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd2,3'd3,3'd3,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd3,3'd3,3'd2,3'd2,3'd2,3'd1,3'd1,3'd0}};

parameter bit [2:0] SpriteTableB_8_5[7:0][7:0] = '{'{3'd3,3'd2,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd2},
'{3'd0,3'd1,3'd1,3'd1,3'd2,3'd2,3'd2,3'd2},
'{3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd2,3'd2},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd2},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd2}};

parameter bit [2:0] SpriteTableB_8_6[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd2},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd2},
'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd2,3'd2,3'd2},
'{3'd0,3'd0,3'd1,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableB_8_7[7:0][7:0] = '{'{3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd0},
'{3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd0},
'{3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd0},
'{3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableB_8_8[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_8_9[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_8_10[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_8_11[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_8_12[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_8_13[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_9_0[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1}};

parameter bit [2:0] SpriteTableB_9_1[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1},
'{3'd0,3'd0,3'd1,3'd1,3'd1,3'd2,3'd2,3'd2},
'{3'd1,3'd1,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd1,3'd0}};

parameter bit [2:0] SpriteTableB_9_2[7:0][7:0] = '{'{3'd2,3'd2,3'd2,3'd1,3'd1,3'd0,3'd0,3'd0},
'{3'd2,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd2},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd2,3'd2,3'd2},
'{3'd0,3'd1,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd2,3'd3,3'd2,3'd2,3'd2,3'd3,3'd3,3'd2},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd4,3'd3,3'd2}};

parameter bit [2:0] SpriteTableB_9_3[7:0][7:0] = '{'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd3,3'd2,3'd3},
'{3'd2,3'd2,3'd2,3'd2,3'd3,3'd2,3'd2,3'd3},
'{3'd2,3'd2,3'd2,3'd3,3'd2,3'd2,3'd3,3'd2},
'{3'd2,3'd4,3'd3,3'd2,3'd2,3'd2,3'd3,3'd2},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd3,3'd3,3'd2,3'd2,3'd2,3'd3,3'd3,3'd3},
'{3'd3,3'd4,3'd3,3'd2,3'd2,3'd4,3'd5,3'd7}};

parameter bit [2:0] SpriteTableB_9_4[7:0][7:0] = '{'{3'd2,3'd3,3'd3,3'd3,3'd3,3'd4,3'd7,3'd6},
'{3'd2,3'd3,3'd2,3'd2,3'd2,3'd3,3'd4,3'd5},
'{3'd2,3'd2,3'd2,3'd2,3'd3,3'd3,3'd3,3'd3},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd3,3'd3},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd3},
'{3'd2,3'd2,3'd2,3'd2,3'd1,3'd0,3'd0,3'd0},
'{3'd2,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_9_5[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2}};

parameter bit [2:0] SpriteTableB_9_6[7:0][7:0] = '{'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd1,3'd2},
'{3'd2,3'd2,3'd2,3'd2,3'd1,3'd0,3'd1,3'd2},
'{3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1}};

parameter bit [2:0] SpriteTableB_9_7[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableB_9_8[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_9_9[7:0][7:0] = '{'{3'd0,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_9_10[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_9_11[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_9_12[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_9_13[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_10_0[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1},
'{3'd0,3'd0,3'd1,3'd0,3'd1,3'd1,3'd1,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_10_1[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd2,3'd2},
'{3'd1,3'd1,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd1},
'{3'd2,3'd2,3'd2,3'd1,3'd1,3'd1,3'd0,3'd0},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_10_2[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd2,3'd2,3'd2},
'{3'd0,3'd1,3'd2,3'd2,3'd2,3'd2,3'd2,3'd3},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd3,3'd2,3'd2},
'{3'd2,3'd2,3'd2,3'd3,3'd3,3'd2,3'd2,3'd2},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd1,3'd0},
'{3'd2,3'd3,3'd3,3'd2,3'd2,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_10_3[7:0][7:0] = '{'{3'd3,3'd3,3'd2,3'd3,3'd2,3'd0,3'd0,3'd0},
'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd2,3'd1,3'd2},
'{3'd2,3'd3,3'd3,3'd3,3'd4,3'd4,3'd3,3'd3},
'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd2},
'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd2,3'd2},
'{3'd3,3'd3,3'd2,3'd3,3'd3,3'd3,3'd3,3'd2},
'{3'd3,3'd2,3'd2,3'd3,3'd3,3'd3,3'd3,3'd2},
'{3'd4,3'd2,3'd2,3'd3,3'd3,3'd2,3'd2,3'd2}};

parameter bit [2:0] SpriteTableB_10_4[7:0][7:0] = '{'{3'd5,3'd3,3'd3,3'd3,3'd2,3'd2,3'd2,3'd2},
'{3'd4,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd3,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd2,3'd2,3'd2,3'd3,3'd4,3'd3,3'd3,3'd3},
'{3'd0,3'd0,3'd1,3'd2,3'd3,3'd3,3'd4,3'd4},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd2,3'd2,3'd3},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd2}};

parameter bit [2:0] SpriteTableB_10_5[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd2,3'd2,3'd2,3'd2,3'd1,3'd0,3'd0,3'd0},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd0,3'd0,3'd0},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd1,3'd0,3'd0},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd1,3'd0,3'd0},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd1,3'd0,3'd0},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd1,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_10_6[7:0][7:0] = '{'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd1,3'd0,3'd0},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd1,3'd0,3'd0},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd1,3'd0,3'd0},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd1,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_10_7[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableB_10_8[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd0}};

parameter bit [2:0] SpriteTableB_10_9[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_10_10[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_10_11[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_10_12[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_10_13[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_11_0[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd0,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_11_1[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd2},
'{3'd1,3'd1,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd1},
'{3'd2,3'd2,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1},
'{3'd0,3'd0,3'd1,3'd2,3'd2,3'd2,3'd2,3'd2}};

parameter bit [2:0] SpriteTableB_11_2[7:0][7:0] = '{'{3'd2,3'd2,3'd3,3'd3,3'd2,3'd2,3'd2,3'd2},
'{3'd3,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd1},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd1,3'd0,3'd0},
'{3'd2,3'd2,3'd2,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd2,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_11_3[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd2,3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0},
'{3'd3,3'd2,3'd2,3'd3,3'd3,3'd2,3'd2,3'd0},
'{3'd2,3'd3,3'd3,3'd2,3'd3,3'd3,3'd2,3'd0},
'{3'd2,3'd2,3'd3,3'd3,3'd3,3'd4,3'd2,3'd0},
'{3'd2,3'd2,3'd3,3'd3,3'd2,3'd3,3'd2,3'd0},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd0},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd0}};

parameter bit [2:0] SpriteTableB_11_4[7:0][7:0] = '{'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd3,3'd1,3'd0},
'{3'd2,3'd2,3'd2,3'd3,3'd3,3'd3,3'd2,3'd0},
'{3'd2,3'd2,3'd4,3'd4,3'd3,3'd3,3'd2,3'd0},
'{3'd2,3'd3,3'd3,3'd3,3'd3,3'd3,3'd1,3'd0},
'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd1,3'd0},
'{3'd3,3'd3,3'd3,3'd2,3'd3,3'd3,3'd2,3'd0},
'{3'd3,3'd2,3'd2,3'd2,3'd3,3'd4,3'd2,3'd0},
'{3'd2,3'd2,3'd2,3'd2,3'd3,3'd3,3'd1,3'd0}};

parameter bit [2:0] SpriteTableB_11_5[7:0][7:0] = '{'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd1,3'd0},
'{3'd1,3'd2,3'd2,3'd2,3'd2,3'd2,3'd1,3'd0},
'{3'd0,3'd2,3'd2,3'd2,3'd2,3'd2,3'd1,3'd0},
'{3'd0,3'd1,3'd2,3'd2,3'd3,3'd3,3'd1,3'd0},
'{3'd0,3'd1,3'd2,3'd2,3'd3,3'd3,3'd0,3'd0},
'{3'd0,3'd1,3'd3,3'd3,3'd3,3'd3,3'd0,3'd0},
'{3'd0,3'd1,3'd3,3'd3,3'd3,3'd3,3'd0,3'd0},
'{3'd0,3'd1,3'd2,3'd2,3'd3,3'd3,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_11_6[7:0][7:0] = '{'{3'd0,3'd1,3'd3,3'd2,3'd3,3'd3,3'd0,3'd0},
'{3'd0,3'd1,3'd3,3'd3,3'd3,3'd2,3'd0,3'd0},
'{3'd0,3'd2,3'd4,3'd3,3'd3,3'd2,3'd0,3'd0},
'{3'd0,3'd2,3'd4,3'd3,3'd4,3'd2,3'd0,3'd0},
'{3'd0,3'd2,3'd3,3'd3,3'd3,3'd2,3'd0,3'd0},
'{3'd0,3'd3,3'd3,3'd2,3'd3,3'd2,3'd0,3'd0},
'{3'd0,3'd2,3'd3,3'd2,3'd3,3'd2,3'd0,3'd0},
'{3'd0,3'd3,3'd2,3'd2,3'd1,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_11_7[7:0][7:0] = '{'{3'd0,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_11_8[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd0,3'd0},
'{3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0},
'{3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_11_9[7:0][7:0] = '{'{3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0},
'{3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd0},
'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_11_10[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_11_11[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_11_12[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_11_13[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_12_0[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd2,3'd2,3'd2,3'd2}};

parameter bit [2:0] SpriteTableB_12_1[7:0][7:0] = '{'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd1},
'{3'd2,3'd2,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd1,3'd2,3'd2,3'd2,3'd2},
'{3'd2,3'd3,3'd3,3'd2,3'd2,3'd2,3'd1,3'd0},
'{3'd2,3'd3,3'd2,3'd1,3'd1,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_12_2[7:0][7:0] = '{'{3'd2,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd2,3'd2,3'd2},
'{3'd0,3'd1,3'd1,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd1,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd0,3'd1,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd0,3'd0,3'd1,3'd2,3'd2,3'd2,3'd2,3'd2}};

parameter bit [2:0] SpriteTableB_12_3[7:0][7:0] = '{'{3'd0,3'd0,3'd1,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd0,3'd0,3'd1,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd0,3'd0,3'd1,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd0,3'd0,3'd1,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd0,3'd0,3'd1,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd0,3'd0,3'd1,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd0,3'd0,3'd1,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd0,3'd0,3'd1,3'd2,3'd2,3'd2,3'd2,3'd2}};

parameter bit [2:0] SpriteTableB_12_4[7:0][7:0] = '{'{3'd0,3'd0,3'd1,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd0,3'd0,3'd1,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd0,3'd0,3'd1,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd0,3'd0,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd0,3'd0,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd0,3'd0,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd0,3'd0,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd0,3'd0,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2}};

parameter bit [2:0] SpriteTableB_12_5[7:0][7:0] = '{'{3'd0,3'd0,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd0,3'd0,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd0,3'd0,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd0,3'd0,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd0,3'd1,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd0,3'd1,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd0,3'd1,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd0,3'd1,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2}};

parameter bit [2:0] SpriteTableB_12_6[7:0][7:0] = '{'{3'd0,3'd1,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd0,3'd1,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd0,3'd1,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd0,3'd1,3'd2,3'd2,3'd2,3'd2,3'd2,3'd1},
'{3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableB_12_7[7:0][7:0] = '{'{3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableB_12_8[7:0][7:0] = '{'{3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd0},
'{3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0},
'{3'd0,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_12_9[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_12_10[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_12_11[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_12_12[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_12_13[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_13_0[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd0},
'{3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd1}};

parameter bit [2:0] SpriteTableB_13_1[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd1,3'd1,3'd1,3'd1,3'd2,3'd2,3'd2,3'd2},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd2,3'd2,3'd2},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd2,3'd2}};

parameter bit [2:0] SpriteTableB_13_2[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd2,3'd2},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd2,3'd2},
'{3'd2,3'd2,3'd0,3'd0,3'd0,3'd0,3'd2,3'd3},
'{3'd2,3'd2,3'd1,3'd0,3'd0,3'd0,3'd2,3'd3},
'{3'd2,3'd2,3'd1,3'd0,3'd0,3'd1,3'd3,3'd2},
'{3'd2,3'd2,3'd1,3'd0,3'd0,3'd0,3'd2,3'd2},
'{3'd2,3'd2,3'd0,3'd0,3'd0,3'd0,3'd2,3'd2},
'{3'd2,3'd2,3'd1,3'd0,3'd0,3'd0,3'd2,3'd2}};

parameter bit [2:0] SpriteTableB_13_3[7:0][7:0] = '{'{3'd2,3'd2,3'd1,3'd0,3'd0,3'd0,3'd2,3'd2},
'{3'd2,3'd2,3'd0,3'd0,3'd0,3'd0,3'd2,3'd2},
'{3'd2,3'd2,3'd0,3'd0,3'd0,3'd1,3'd3,3'd3},
'{3'd2,3'd2,3'd1,3'd0,3'd0,3'd1,3'd3,3'd3},
'{3'd2,3'd2,3'd1,3'd0,3'd0,3'd1,3'd3,3'd3},
'{3'd2,3'd2,3'd0,3'd0,3'd0,3'd1,3'd3,3'd2},
'{3'd2,3'd2,3'd0,3'd0,3'd0,3'd1,3'd2,3'd2},
'{3'd2,3'd2,3'd0,3'd0,3'd0,3'd0,3'd2,3'd2}};

parameter bit [2:0] SpriteTableB_13_4[7:0][7:0] = '{'{3'd2,3'd2,3'd0,3'd0,3'd0,3'd0,3'd2,3'd2},
'{3'd2,3'd2,3'd0,3'd0,3'd0,3'd1,3'd3,3'd2},
'{3'd2,3'd2,3'd1,3'd0,3'd0,3'd1,3'd3,3'd3},
'{3'd2,3'd2,3'd0,3'd0,3'd0,3'd1,3'd3,3'd3},
'{3'd2,3'd2,3'd0,3'd0,3'd0,3'd1,3'd2,3'd3},
'{3'd2,3'd2,3'd0,3'd0,3'd0,3'd1,3'd3,3'd2},
'{3'd2,3'd2,3'd0,3'd0,3'd0,3'd1,3'd3,3'd3},
'{3'd2,3'd2,3'd0,3'd0,3'd0,3'd1,3'd3,3'd3}};

parameter bit [2:0] SpriteTableB_13_5[7:0][7:0] = '{'{3'd2,3'd2,3'd0,3'd0,3'd0,3'd1,3'd4,3'd3},
'{3'd2,3'd2,3'd0,3'd0,3'd0,3'd1,3'd2,3'd2},
'{3'd2,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd2,3'd2,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd2,3'd2,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd2,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd2,3'd2,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd2,3'd2,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_13_6[7:0][7:0] = '{'{3'd2,3'd1,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1},
'{3'd2,3'd1,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1},
'{3'd2,3'd2,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1},
'{3'd2,3'd1,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableB_13_7[7:0][7:0] = '{'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd1,3'd1,3'd0},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd1,3'd1,3'd0},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd1,3'd1,3'd0}};

parameter bit [2:0] SpriteTableB_13_8[7:0][7:0] = '{'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd1,3'd0,3'd0},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd1,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd0,3'd0},
'{3'd0,3'd0,3'd1,3'd1,3'd0,3'd1,3'd1,3'd0},
'{3'd1,3'd1,3'd1,3'd0,3'd0,3'd1,3'd1,3'd0}};

parameter bit [2:0] SpriteTableB_13_9[7:0][7:0] = '{'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_13_10[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_13_11[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_13_12[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_13_13[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_14_0[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableB_14_1[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd3,3'd3,3'd3},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd3,3'd3},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2}};

parameter bit [2:0] SpriteTableB_14_2[7:0][7:0] = '{'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd2,3'd3,3'd3,3'd3,3'd2,3'd2,3'd2,3'd2},
'{3'd3,3'd3,3'd3,3'd3,3'd2,3'd2,3'd2,3'd2},
'{3'd3,3'd3,3'd3,3'd4,3'd3,3'd2,3'd2,3'd2},
'{3'd2,3'd2,3'd3,3'd3,3'd2,3'd2,3'd2,3'd2},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd3}};

parameter bit [2:0] SpriteTableB_14_3[7:0][7:0] = '{'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd3,3'd3},
'{3'd2,3'd2,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd3,3'd3,3'd3,3'd4,3'd3,3'd3,3'd3,3'd3},
'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd2},
'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd4,3'd3,3'd2},
'{3'd2,3'd3,3'd3,3'd2,3'd2,3'd3,3'd2,3'd2},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd3,3'd2,3'd3},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd3,3'd2,3'd3}};

parameter bit [2:0] SpriteTableB_14_4[7:0][7:0] = '{'{3'd2,3'd3,3'd3,3'd2,3'd2,3'd2,3'd2,3'd3},
'{3'd3,3'd3,3'd2,3'd2,3'd3,3'd3,3'd2,3'd2},
'{3'd3,3'd2,3'd2,3'd2,3'd3,3'd2,3'd3,3'd2},
'{3'd3,3'd2,3'd3,3'd2,3'd2,3'd2,3'd3,3'd3},
'{3'd4,3'd3,3'd3,3'd3,3'd3,3'd4,3'd3,3'd3},
'{3'd3,3'd4,3'd4,3'd3,3'd3,3'd3,3'd3,3'd2},
'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd2,3'd2},
'{3'd3,3'd4,3'd3,3'd3,3'd3,3'd2,3'd2,3'd1}};

parameter bit [2:0] SpriteTableB_14_5[7:0][7:0] = '{'{3'd3,3'd3,3'd3,3'd3,3'd1,3'd1,3'd0,3'd0},
'{3'd2,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd2},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_14_6[7:0][7:0] = '{'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1},
'{3'd1,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableB_14_7[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableB_14_8[7:0][7:0] = '{'{3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_14_9[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd0,3'd1,3'd1,3'd1},
'{3'd0,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_14_10[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_14_11[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_14_12[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_14_13[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_15_0[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_15_1[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd1,3'd1,3'd0,3'd1,3'd1,3'd1,3'd1},
'{3'd2,3'd3,3'd2,3'd2,3'd2,3'd2,3'd2,3'd3},
'{3'd2,3'd2,3'd3,3'd3,3'd3,3'd2,3'd3,3'd4},
'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd2,3'd3,3'd3},
'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd2},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd3,3'd2}};

parameter bit [2:0] SpriteTableB_15_2[7:0][7:0] = '{'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd2,3'd2,3'd2,3'd3,3'd3,3'd3,3'd2,3'd2},
'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd2,3'd3},
'{3'd3,3'd4,3'd3,3'd2,3'd3,3'd3,3'd3,3'd3}};

parameter bit [2:0] SpriteTableB_15_3[7:0][7:0] = '{'{3'd3,3'd3,3'd2,3'd2,3'd3,3'd2,3'd2,3'd3},
'{3'd3,3'd3,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd3,3'd3,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd3,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd3,3'd3,3'd3,3'd3,3'd2,3'd2,3'd2,3'd2},
'{3'd2,3'd3,3'd3,3'd3,3'd2,3'd3,3'd3,3'd3},
'{3'd3,3'd3,3'd3,3'd3,3'd2,3'd3,3'd3,3'd3},
'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd2,3'd2,3'd2}};

parameter bit [2:0] SpriteTableB_15_4[7:0][7:0] = '{'{3'd3,3'd3,3'd3,3'd2,3'd2,3'd2,3'd2,3'd3},
'{3'd2,3'd3,3'd3,3'd2,3'd2,3'd2,3'd2,3'd3},
'{3'd2,3'd2,3'd2,3'd2,3'd3,3'd3,3'd3,3'd3},
'{3'd3,3'd3,3'd2,3'd3,3'd4,3'd3,3'd2,3'd2},
'{3'd3,3'd2,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd2,3'd2,3'd2,3'd1,3'd1,3'd0,3'd0,3'd0},
'{3'd2,3'd2,3'd2,3'd2,3'd1,3'd0,3'd0,3'd0},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_15_5[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd1,3'd1,3'd1,3'd2,3'd2,3'd2,3'd2},
'{3'd1,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd1,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd0,3'd1,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd0,3'd1,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2}};

parameter bit [2:0] SpriteTableB_15_6[7:0][7:0] = '{'{3'd0,3'd1,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd1,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd1},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd1,3'd1,3'd0},
'{3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_15_7[7:0][7:0] = '{'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd1,3'd0,3'd0},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1},
'{3'd1,3'd1,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableB_15_8[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableB_15_9[7:0][7:0] = '{'{3'd0,3'd0,3'd1,3'd1,3'd0,3'd1,3'd1,3'd1},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_15_10[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_15_11[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_15_12[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_15_13[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_16_0[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd0},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableB_16_1[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd2,3'd3,3'd3,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd3,3'd3,3'd3,3'd3,3'd2,3'd2,3'd2,3'd2},
'{3'd3,3'd3,3'd3,3'd3,3'd2,3'd2,3'd3,3'd4},
'{3'd2,3'd3,3'd3,3'd3,3'd2,3'd3,3'd3,3'd4},
'{3'd3,3'd3,3'd3,3'd2,3'd2,3'd2,3'd2,3'd3}};

parameter bit [2:0] SpriteTableB_16_2[7:0][7:0] = '{'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd2,3'd2,3'd2,3'd2,3'd3,3'd3,3'd3,3'd2},
'{3'd2,3'd2,3'd2,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd2,3'd2,3'd2,3'd3,3'd3,3'd2,3'd3,3'd3},
'{3'd3,3'd3,3'd2,3'd2,3'd2,3'd3,3'd3,3'd2},
'{3'd3,3'd3,3'd3,3'd2,3'd1,3'd2,3'd2,3'd2}};

parameter bit [2:0] SpriteTableB_16_3[7:0][7:0] = '{'{3'd2,3'd2,3'd3,3'd2,3'd1,3'd1,3'd2,3'd2},
'{3'd2,3'd2,3'd2,3'd2,3'd1,3'd0,3'd2,3'd2},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd0,3'd1,3'd2},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd1,3'd2,3'd2},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd3},
'{3'd2,3'd2,3'd2,3'd2,3'd3,3'd3,3'd2,3'd4},
'{3'd2,3'd2,3'd2,3'd3,3'd3,3'd3,3'd2,3'd3},
'{3'd2,3'd2,3'd2,3'd3,3'd3,3'd3,3'd2,3'd2}};

parameter bit [2:0] SpriteTableB_16_4[7:0][7:0] = '{'{3'd4,3'd3,3'd3,3'd3,3'd4,3'd3,3'd2,3'd1},
'{3'd4,3'd3,3'd3,3'd3,3'd3,3'd3,3'd2,3'd2},
'{3'd4,3'd4,3'd3,3'd2,3'd2,3'd2,3'd3,3'd2},
'{3'd3,3'd3,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd2,3'd2,3'd3,3'd3,3'd3,3'd3,3'd4,3'd4},
'{3'd1,3'd2,3'd2,3'd3,3'd4,3'd4,3'd5,3'd7},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd2},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd2}};

parameter bit [2:0] SpriteTableB_16_5[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd0,3'd0,3'd1,3'd1,3'd1},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd1,3'd1,3'd1},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd4},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd1,3'd3,3'd4},
'{3'd2,3'd2,3'd2,3'd2,3'd1,3'd2,3'd2,3'd1},
'{3'd2,3'd2,3'd2,3'd2,3'd1,3'd1,3'd1,3'd1},
'{3'd2,3'd2,3'd2,3'd1,3'd0,3'd1,3'd2,3'd2}};

parameter bit [2:0] SpriteTableB_16_6[7:0][7:0] = '{'{3'd2,3'd2,3'd1,3'd1,3'd1,3'd2,3'd2,3'd2},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd1,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableB_16_7[7:0][7:0] = '{'{3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableB_16_8[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0},
'{3'd0,3'd0,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1}};

parameter bit [2:0] SpriteTableB_16_9[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1},
'{3'd1,3'd0,3'd0,3'd1,3'd1,3'd1,3'd0,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_16_10[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_16_11[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_16_12[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_16_13[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_17_0[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd2,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd2,3'd2,3'd2}};

parameter bit [2:0] SpriteTableB_17_1[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd2,3'd2,3'd1,3'd1,3'd2,3'd2,3'd1,3'd1},
'{3'd3,3'd3,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd5,3'd5,3'd4,3'd2,3'd2,3'd2,3'd2,3'd3},
'{3'd6,3'd7,3'd3,3'd3,3'd3,3'd2,3'd2,3'd3},
'{3'd5,3'd5,3'd3,3'd2,3'd2,3'd2,3'd2,3'd2}};

parameter bit [2:0] SpriteTableB_17_2[7:0][7:0] = '{'{3'd3,3'd3,3'd3,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd3,3'd3,3'd2,3'd2,3'd3,3'd2,3'd2,3'd3},
'{3'd3,3'd2,3'd2,3'd2,3'd3,3'd2,3'd2,3'd2},
'{3'd2,3'd2,3'd3,3'd3,3'd3,3'd2,3'd2,3'd2},
'{3'd2,3'd3,3'd3,3'd3,3'd3,3'd2,3'd2,3'd2},
'{3'd2,3'd3,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2}};

parameter bit [2:0] SpriteTableB_17_3[7:0][7:0] = '{'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd3,3'd3,3'd3},
'{3'd2,3'd3,3'd2,3'd1,3'd2,3'd3,3'd4,3'd4},
'{3'd4,3'd4,3'd3,3'd1,3'd1,3'd3,3'd3,3'd3},
'{3'd3,3'd3,3'd2,3'd1,3'd1,3'd2,3'd3,3'd2},
'{3'd2,3'd2,3'd2,3'd1,3'd1,3'd2,3'd2,3'd2},
'{3'd5,3'd2,3'd2,3'd2,3'd3,3'd2,3'd2,3'd2},
'{3'd5,3'd5,3'd1,3'd1,3'd3,3'd2,3'd1,3'd2}};

parameter bit [2:0] SpriteTableB_17_4[7:0][7:0] = '{'{3'd3,3'd7,3'd3,3'd1,3'd4,3'd3,3'd2,3'd5},
'{3'd2,3'd5,3'd7,3'd4,3'd7,3'd7,3'd5,3'd6},
'{3'd1,3'd3,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd1,3'd2,3'd7,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd4,3'd5,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd7,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd4,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd4,3'd7,3'd6,3'd6,3'd6,3'd6,3'd6,3'd4}};

parameter bit [2:0] SpriteTableB_17_5[7:0][7:0] = '{'{3'd1,3'd5,3'd6,3'd6,3'd6,3'd6,3'd6,3'd4},
'{3'd2,3'd7,3'd7,3'd4,3'd5,3'd5,3'd7,3'd5},
'{3'd7,3'd7,3'd2,3'd1,3'd3,3'd2,3'd4,3'd5},
'{3'd5,3'd2,3'd0,3'd0,3'd2,3'd2,3'd2,3'd5},
'{3'd2,3'd0,3'd1,3'd0,3'd1,3'd2,3'd1,3'd3},
'{3'd1,3'd0,3'd1,3'd0,3'd0,3'd1,3'd2,3'd2},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd1,3'd2,3'd1},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd2,3'd3,3'd2}};

parameter bit [2:0] SpriteTableB_17_6[7:0][7:0] = '{'{3'd1,3'd0,3'd0,3'd0,3'd1,3'd2,3'd3,3'd2},
'{3'd1,3'd0,3'd0,3'd0,3'd1,3'd2,3'd2,3'd2},
'{3'd1,3'd0,3'd0,3'd0,3'd2,3'd2,3'd2,3'd2},
'{3'd1,3'd0,3'd0,3'd0,3'd2,3'd3,3'd2,3'd3},
'{3'd0,3'd0,3'd0,3'd0,3'd3,3'd3,3'd2,3'd2},
'{3'd0,3'd0,3'd0,3'd0,3'd3,3'd3,3'd3,3'd2},
'{3'd0,3'd0,3'd0,3'd1,3'd2,3'd3,3'd3,3'd2},
'{3'd0,3'd0,3'd0,3'd1,3'd2,3'd2,3'd2,3'd0}};

parameter bit [2:0] SpriteTableB_17_7[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd1,3'd2,3'd1,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd0,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_17_8[7:0][7:0] = '{'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd0,3'd0,3'd1},
'{3'd0,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_17_9[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_17_10[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1}};

parameter bit [2:0] SpriteTableB_17_11[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_17_12[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_17_13[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_18_0[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd2,3'd2,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd1,3'd1}};

parameter bit [2:0] SpriteTableB_18_1[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd2,3'd2,3'd2},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd1,3'd0},
'{3'd2,3'd2,3'd3,3'd3,3'd3,3'd2,3'd2,3'd2},
'{3'd3,3'd3,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd3,3'd2,3'd2,3'd2,3'd2,3'd3,3'd3,3'd3}};

parameter bit [2:0] SpriteTableB_18_2[7:0][7:0] = '{'{3'd3,3'd2,3'd2,3'd2,3'd2,3'd3,3'd3,3'd3},
'{3'd3,3'd2,3'd2,3'd2,3'd2,3'd2,3'd3,3'd3},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd3,3'd3,3'd2},
'{3'd2,3'd2,3'd2,3'd2,3'd3,3'd3,3'd2,3'd2},
'{3'd2,3'd2,3'd2,3'd2,3'd3,3'd3,3'd3,3'd2},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd2,3'd2,3'd2,3'd2,3'd3,3'd2,3'd2,3'd2},
'{3'd2,3'd2,3'd3,3'd2,3'd3,3'd2,3'd1,3'd2}};

parameter bit [2:0] SpriteTableB_18_3[7:0][7:0] = '{'{3'd3,3'd3,3'd2,3'd3,3'd2,3'd2,3'd2,3'd5},
'{3'd3,3'd3,3'd3,3'd3,3'd2,3'd3,3'd7,3'd6},
'{3'd3,3'd3,3'd2,3'd2,3'd2,3'd7,3'd6,3'd7},
'{3'd3,3'd2,3'd1,3'd2,3'd5,3'd6,3'd6,3'd3},
'{3'd2,3'd2,3'd2,3'd5,3'd6,3'd6,3'd5,3'd2},
'{3'd2,3'd2,3'd5,3'd6,3'd6,3'd7,3'd2,3'd2},
'{3'd2,3'd5,3'd6,3'd6,3'd7,3'd3,3'd2,3'd2},
'{3'd5,3'd6,3'd6,3'd7,3'd3,3'd1,3'd2,3'd3}};

parameter bit [2:0] SpriteTableB_18_4[7:0][7:0] = '{'{3'd6,3'd6,3'd6,3'd4,3'd1,3'd2,3'd3,3'd2},
'{3'd6,3'd6,3'd4,3'd1,3'd1,3'd2,3'd2,3'd1},
'{3'd6,3'd5,3'd1,3'd1,3'd2,3'd2,3'd1,3'd0},
'{3'd6,3'd7,3'd4,3'd4,3'd4,3'd2,3'd1,3'd1},
'{3'd6,3'd6,3'd4,3'd2,3'd1,3'd1,3'd2,3'd2},
'{3'd6,3'd6,3'd4,3'd2,3'd2,3'd1,3'd1,3'd1},
'{3'd5,3'd5,3'd4,3'd4,3'd3,3'd3,3'd2,3'd1},
'{3'd1,3'd1,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2}};

parameter bit [2:0] SpriteTableB_18_5[7:0][7:0] = '{'{3'd1,3'd2,3'd2,3'd3,3'd3,3'd3,3'd3,3'd2},
'{3'd2,3'd3,3'd3,3'd3,3'd2,3'd2,3'd1,3'd0},
'{3'd2,3'd3,3'd3,3'd2,3'd0,3'd0,3'd0,3'd0},
'{3'd3,3'd2,3'd2,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd2,3'd2,3'd1,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd2,3'd1,3'd0,3'd0,3'd0,3'd0,3'd1,3'd2},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd1,3'd2,3'd2},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd2,3'd2}};

parameter bit [2:0] SpriteTableB_18_6[7:0][7:0] = '{'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd2,3'd2,3'd2},
'{3'd2,3'd0,3'd0,3'd0,3'd1,3'd2,3'd2,3'd2},
'{3'd2,3'd0,3'd0,3'd0,3'd1,3'd2,3'd2,3'd2},
'{3'd2,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableB_18_7[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_18_8[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_18_9[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableB_18_10[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableB_18_11[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableB_18_12[7:0][7:0] = '{'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_18_13[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd0},
'{3'd1,3'd0,3'd0,3'd1,3'd1,3'd1,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_19_0[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_19_1[7:0][7:0] = '{'{3'd2,3'd2,3'd2,3'd1,3'd1,3'd1,3'd0,3'd0},
'{3'd1,3'd1,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd2,3'd2},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd2,3'd2,3'd2,3'd1,3'd1,3'd0,3'd0,3'd0},
'{3'd2,3'd3,3'd3,3'd4,3'd3,3'd2,3'd2,3'd1},
'{3'd3,3'd3,3'd3,3'd3,3'd2,3'd3,3'd2,3'd2}};

parameter bit [2:0] SpriteTableB_19_2[7:0][7:0] = '{'{3'd4,3'd3,3'd3,3'd3,3'd3,3'd2,3'd2,3'd4},
'{3'd4,3'd3,3'd3,3'd4,3'd2,3'd2,3'd5,3'd4},
'{3'd3,3'd3,3'd3,3'd2,3'd2,3'd5,3'd5,3'd2},
'{3'd2,3'd2,3'd2,3'd2,3'd5,3'd5,3'd2,3'd1},
'{3'd2,3'd1,3'd2,3'd5,3'd7,3'd2,3'd1,3'd2},
'{3'd2,3'd2,3'd5,3'd7,3'd3,3'd2,3'd2,3'd3},
'{3'd3,3'd7,3'd6,3'd3,3'd2,3'd2,3'd3,3'd4},
'{3'd5,3'd6,3'd4,3'd1,3'd2,3'd2,3'd2,3'd2}};

parameter bit [2:0] SpriteTableB_19_3[7:0][7:0] = '{'{3'd6,3'd5,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd5,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd2,3'd1,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd1,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd3},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd3,3'd2},
'{3'd3,3'd3,3'd3,3'd3,3'd2,3'd2,3'd3,3'd3},
'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd2,3'd3}};

parameter bit [2:0] SpriteTableB_19_4[7:0][7:0] = '{'{3'd2,3'd2,3'd2,3'd3,3'd3,3'd3,3'd2,3'd2},
'{3'd1,3'd1,3'd2,3'd3,3'd3,3'd2,3'd2,3'd2},
'{3'd1,3'd2,3'd3,3'd2,3'd2,3'd2,3'd2,3'd3},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd3},
'{3'd2,3'd2,3'd2,3'd2,3'd3,3'd3,3'd3,3'd2},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd2,3'd3,3'd2},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd2,3'd2},
'{3'd2,3'd2,3'd2,3'd1,3'd1,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_19_5[7:0][7:0] = '{'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd2},
'{3'd0,3'd0,3'd1,3'd1,3'd2,3'd2,3'd2,3'd2},
'{3'd1,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd1}};

parameter bit [2:0] SpriteTableB_19_6[7:0][7:0] = '{'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd1,3'd1,3'd0},
'{3'd2,3'd2,3'd2,3'd1,3'd1,3'd0,3'd0,3'd0},
'{3'd2,3'd2,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1}};

parameter bit [2:0] SpriteTableB_19_7[7:0][7:0] = '{'{3'd1,3'd1,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1}};

parameter bit [2:0] SpriteTableB_19_8[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd0}};

parameter bit [2:0] SpriteTableB_19_9[7:0][7:0] = '{'{3'd1,3'd1,3'd0,3'd1,3'd1,3'd1,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_19_10[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd1,3'd1,3'd1,3'd0,3'd0,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableB_19_11[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableB_19_12[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableB_19_13[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd0,3'd1,3'd0},
'{3'd0,3'd0,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_20_0[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableB_20_1[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd2,3'd2,3'd2,3'd1,3'd0,3'd0,3'd0,3'd1},
'{3'd1,3'd1,3'd2,3'd1,3'd1,3'd1,3'd2,3'd2},
'{3'd0,3'd0,3'd1,3'd2,3'd1,3'd1,3'd2,3'd2},
'{3'd0,3'd1,3'd2,3'd1,3'd0,3'd0,3'd0,3'd1},
'{3'd1,3'd3,3'd2,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd3,3'd3,3'd2,3'd2,3'd1,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_20_2[7:0][7:0] = '{'{3'd3,3'd2,3'd3,3'd2,3'd2,3'd2,3'd1,3'd1},
'{3'd1,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd2,3'd2,3'd3,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd2,3'd3,3'd3,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd2,3'd3,3'd4,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd3,3'd5,3'd5,3'd4,3'd3,3'd3,3'd3,3'd3},
'{3'd5,3'd6,3'd6,3'd5,3'd4,3'd3,3'd4,3'd4},
'{3'd4,3'd7,3'd6,3'd4,3'd2,3'd2,3'd3,3'd3}};

parameter bit [2:0] SpriteTableB_20_3[7:0][7:0] = '{'{3'd3,3'd4,3'd5,3'd3,3'd2,3'd2,3'd2,3'd2},
'{3'd2,3'd3,3'd3,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd2,3'd3,3'd3,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd3,3'd3,3'd4,3'd2,3'd2,3'd2,3'd2,3'd3},
'{3'd3,3'd3,3'd3,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd3,3'd3,3'd3,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd3,3'd3,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd3,3'd2,3'd2,3'd3,3'd4,3'd3,3'd2,3'd3}};

parameter bit [2:0] SpriteTableB_20_4[7:0][7:0] = '{'{3'd2,3'd2,3'd3,3'd3,3'd4,3'd3,3'd2,3'd2},
'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd2,3'd3,3'd2},
'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd2,3'd3,3'd2},
'{3'd3,3'd3,3'd2,3'd2,3'd2,3'd2,3'd2,3'd3},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd1,3'd1},
'{3'd2,3'd2,3'd2,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1}};

parameter bit [2:0] SpriteTableB_20_5[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd2,3'd2},
'{3'd1,3'd1,3'd1,3'd1,3'd2,3'd2,3'd2,3'd2},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd1},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd1},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd2,3'd2,3'd1,3'd1,3'd1,3'd2,3'd2,3'd2},
'{3'd1,3'd0,3'd0,3'd0,3'd1,3'd2,3'd2,3'd2}};

parameter bit [2:0] SpriteTableB_20_6[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd2,3'd2,3'd2,3'd2},
'{3'd0,3'd0,3'd0,3'd1,3'd2,3'd2,3'd2,3'd2},
'{3'd0,3'd0,3'd0,3'd1,3'd2,3'd2,3'd2,3'd2},
'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableB_20_7[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd2},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_20_8[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_20_9[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_20_10[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableB_20_11[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_20_12[7:0][7:0] = '{'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd0,3'd0},
'{3'd0,3'd0,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0},
'{3'd0,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_20_13[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_21_0[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_21_1[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd2,3'd2,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd2,3'd2,3'd2,3'd2,3'd1,3'd1,3'd0},
'{3'd0,3'd1,3'd1,3'd1,3'd2,3'd2,3'd2,3'd2},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd2,3'd2}};

parameter bit [2:0] SpriteTableB_21_2[7:0][7:0] = '{'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd2,3'd2,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd2,3'd3,3'd3,3'd2,3'd2,3'd1,3'd0,3'd0},
'{3'd2,3'd3,3'd3,3'd2,3'd2,3'd2,3'd3,3'd2},
'{3'd2,3'd2,3'd2,3'd3,3'd3,3'd3,3'd4,3'd3},
'{3'd2,3'd2,3'd3,3'd3,3'd3,3'd4,3'd3,3'd3},
'{3'd3,3'd2,3'd2,3'd2,3'd2,3'd3,3'd3,3'd2},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd3,3'd3}};

parameter bit [2:0] SpriteTableB_21_3[7:0][7:0] = '{'{3'd2,3'd2,3'd2,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd2,3'd3,3'd3,3'd3,3'd3,3'd2,3'd2,3'd2},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd3,3'd3,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd3,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd2,3'd2,3'd3,3'd2,3'd3,3'd3,3'd2,3'd2},
'{3'd3,3'd3,3'd3,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd3,3'd2,3'd3,3'd2,3'd2,3'd2,3'd2,3'd2}};

parameter bit [2:0] SpriteTableB_21_4[7:0][7:0] = '{'{3'd3,3'd3,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd3,3'd3,3'd2,3'd2,3'd2,3'd2,3'd1,3'd1},
'{3'd2,3'd2,3'd2,3'd2,3'd1,3'd0,3'd0,3'd0},
'{3'd2,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd2,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1}};

parameter bit [2:0] SpriteTableB_21_5[7:0][7:0] = '{'{3'd2,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0},
'{3'd2,3'd2,3'd2,3'd2,3'd1,3'd0,3'd0,3'd0},
'{3'd2,3'd2,3'd2,3'd2,3'd1,3'd0,3'd0,3'd0},
'{3'd2,3'd2,3'd2,3'd2,3'd1,3'd0,3'd0,3'd0},
'{3'd2,3'd2,3'd2,3'd2,3'd1,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_21_6[7:0][7:0] = '{'{3'd2,3'd2,3'd2,3'd2,3'd0,3'd0,3'd0,3'd1},
'{3'd2,3'd2,3'd2,3'd1,3'd0,3'd0,3'd0,3'd1},
'{3'd2,3'd2,3'd2,3'd1,3'd0,3'd0,3'd0,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd2},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd2},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd1,3'd2},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd2,3'd2},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd3,3'd3}};

parameter bit [2:0] SpriteTableB_21_7[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd2,3'd3,3'd4},
'{3'd0,3'd0,3'd0,3'd1,3'd2,3'd2,3'd2,3'd3},
'{3'd0,3'd1,3'd2,3'd2,3'd3,3'd2,3'd2,3'd2},
'{3'd2,3'd3,3'd4,3'd3,3'd3,3'd3,3'd2,3'd2},
'{3'd2,3'd3,3'd3,3'd3,3'd3,3'd2,3'd2,3'd2},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd2},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_21_8[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableB_21_9[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableB_21_10[7:0][7:0] = '{'{3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_21_11[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd0,3'd0},
'{3'd0,3'd0,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_21_12[7:0][7:0] = '{'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_21_13[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_22_0[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_22_1[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd2,3'd2,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_22_2[7:0][7:0] = '{'{3'd1,3'd2,3'd2,3'd2,3'd1,3'd1,3'd0,3'd0},
'{3'd0,3'd0,3'd1,3'd1,3'd2,3'd2,3'd2,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd2,3'd2},
'{3'd2,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd3,3'd3,3'd2,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd4,3'd3,3'd2,3'd3,3'd2,3'd1,3'd0,3'd0},
'{3'd3,3'd3,3'd2,3'd3,3'd3,3'd3,3'd3,3'd2},
'{3'd2,3'd3,3'd2,3'd2,3'd3,3'd3,3'd3,3'd3}};

parameter bit [2:0] SpriteTableB_22_3[7:0][7:0] = '{'{3'd2,3'd3,3'd2,3'd2,3'd3,3'd3,3'd3,3'd3},
'{3'd2,3'd2,3'd2,3'd2,3'd3,3'd2,3'd2,3'd3},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd3,3'd3,3'd3},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd3,3'd3,3'd3}};

parameter bit [2:0] SpriteTableB_22_4[7:0][7:0] = '{'{3'd2,3'd1,3'd1,3'd2,3'd2,3'd3,3'd2,3'd2},
'{3'd0,3'd0,3'd0,3'd2,3'd3,3'd2,3'd2,3'd2},
'{3'd0,3'd0,3'd1,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd0,3'd1,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd1,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd3,3'd3},
'{3'd2,3'd2,3'd3,3'd3,3'd3,3'd2,3'd3,3'd2},
'{3'd2,3'd2,3'd3,3'd3,3'd3,3'd2,3'd2,3'd2}};

parameter bit [2:0] SpriteTableB_22_5[7:0][7:0] = '{'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd2,3'd2,3'd2,3'd2,3'd3,3'd3,3'd2,3'd3},
'{3'd2,3'd2,3'd2,3'd2,3'd3,3'd3,3'd2,3'd2},
'{3'd2,3'd2,3'd2,3'd2,3'd1,3'd1,3'd0,3'd0},
'{3'd2,3'd2,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd2,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd2,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd1}};

parameter bit [2:0] SpriteTableB_22_6[7:0][7:0] = '{'{3'd2,3'd3,3'd3,3'd3,3'd3,3'd2,3'd2,3'd2},
'{3'd2,3'd3,3'd3,3'd2,3'd2,3'd2,3'd2,3'd3},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd3},
'{3'd2,3'd2,3'd2,3'd2,3'd3,3'd3,3'd3,3'd3},
'{3'd2,3'd2,3'd2,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd2,3'd2,3'd2,3'd2,3'd3,3'd3,3'd3,3'd2},
'{3'd2,3'd2,3'd3,3'd3,3'd2,3'd3,3'd3,3'd3},
'{3'd3,3'd3,3'd3,3'd3,3'd2,3'd3,3'd3,3'd3}};

parameter bit [2:0] SpriteTableB_22_7[7:0][7:0] = '{'{3'd3,3'd2,3'd2,3'd2,3'd3,3'd3,3'd3,3'd3},
'{3'd3,3'd2,3'd2,3'd2,3'd3,3'd3,3'd3,3'd4},
'{3'd2,3'd2,3'd2,3'd2,3'd3,3'd3,3'd4,3'd4},
'{3'd2,3'd2,3'd2,3'd2,3'd3,3'd4,3'd4,3'd4},
'{3'd3,3'd2,3'd2,3'd2,3'd3,3'd3,3'd3,3'd3},
'{3'd3,3'd3,3'd2,3'd3,3'd3,3'd3,3'd2,3'd2},
'{3'd1,3'd1,3'd2,3'd3,3'd3,3'd3,3'd2,3'd2},
'{3'd0,3'd0,3'd0,3'd1,3'd2,3'd2,3'd2,3'd2}};

parameter bit [2:0] SpriteTableB_22_8[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd2,3'd2},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_22_9[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_22_10[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_22_11[7:0][7:0] = '{'{3'd0,3'd0,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_22_12[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_22_13[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_23_0[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_23_1[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_23_2[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd0,3'd0},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd1,3'd2,3'd2,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd1,3'd1,3'd2,3'd1,3'd1,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd2,3'd1,3'd0},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1},
'{3'd3,3'd2,3'd1,3'd0,3'd0,3'd0,3'd0,3'd1}};

parameter bit [2:0] SpriteTableB_23_3[7:0][7:0] = '{'{3'd3,3'd3,3'd3,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd3,3'd2,3'd2,3'd2,3'd2,3'd2,3'd1,3'd0},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd2,3'd2,3'd2,3'd2,3'd3,3'd3,3'd3,3'd3},
'{3'd2,3'd2,3'd3,3'd3,3'd3,3'd3,3'd3,3'd2},
'{3'd2,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3},
'{3'd2,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd2},
'{3'd3,3'd2,3'd3,3'd3,3'd2,3'd3,3'd3,3'd2}};

parameter bit [2:0] SpriteTableB_23_4[7:0][7:0] = '{'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd3,3'd3,3'd2},
'{3'd2,3'd2,3'd2,3'd3,3'd3,3'd3,3'd4,3'd2},
'{3'd2,3'd3,3'd3,3'd3,3'd3,3'd2,3'd3,3'd2},
'{3'd3,3'd3,3'd3,3'd3,3'd2,3'd3,3'd3,3'd3},
'{3'd3,3'd3,3'd3,3'd3,3'd2,3'd3,3'd3,3'd3},
'{3'd2,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd2},
'{3'd3,3'd3,3'd4,3'd3,3'd3,3'd3,3'd2,3'd2}};

parameter bit [2:0] SpriteTableB_23_5[7:0][7:0] = '{'{3'd3,3'd3,3'd3,3'd2,3'd2,3'd2,3'd1,3'd0},
'{3'd2,3'd2,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd2},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_23_6[7:0][7:0] = '{'{3'd2,3'd2,3'd2,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd3,3'd3,3'd3,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd4,3'd3,3'd2,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd3,3'd2,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd3,3'd2,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd3,3'd2,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1},
'{3'd2,3'd1,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1},
'{3'd2,3'd1,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableB_23_7[7:0][7:0] = '{'{3'd3,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1},
'{3'd3,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1},
'{3'd2,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1},
'{3'd2,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableB_23_8[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_23_9[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd1,3'd0,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_23_10[7:0][7:0] = '{'{3'd0,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_23_11[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_23_12[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_23_13[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_24_0[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_24_1[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1}};

parameter bit [2:0] SpriteTableB_24_2[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd0,3'd0,3'd0},
'{3'd0,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd2,3'd2},
'{3'd0,3'd0,3'd0,3'd1,3'd2,3'd2,3'd2,3'd2},
'{3'd0,3'd1,3'd1,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd1},
'{3'd1,3'd2,3'd2,3'd2,3'd2,3'd2,3'd1,3'd0}};

parameter bit [2:0] SpriteTableB_24_3[7:0][7:0] = '{'{3'd0,3'd1,3'd2,3'd2,3'd2,3'd1,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1},
'{3'd2,3'd1,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1},
'{3'd2,3'd2,3'd2,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd3,3'd3,3'd3,3'd2,3'd1,3'd0,3'd0,3'd0},
'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd2,3'd1,3'd0},
'{3'd2,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd2}};

parameter bit [2:0] SpriteTableB_24_4[7:0][7:0] = '{'{3'd2,3'd3,3'd3,3'd2,3'd2,3'd2,3'd3,3'd2},
'{3'd2,3'd2,3'd3,3'd2,3'd2,3'd3,3'd3,3'd3},
'{3'd2,3'd2,3'd2,3'd3,3'd2,3'd3,3'd3,3'd3},
'{3'd2,3'd2,3'd3,3'd3,3'd3,3'd2,3'd2,3'd2},
'{3'd2,3'd3,3'd3,3'd3,3'd3,3'd3,3'd2,3'd2},
'{3'd3,3'd3,3'd3,3'd3,3'd2,3'd2,3'd2,3'd0},
'{3'd3,3'd2,3'd3,3'd2,3'd1,3'd1,3'd0,3'd0},
'{3'd2,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_24_5[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd2,3'd2,3'd2},
'{3'd1,3'd1,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd1,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd0,3'd0,3'd1,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd0,3'd0,3'd1,3'd2,3'd2,3'd2,3'd2,3'd2}};

parameter bit [2:0] SpriteTableB_24_6[7:0][7:0] = '{'{3'd0,3'd0,3'd1,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd0,3'd0,3'd1,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd0,3'd1,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_24_7[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd0,3'd0,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableB_24_8[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1}};

parameter bit [2:0] SpriteTableB_24_9[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd0,3'd1},
'{3'd0,3'd0,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_24_10[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_24_11[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_24_12[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_24_13[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_25_0[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_25_1[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd0},
'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd0},
'{3'd0,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1}};

parameter bit [2:0] SpriteTableB_25_2[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd2,3'd2},
'{3'd1,3'd1,3'd1,3'd2,3'd2,3'd2,3'd1,3'd1},
'{3'd1,3'd2,3'd2,3'd2,3'd2,3'd1,3'd0,3'd0},
'{3'd2,3'd2,3'd2,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd2,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd2,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableB_25_3[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd0},
'{3'd1,3'd1,3'd1,3'd0,3'd1,3'd1,3'd1,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd0,3'd1,3'd0,3'd0},
'{3'd0,3'd0,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableB_25_4[7:0][7:0] = '{'{3'd2,3'd1,3'd0,3'd0,3'd0,3'd1,3'd1,3'd2},
'{3'd3,3'd2,3'd0,3'd0,3'd0,3'd1,3'd2,3'd2},
'{3'd3,3'd1,3'd0,3'd0,3'd0,3'd1,3'd2,3'd1},
'{3'd2,3'd0,3'd0,3'd0,3'd1,3'd2,3'd1,3'd0},
'{3'd0,3'd0,3'd0,3'd1,3'd2,3'd1,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0},
'{3'd0,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_25_5[7:0][7:0] = '{'{3'd1,3'd2,3'd1,3'd1,3'd1,3'd1,3'd1,3'd0},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd1},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2}};

parameter bit [2:0] SpriteTableB_25_6[7:0][7:0] = '{'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd2,3'd1,3'd1,3'd2,3'd2,3'd2,3'd2,3'd2},
'{3'd1,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableB_25_7[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableB_25_8[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd0,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_25_9[7:0][7:0] = '{'{3'd0,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd1,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_25_10[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_25_11[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_25_12[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_25_13[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_26_0[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_26_1[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1},
'{3'd0,3'd1,3'd1,3'd1,3'd2,3'd2,3'd2,3'd2},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd1,3'd1,3'd2}};

parameter bit [2:0] SpriteTableB_26_2[7:0][7:0] = '{'{3'd2,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd2},
'{3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd1,3'd2},
'{3'd1,3'd1,3'd1,3'd0,3'd0,3'd1,3'd2,3'd3},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd1,3'd2,3'd2}};

parameter bit [2:0] SpriteTableB_26_3[7:0][7:0] = '{'{3'd1,3'd1,3'd0,3'd0,3'd1,3'd2,3'd2,3'd2},
'{3'd1,3'd0,3'd0,3'd0,3'd2,3'd3,3'd2,3'd1},
'{3'd0,3'd0,3'd0,3'd1,3'd3,3'd3,3'd1,3'd0},
'{3'd0,3'd0,3'd1,3'd2,3'd3,3'd2,3'd0,3'd0},
'{3'd0,3'd0,3'd2,3'd3,3'd2,3'd1,3'd0,3'd0},
'{3'd0,3'd1,3'd2,3'd2,3'd1,3'd0,3'd0,3'd0},
'{3'd1,3'd2,3'd2,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd2,3'd2,3'd1,3'd0,3'd0,3'd0,3'd0,3'd1}};

parameter bit [2:0] SpriteTableB_26_4[7:0][7:0] = '{'{3'd2,3'd1,3'd0,3'd0,3'd0,3'd0,3'd1,3'd0},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd1,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_26_5[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd0,3'd0},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd0},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd0},
'{3'd2,3'd1,3'd0,3'd0,3'd0,3'd0,3'd1,3'd0},
'{3'd2,3'd1,3'd0,3'd0,3'd0,3'd0,3'd1,3'd0},
'{3'd2,3'd2,3'd0,3'd0,3'd0,3'd0,3'd1,3'd0},
'{3'd2,3'd2,3'd0,3'd0,3'd0,3'd0,3'd1,3'd0},
'{3'd2,3'd2,3'd1,3'd0,3'd0,3'd0,3'd1,3'd0}};

parameter bit [2:0] SpriteTableB_26_6[7:0][7:0] = '{'{3'd2,3'd2,3'd0,3'd0,3'd0,3'd0,3'd1,3'd0},
'{3'd2,3'd2,3'd0,3'd0,3'd0,3'd0,3'd1,3'd0},
'{3'd2,3'd2,3'd0,3'd0,3'd0,3'd0,3'd1,3'd0},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd1,3'd0},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd0},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd1,3'd0},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd1,3'd0},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd1,3'd0}};

parameter bit [2:0] SpriteTableB_26_7[7:0][7:0] = '{'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd1,3'd0},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_26_8[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_26_9[7:0][7:0] = '{'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_26_10[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_26_11[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_26_12[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_26_13[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_27_0[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_27_1[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd0},
'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd1,3'd0},
'{3'd2,3'd3,3'd2,3'd3,3'd3,3'd2,3'd1,3'd0}};

parameter bit [2:0] SpriteTableB_27_2[7:0][7:0] = '{'{3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd1,3'd0},
'{3'd2,3'd2,3'd2,3'd3,3'd2,3'd1,3'd0,3'd0},
'{3'd2,3'd2,3'd3,3'd3,3'd2,3'd0,3'd0,3'd0},
'{3'd2,3'd2,3'd2,3'd2,3'd1,3'd0,3'd0,3'd0},
'{3'd2,3'd2,3'd2,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd2,3'd2,3'd2,3'd1,3'd0,3'd0,3'd0,3'd1},
'{3'd2,3'd2,3'd1,3'd0,3'd0,3'd0,3'd1,3'd0},
'{3'd2,3'd1,3'd0,3'd0,3'd0,3'd1,3'd1,3'd0}};

parameter bit [2:0] SpriteTableB_27_3[7:0][7:0] = '{'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_27_4[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_27_5[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_27_6[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1},
'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd0},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_27_7[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd0},
'{3'd1,3'd0,3'd0,3'd0,3'd1,3'd1,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_27_8[7:0][7:0] = '{'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_27_9[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_27_10[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_27_11[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_27_12[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_27_13[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_28_0[2:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_28_1[2:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd0},
'{3'd0,3'd0,3'd1,3'd0,3'd0,3'd1,3'd1,3'd0},
'{3'd0,3'd1,3'd0,3'd0,3'd1,3'd0,3'd0,3'd1}};

parameter bit [2:0] SpriteTableB_28_2[2:0][7:0] = '{'{3'd0,3'd0,3'd1,3'd0,3'd1,3'd1,3'd0,3'd1},
'{3'd1,3'd1,3'd1,3'd0,3'd1,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_28_3[2:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_28_4[2:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_28_5[2:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_28_6[2:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd1,3'd0,3'd0,3'd1,3'd1}};

parameter bit [2:0] SpriteTableB_28_7[2:0][7:0] = '{'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_28_8[2:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_28_9[2:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_28_10[2:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_28_11[2:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_28_12[2:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_28_13[2:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

assign SpriteR = SpritePaletteR[SpriteTableR];
assign SpriteG = SpritePaletteG[SpriteTableG];
assign SpriteB = SpritePaletteB[SpriteTableB];

endmodule

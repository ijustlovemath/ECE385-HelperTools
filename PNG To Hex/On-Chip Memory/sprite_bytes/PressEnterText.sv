/*
    This sprite table was generated using 'conv_to_sv.py'. Find out more here: https://github.com/Atrifex/ECE385-HelperTools
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
module PressEnterText(input [9:0] SpriteX, SpriteY,
            output [7:0] SpriteR, SpriteG, SpriteB);

logic [9:0] X_Index, Y_Index;

assign X_Index = SpriteX % 10'd8;
assign Y_Index = SpriteY % 10'd8;
logic [9:0] SpriteTableR;

parameter bit [7:0] SpritePaletteR[6:0] = '{8'd0, 8'd144, 8'd182, 8'd102, 8'd58, 8'd219, 8'd255};

	always_comb
	begin
		SpriteTableR = 10'd0;
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableR = SpriteTableR_7_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableR = SpriteTableR_1_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableR = SpriteTableR_12_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd132 && SpriteY >= 10'd48 && SpriteY < 10'd49)
		begin
		    SpriteTableR = SpriteTableR_16_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableR = SpriteTableR_3_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableR = SpriteTableR_14_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableR = SpriteTableR_13_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableR = SpriteTableR_8_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd132 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableR = SpriteTableR_16_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableR = SpriteTableR_15_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableR = SpriteTableR_6_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd48 && SpriteY < 10'd49)
		begin
		    SpriteTableR = SpriteTableR_1_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableR = SpriteTableR_2_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableR = SpriteTableR_8_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableR = SpriteTableR_4_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableR = SpriteTableR_9_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd132 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableR = SpriteTableR_16_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableR = SpriteTableR_5_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableR = SpriteTableR_11_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd48 && SpriteY < 10'd49)
		begin
		    SpriteTableR = SpriteTableR_7_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd48 && SpriteY < 10'd49)
		begin
		    SpriteTableR = SpriteTableR_12_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableR = SpriteTableR_14_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableR = SpriteTableR_5_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableR = SpriteTableR_0_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableR = SpriteTableR_15_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableR = SpriteTableR_10_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableR = SpriteTableR_1_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableR = SpriteTableR_12_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableR = SpriteTableR_3_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd48 && SpriteY < 10'd49)
		begin
		    SpriteTableR = SpriteTableR_2_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableR = SpriteTableR_13_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableR = SpriteTableR_8_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableR = SpriteTableR_4_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableR = SpriteTableR_15_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableR = SpriteTableR_9_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableR = SpriteTableR_6_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableR = SpriteTableR_1_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableR = SpriteTableR_11_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableR = SpriteTableR_7_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableR = SpriteTableR_2_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableR = SpriteTableR_4_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableR = SpriteTableR_14_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd48 && SpriteY < 10'd49)
		begin
		    SpriteTableR = SpriteTableR_9_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableR = SpriteTableR_6_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableR = SpriteTableR_5_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableR = SpriteTableR_0_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableR = SpriteTableR_10_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableR = SpriteTableR_7_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableR = SpriteTableR_12_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableR = SpriteTableR_3_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableR = SpriteTableR_13_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd48 && SpriteY < 10'd49)
		begin
		    SpriteTableR = SpriteTableR_0_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd48 && SpriteY < 10'd49)
		begin
		    SpriteTableR = SpriteTableR_15_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd132 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableR = SpriteTableR_16_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableR = SpriteTableR_3_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableR = SpriteTableR_2_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableR = SpriteTableR_13_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableR = SpriteTableR_8_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd132 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableR = SpriteTableR_16_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableR = SpriteTableR_9_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd48 && SpriteY < 10'd49)
		begin
		    SpriteTableR = SpriteTableR_6_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd48 && SpriteY < 10'd49)
		begin
		    SpriteTableR = SpriteTableR_5_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableR = SpriteTableR_11_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd48 && SpriteY < 10'd49)
		begin
		    SpriteTableR = SpriteTableR_10_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd132 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableR = SpriteTableR_16_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableR = SpriteTableR_2_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableR = SpriteTableR_12_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableR = SpriteTableR_14_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableR = SpriteTableR_9_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableR = SpriteTableR_5_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableR = SpriteTableR_0_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableR = SpriteTableR_15_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableR = SpriteTableR_10_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableR = SpriteTableR_7_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableR = SpriteTableR_1_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableR = SpriteTableR_12_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableR = SpriteTableR_3_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableR = SpriteTableR_14_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableR = SpriteTableR_13_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableR = SpriteTableR_8_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableR = SpriteTableR_4_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableR = SpriteTableR_15_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd132 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableR = SpriteTableR_16_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableR = SpriteTableR_6_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableR = SpriteTableR_1_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableR = SpriteTableR_11_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd48 && SpriteY < 10'd49)
		begin
		    SpriteTableR = SpriteTableR_3_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableR = SpriteTableR_2_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd48 && SpriteY < 10'd49)
		begin
		    SpriteTableR = SpriteTableR_8_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableR = SpriteTableR_4_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableR = SpriteTableR_6_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableR = SpriteTableR_5_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableR = SpriteTableR_0_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableR = SpriteTableR_11_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableR = SpriteTableR_10_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableR = SpriteTableR_7_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd48 && SpriteY < 10'd49)
		begin
		    SpriteTableR = SpriteTableR_14_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd48 && SpriteY < 10'd49)
		begin
		    SpriteTableR = SpriteTableR_13_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableR = SpriteTableR_0_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableR = SpriteTableR_10_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableR = SpriteTableR_1_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableR = SpriteTableR_3_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableR = SpriteTableR_13_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableR = SpriteTableR_8_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd48 && SpriteY < 10'd49)
		begin
		    SpriteTableR = SpriteTableR_4_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableR = SpriteTableR_15_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableR = SpriteTableR_9_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableR = SpriteTableR_6_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableR = SpriteTableR_11_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableR = SpriteTableR_7_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableR = SpriteTableR_2_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableR = SpriteTableR_12_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableR = SpriteTableR_4_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableR = SpriteTableR_14_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableR = SpriteTableR_9_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableR = SpriteTableR_5_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableR = SpriteTableR_0_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd48 && SpriteY < 10'd49)
		begin
		    SpriteTableR = SpriteTableR_11_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableR = SpriteTableR_10_2[Y_Index][X_Index];
		end
	end

parameter bit [2:0] SpriteTableR_7_3[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
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

parameter bit [2:0] SpriteTableR_12_1[7:0][7:0] = '{'{3'd6,3'd6,3'd4,3'd0,3'd0,3'd2,3'd6,3'd6},
'{3'd6,3'd6,3'd4,3'd0,3'd0,3'd2,3'd6,3'd6},
'{3'd6,3'd6,3'd4,3'd0,3'd0,3'd2,3'd6,3'd6},
'{3'd6,3'd6,3'd4,3'd0,3'd0,3'd2,3'd6,3'd6},
'{3'd6,3'd6,3'd4,3'd0,3'd0,3'd1,3'd6,3'd6},
'{3'd6,3'd6,3'd4,3'd0,3'd0,3'd3,3'd6,3'd6},
'{3'd6,3'd6,3'd4,3'd0,3'd0,3'd0,3'd3,3'd6},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_16_6[3:0][0:0] = '{'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0}};

parameter bit [2:0] SpriteTableR_3_0[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd2,3'd6,3'd6,3'd6,3'd6},
'{3'd0,3'd3,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd4,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd2,3'd6,3'd6,3'd6,3'd2,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_14_4[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_13_4[7:0][7:0] = '{'{3'd0,3'd0,3'd3,3'd6,3'd6,3'd6,3'd6,3'd4},
'{3'd0,3'd0,3'd3,3'd6,3'd6,3'd6,3'd6,3'd0},
'{3'd6,3'd4,3'd4,3'd6,3'd6,3'd6,3'd5,3'd0},
'{3'd5,3'd0,3'd0,3'd6,3'd6,3'd6,3'd2,3'd0},
'{3'd1,3'd0,3'd0,3'd5,3'd6,3'd6,3'd2,3'd0},
'{3'd4,3'd0,3'd0,3'd2,3'd6,3'd6,3'd1,3'd0},
'{3'd0,3'd0,3'd0,3'd2,3'd6,3'd6,3'd3,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_8_0[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd4},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd4},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd4},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd4},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd4},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd4},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd4},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd4}};

parameter bit [2:0] SpriteTableR_16_1[3:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_15_1[7:0][7:0] = '{'{3'd6,3'd2,3'd0,3'd1,3'd6,3'd6,3'd6,3'd6},
'{3'd6,3'd2,3'd0,3'd1,3'd6,3'd6,3'd6,3'd5},
'{3'd0,3'd0,3'd0,3'd1,3'd6,3'd6,3'd6,3'd2},
'{3'd6,3'd3,3'd0,3'd1,3'd6,3'd6,3'd6,3'd2},
'{3'd2,3'd0,3'd0,3'd1,3'd6,3'd6,3'd6,3'd2},
'{3'd0,3'd0,3'd0,3'd1,3'd6,3'd6,3'd6,3'd2},
'{3'd0,3'd0,3'd0,3'd1,3'd6,3'd6,3'd6,3'd2},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_6_2[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_1_6[7:0][0:0] = '{'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0}};

parameter bit [2:0] SpriteTableR_2_5[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_8_5[7:0][7:0] = '{'{3'd0,3'd0,3'd2,3'd6,3'd6,3'd6,3'd1,3'd0},
'{3'd0,3'd4,3'd6,3'd6,3'd6,3'd6,3'd3,3'd0},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd0,3'd0},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd3,3'd0,3'd0},
'{3'd6,3'd6,3'd6,3'd6,3'd4,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_4_0[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd6,3'd2,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd6,3'd6,3'd6,3'd4,3'd0,3'd0,3'd0,3'd6},
'{3'd6,3'd6,3'd6,3'd6,3'd0,3'd0,3'd1,3'd6},
'{3'd5,3'd6,3'd6,3'd6,3'd1,3'd0,3'd2,3'd6}};

parameter bit [2:0] SpriteTableR_9_0[7:0][7:0] = '{'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd6,3'd6,3'd6,3'd6,3'd1,3'd0,3'd0,3'd0},
'{3'd6,3'd6,3'd6,3'd6,3'd1,3'd0,3'd0,3'd0},
'{3'd6,3'd6,3'd6,3'd6,3'd1,3'd0,3'd0,3'd0},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6}};

parameter bit [2:0] SpriteTableR_16_3[3:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_5_5[7:0][7:0] = '{'{3'd6,3'd3,3'd0,3'd0,3'd0,3'd2,3'd6,3'd6},
'{3'd6,3'd6,3'd0,3'd0,3'd3,3'd6,3'd6,3'd6},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd5},
'{3'd1,3'd6,3'd6,3'd6,3'd6,3'd6,3'd4,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_11_5[7:0][7:0] = '{'{3'd6,3'd6,3'd6,3'd4,3'd0,3'd0,3'd0,3'd5},
'{3'd6,3'd6,3'd6,3'd4,3'd0,3'd0,3'd0,3'd1},
'{3'd6,3'd6,3'd6,3'd4,3'd0,3'd0,3'd0,3'd0},
'{3'd6,3'd6,3'd6,3'd4,3'd0,3'd0,3'd0,3'd0},
'{3'd6,3'd6,3'd6,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd5,3'd6,3'd6},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd5,3'd6,3'd6}};

parameter bit [2:0] SpriteTableR_7_6[7:0][0:0] = '{'{3'd0},
'{3'd0},
'{3'd3},
'{3'd6},
'{3'd6},
'{3'd6},
'{3'd5},
'{3'd0}};

parameter bit [2:0] SpriteTableR_12_6[7:0][0:0] = '{'{3'd6},
'{3'd6},
'{3'd5},
'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0}};

parameter bit [2:0] SpriteTableR_14_1[7:0][7:0] = '{'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd6,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd6,3'd6,3'd0,3'd0,3'd4,3'd6,3'd6,3'd6},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd5},
'{3'd5,3'd6,3'd6,3'd6,3'd6,3'd6,3'd3,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_5_0[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd2,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd0},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd6,3'd6,3'd4,3'd0,3'd4,3'd6,3'd6,3'd6},
'{3'd6,3'd6,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_0_4[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_15_4[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_10_0[7:0][7:0] = '{'{3'd6,3'd6,3'd6,3'd6,3'd4,3'd0,3'd0,3'd0},
'{3'd6,3'd6,3'd6,3'd6,3'd4,3'd0,3'd0,3'd0},
'{3'd6,3'd6,3'd6,3'd6,3'd4,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd6},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd6},
'{3'd6,3'd6,3'd6,3'd2,3'd0,3'd0,3'd1,3'd6},
'{3'd6,3'd6,3'd6,3'd2,3'd0,3'd0,3'd1,3'd6}};

parameter bit [2:0] SpriteTableR_1_1[7:0][7:0] = '{'{3'd6,3'd6,3'd6,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_12_3[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
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
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_2_6[7:0][0:0] = '{'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0}};

parameter bit [2:0] SpriteTableR_13_2[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_8_2[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_4_5[7:0][7:0] = '{'{3'd6,3'd1,3'd0,3'd0,3'd0,3'd5,3'd6,3'd6},
'{3'd6,3'd1,3'd0,3'd0,3'd0,3'd1,3'd6,3'd6},
'{3'd6,3'd6,3'd6,3'd2,3'd0,3'd0,3'd6,3'd6},
'{3'd6,3'd6,3'd6,3'd5,3'd0,3'd0,3'd4,3'd6},
'{3'd6,3'd6,3'd6,3'd6,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_15_3[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_9_3[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd4,3'd6,3'd6,3'd6,3'd6,3'd0,3'd0,3'd0},
'{3'd4,3'd6,3'd6,3'd6,3'd6,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_6_0[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd2,3'd6,3'd6},
'{3'd3,3'd0,3'd0,3'd0,3'd6,3'd6,3'd6,3'd6},
'{3'd6,3'd0,3'd0,3'd1,3'd6,3'd6,3'd6,3'd4},
'{3'd0,3'd0,3'd0,3'd2,3'd6,3'd6,3'd6,3'd1}};

parameter bit [2:0] SpriteTableR_1_4[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
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
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd6,3'd6,3'd1,3'd0,3'd6,3'd6,3'd6,3'd6},
'{3'd6,3'd6,3'd5,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd6,3'd6,3'd6,3'd3,3'd0,3'd3,3'd6,3'd6}};

parameter bit [2:0] SpriteTableR_7_5[7:0][7:0] = '{'{3'd0,3'd0,3'd3,3'd6,3'd6,3'd6,3'd6,3'd0},
'{3'd0,3'd0,3'd3,3'd6,3'd6,3'd6,3'd6,3'd1},
'{3'd0,3'd0,3'd3,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd0,3'd0,3'd3,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd0,3'd0,3'd3,3'd6,3'd6,3'd6,3'd5,3'd4},
'{3'd0,3'd0,3'd3,3'd6,3'd6,3'd6,3'd5,3'd0},
'{3'd0,3'd0,3'd3,3'd6,3'd6,3'd6,3'd5,3'd0},
'{3'd0,3'd0,3'd3,3'd6,3'd6,3'd6,3'd5,3'd0}};

parameter bit [2:0] SpriteTableR_2_3[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_4_2[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_14_2[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_9_6[7:0][0:0] = '{'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0}};

parameter bit [2:0] SpriteTableR_6_5[7:0][7:0] = '{'{3'd6,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd6,3'd4,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd2,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_5_3[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_0_1[7:0][7:0] = '{'{3'd4,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd4,3'd6,3'd6,3'd6,3'd6,3'd1,3'd0,3'd0},
'{3'd4,3'd6,3'd6,3'd6,3'd6,3'd1,3'd0,3'd0},
'{3'd4,3'd6,3'd6,3'd6,3'd6,3'd1,3'd0,3'd0},
'{3'd4,3'd6,3'd6,3'd6,3'd6,3'd1,3'd0,3'd0},
'{3'd4,3'd6,3'd6,3'd6,3'd6,3'd1,3'd0,3'd0},
'{3'd4,3'd6,3'd6,3'd6,3'd6,3'd1,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_10_5[7:0][7:0] = '{'{3'd6,3'd6,3'd6,3'd6,3'd1,3'd0,3'd0,3'd6},
'{3'd6,3'd6,3'd6,3'd3,3'd0,3'd0,3'd1,3'd6},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd5,3'd2},
'{3'd3,3'd6,3'd6,3'd6,3'd6,3'd1,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_7_0[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd6,3'd6,3'd6,3'd6,3'd0,3'd0,3'd0,3'd0},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd3,3'd0,3'd0},
'{3'd0,3'd4,3'd6,3'd6,3'd6,3'd6,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_12_0[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd2,3'd6},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd2,3'd6,3'd6},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd2,3'd6,3'd6},
'{3'd1,3'd0,3'd0,3'd4,3'd6,3'd6,3'd6,3'd6},
'{3'd6,3'd1,3'd0,3'd4,3'd6,3'd6,3'd6,3'd6},
'{3'd6,3'd6,3'd0,3'd4,3'd6,3'd6,3'd6,3'd6},
'{3'd6,3'd6,3'd4,3'd0,3'd0,3'd2,3'd6,3'd6}};

parameter bit [2:0] SpriteTableR_3_1[7:0][7:0] = '{'{3'd5,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd5,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd5,3'd6,3'd6,3'd6,3'd1,3'd0,3'd0,3'd0},
'{3'd2,3'd6,3'd6,3'd6,3'd6,3'd0,3'd0,3'd4},
'{3'd4,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd0,3'd3,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd0,3'd0,3'd0,3'd5,3'd6,3'd6,3'd6,3'd6},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_13_5[7:0][7:0] = '{'{3'd0,3'd0,3'd4,3'd6,3'd6,3'd6,3'd6,3'd0},
'{3'd0,3'd0,3'd4,3'd6,3'd6,3'd6,3'd6,3'd0},
'{3'd0,3'd0,3'd4,3'd6,3'd6,3'd6,3'd6,3'd0},
'{3'd0,3'd0,3'd4,3'd6,3'd6,3'd6,3'd6,3'd0},
'{3'd0,3'd0,3'd4,3'd6,3'd6,3'd6,3'd6,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_0_6[7:0][0:0] = '{'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0}};

parameter bit [2:0] SpriteTableR_15_6[7:0][0:0] = '{'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0}};

parameter bit [2:0] SpriteTableR_16_5[3:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_3_4[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd2,3'd6,3'd6},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd2,3'd6,3'd6},
'{3'd0,3'd0,3'd0,3'd4,3'd6,3'd6,3'd6,3'd6},
'{3'd0,3'd0,3'd0,3'd4,3'd6,3'd6,3'd6,3'd6},
'{3'd0,3'd0,3'd0,3'd4,3'd6,3'd6,3'd6,3'd6},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd2,3'd6,3'd6},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd2,3'd6,3'd6},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd2,3'd6,3'd6}};

parameter bit [2:0] SpriteTableR_2_4[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_13_0[7:0][7:0] = '{'{3'd5,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd6,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd6,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd6,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd6,3'd6,3'd6,3'd5,3'd0,3'd0,3'd0,3'd0},
'{3'd6,3'd6,3'd6,3'd5,3'd0,3'd0,3'd3,3'd6},
'{3'd6,3'd6,3'd6,3'd5,3'd0,3'd4,3'd6,3'd6},
'{3'd6,3'd1,3'd0,3'd0,3'd0,3'd2,3'd6,3'd6}};

parameter bit [2:0] SpriteTableR_8_4[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd6,3'd6,3'd6,3'd6,3'd4,3'd0,3'd0,3'd0},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd3,3'd0,3'd0},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd0,3'd0},
'{3'd0,3'd4,3'd6,3'd6,3'd6,3'd6,3'd3,3'd0},
'{3'd0,3'd0,3'd2,3'd6,3'd6,3'd6,3'd1,3'd0},
'{3'd0,3'd0,3'd2,3'd6,3'd6,3'd6,3'd1,3'd0}};

parameter bit [2:0] SpriteTableR_16_0[3:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd1},
'{3'd6,3'd6,3'd6,3'd4,3'd1,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_9_1[7:0][7:0] = '{'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd6,3'd6,3'd6,3'd6,3'd1,3'd0,3'd0,3'd0},
'{3'd6,3'd6,3'd6,3'd6,3'd1,3'd0,3'd0,3'd0},
'{3'd6,3'd6,3'd6,3'd6,3'd1,3'd0,3'd0,3'd0},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_6_6[7:0][0:0] = '{'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0}};

parameter bit [2:0] SpriteTableR_5_6[7:0][0:0] = '{'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0}};

parameter bit [2:0] SpriteTableR_11_2[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_10_6[7:0][0:0] = '{'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0}};

parameter bit [2:0] SpriteTableR_16_2[3:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_2_1[7:0][7:0] = '{'{3'd6,3'd6,3'd6,3'd6,3'd0,3'd0,3'd0,3'd0},
'{3'd6,3'd6,3'd6,3'd5,3'd0,3'd0,3'd0,3'd0},
'{3'd6,3'd6,3'd6,3'd2,3'd0,3'd0,3'd0,3'd0},
'{3'd6,3'd6,3'd6,3'd2,3'd0,3'd0,3'd0,3'd0},
'{3'd6,3'd6,3'd6,3'd2,3'd0,3'd0,3'd0,3'd0},
'{3'd6,3'd6,3'd6,3'd2,3'd0,3'd0,3'd0,3'd0},
'{3'd6,3'd6,3'd6,3'd2,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_12_5[7:0][7:0] = '{'{3'd6,3'd6,3'd5,3'd2,3'd6,3'd6,3'd6,3'd0},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd1,3'd0},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd4,3'd0},
'{3'd2,3'd6,3'd6,3'd6,3'd6,3'd5,3'd0,3'd0},
'{3'd4,3'd6,3'd6,3'd6,3'd6,3'd1,3'd0,3'd0},
'{3'd3,3'd6,3'd6,3'd6,3'd6,3'd0,3'd0,3'd0},
'{3'd6,3'd6,3'd6,3'd6,3'd2,3'd0,3'd0,3'd0},
'{3'd6,3'd6,3'd6,3'd6,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_14_0[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd2,3'd6,3'd6,3'd6,3'd6,3'd6,3'd2,3'd0},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd6,3'd2,3'd0,3'd0,3'd0,3'd5,3'd6,3'd6}};

parameter bit [2:0] SpriteTableR_9_4[7:0][7:0] = '{'{3'd4,3'd6,3'd6,3'd6,3'd6,3'd0,3'd0,3'd0},
'{3'd4,3'd6,3'd6,3'd6,3'd6,3'd0,3'd0,3'd0},
'{3'd4,3'd6,3'd6,3'd6,3'd6,3'd0,3'd0,3'd0},
'{3'd4,3'd6,3'd6,3'd6,3'd6,3'd0,3'd0,3'd0},
'{3'd4,3'd6,3'd6,3'd6,3'd6,3'd0,3'd0,3'd4},
'{3'd4,3'd6,3'd6,3'd6,3'd6,3'd0,3'd0,3'd1},
'{3'd4,3'd6,3'd6,3'd6,3'd6,3'd0,3'd0,3'd0},
'{3'd4,3'd6,3'd6,3'd6,3'd6,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_5_1[7:0][7:0] = '{'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd1},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd0,3'd4,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd6,3'd6},
'{3'd6,3'd6,3'd1,3'd0,3'd0,3'd1,3'd6,3'd6},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd5,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd4},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_0_3[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_15_5[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_10_3[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_7_2[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
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

parameter bit [2:0] SpriteTableR_12_2[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_3_3[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd2,3'd6}};

parameter bit [2:0] SpriteTableR_14_5[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_13_3[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd3,3'd6,3'd6,3'd6,3'd6,3'd4},
'{3'd0,3'd0,3'd3,3'd6,3'd6,3'd6,3'd6,3'd4}};

parameter bit [2:0] SpriteTableR_8_1[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd4},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd4},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd4},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd4},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd4},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd4},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd4},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_4_4[7:0][7:0] = '{'{3'd6,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd6,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd6,3'd6,3'd6,3'd5,3'd0,3'd0,3'd0,3'd0},
'{3'd6,3'd6,3'd6,3'd5,3'd0,3'd0,3'd4,3'd6},
'{3'd6,3'd6,3'd6,3'd5,3'd0,3'd0,3'd6,3'd6},
'{3'd6,3'd1,3'd0,3'd0,3'd0,3'd1,3'd6,3'd6},
'{3'd6,3'd1,3'd0,3'd0,3'd0,3'd5,3'd6,3'd6},
'{3'd6,3'd1,3'd0,3'd0,3'd0,3'd5,3'd6,3'd6}};

parameter bit [2:0] SpriteTableR_15_0[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd1,3'd6,3'd6,3'd6,3'd1},
'{3'd4,3'd0,3'd0,3'd1,3'd6,3'd6,3'd6,3'd5},
'{3'd6,3'd0,3'd0,3'd1,3'd6,3'd6,3'd6,3'd6},
'{3'd6,3'd1,3'd0,3'd1,3'd6,3'd6,3'd6,3'd6}};

parameter bit [2:0] SpriteTableR_16_4[3:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_6_3[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_1_5[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_11_1[7:0][7:0] = '{'{3'd6,3'd6,3'd5,3'd0,3'd0,3'd0,3'd6,3'd6},
'{3'd6,3'd6,3'd5,3'd0,3'd0,3'd0,3'd6,3'd6},
'{3'd6,3'd6,3'd5,3'd0,3'd0,3'd0,3'd6,3'd6},
'{3'd6,3'd6,3'd5,3'd0,3'd0,3'd0,3'd6,3'd6},
'{3'd6,3'd6,3'd5,3'd0,3'd0,3'd0,3'd6,3'd6},
'{3'd6,3'd6,3'd5,3'd0,3'd0,3'd0,3'd6,3'd6},
'{3'd6,3'd6,3'd5,3'd0,3'd0,3'd0,3'd6,3'd6},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_3_6[7:0][0:0] = '{'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0}};

parameter bit [2:0] SpriteTableR_2_2[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_8_6[7:0][0:0] = '{'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0}};

parameter bit [2:0] SpriteTableR_4_1[7:0][7:0] = '{'{3'd6,3'd6,3'd6,3'd6,3'd2,3'd0,3'd3,3'd6},
'{3'd6,3'd6,3'd6,3'd6,3'd2,3'd0,3'd0,3'd2},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd6,3'd6,3'd6,3'd6,3'd3,3'd0,3'd0,3'd0},
'{3'd6,3'd6,3'd6,3'd2,3'd0,3'd0,3'd5,3'd6},
'{3'd6,3'd6,3'd5,3'd0,3'd0,3'd0,3'd3,3'd6},
'{3'd6,3'd3,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_6_4[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd5,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd6,3'd3,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd6,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd6,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_5_4[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd6,3'd6,3'd6,3'd6,3'd6,3'd3,3'd0},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd5},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd6,3'd6,3'd0,3'd0,3'd3,3'd6,3'd6,3'd6},
'{3'd6,3'd3,3'd0,3'd0,3'd0,3'd2,3'd6,3'd6},
'{3'd6,3'd3,3'd0,3'd0,3'd0,3'd2,3'd6,3'd6}};

parameter bit [2:0] SpriteTableR_0_0[7:0][7:0] = '{'{3'd4,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd4,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd4,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd4,3'd6,3'd6,3'd6,3'd6,3'd1,3'd0,3'd0},
'{3'd4,3'd6,3'd6,3'd6,3'd6,3'd1,3'd0,3'd0},
'{3'd4,3'd6,3'd6,3'd6,3'd6,3'd1,3'd0,3'd0},
'{3'd4,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd4,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6}};

parameter bit [2:0] SpriteTableR_11_4[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd6,3'd0,3'd0,3'd0,3'd3,3'd6,3'd6,3'd6},
'{3'd6,3'd6,3'd3,3'd0,3'd0,3'd6,3'd6,3'd6},
'{3'd6,3'd6,3'd5,3'd0,3'd0,3'd1,3'd6,3'd6},
'{3'd6,3'd6,3'd6,3'd0,3'd0,3'd4,3'd6,3'd6},
'{3'd6,3'd6,3'd6,3'd4,3'd0,3'd0,3'd2,3'd6},
'{3'd6,3'd6,3'd6,3'd4,3'd0,3'd0,3'd3,3'd6}};

parameter bit [2:0] SpriteTableR_10_4[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd4,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd1,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd6,3'd6,3'd6,3'd2,3'd0,3'd0,3'd0,3'd6},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd2,3'd6,3'd6},
'{3'd0,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6}};

parameter bit [2:0] SpriteTableR_7_1[7:0][7:0] = '{'{3'd6,3'd6,3'd6,3'd6,3'd1,3'd0,3'd0,3'd0},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd5,3'd0,3'd0},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd3,3'd0},
'{3'd0,3'd0,3'd1,3'd6,3'd6,3'd6,3'd1,3'd0},
'{3'd0,3'd0,3'd1,3'd6,3'd6,3'd6,3'd3,3'd0},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd2,3'd0,3'd0},
'{3'd6,3'd6,3'd6,3'd6,3'd4,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_14_6[7:0][0:0] = '{'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0}};

parameter bit [2:0] SpriteTableR_13_6[7:0][0:0] = '{'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0}};

parameter bit [2:0] SpriteTableR_0_5[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_10_1[7:0][7:0] = '{'{3'd6,3'd6,3'd6,3'd2,3'd0,3'd0,3'd1,3'd6},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd6},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd6},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd6},
'{3'd6,3'd6,3'd6,3'd6,3'd3,3'd0,3'd1,3'd6},
'{3'd6,3'd6,3'd6,3'd6,3'd3,3'd0,3'd1,3'd6},
'{3'd6,3'd6,3'd6,3'd6,3'd3,3'd0,3'd1,3'd6},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_1_0[7:0][7:0] = '{'{3'd6,3'd6,3'd6,3'd3,3'd0,3'd0,3'd0,3'd0},
'{3'd6,3'd6,3'd6,3'd6,3'd2,3'd0,3'd0,3'd0},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd4,3'd0,3'd0},
'{3'd1,3'd6,3'd6,3'd6,3'd6,3'd1,3'd0,3'd0},
'{3'd4,3'd6,3'd6,3'd6,3'd6,3'd1,3'd0,3'd1},
'{3'd1,3'd6,3'd6,3'd6,3'd6,3'd3,3'd0,3'd1},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd4,3'd0,3'd1},
'{3'd6,3'd6,3'd6,3'd6,3'd1,3'd0,3'd0,3'd1}};

parameter bit [2:0] SpriteTableR_3_5[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd2,3'd6,3'd6},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd2,3'd6,3'd6},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd6,3'd6},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd3,3'd6,3'd6},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd3,3'd6},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_13_1[7:0][7:0] = '{'{3'd6,3'd1,3'd0,3'd0,3'd0,3'd5,3'd6,3'd6},
'{3'd6,3'd1,3'd0,3'd0,3'd0,3'd5,3'd6,3'd6},
'{3'd6,3'd1,3'd0,3'd0,3'd0,3'd5,3'd6,3'd6},
'{3'd6,3'd1,3'd0,3'd0,3'd0,3'd2,3'd6,3'd6},
'{3'd6,3'd6,3'd6,3'd2,3'd0,3'd4,3'd6,3'd6},
'{3'd6,3'd6,3'd6,3'd5,3'd0,3'd0,3'd3,3'd6},
'{3'd6,3'd6,3'd6,3'd6,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_8_3[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_4_6[7:0][0:0] = '{'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0}};

parameter bit [2:0] SpriteTableR_15_2[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_9_2[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_6_1[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd3,3'd6,3'd6,3'd6,3'd6},
'{3'd5,3'd0,3'd0,3'd0,3'd2,3'd6,3'd6,3'd6},
'{3'd6,3'd3,3'd0,3'd0,3'd0,3'd0,3'd4,3'd6},
'{3'd6,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd6,3'd3,3'd0,3'd5,3'd6,3'd6,3'd6,3'd1},
'{3'd2,3'd0,3'd0,3'd3,3'd6,3'd6,3'd6,3'd6},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd5,3'd6,3'd6},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_11_3[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_7_4[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd3,3'd6,3'd6,3'd6,3'd2,3'd0},
'{3'd0,3'd0,3'd3,3'd6,3'd6,3'd6,3'd5,3'd6},
'{3'd0,3'd0,3'd3,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd0,3'd0,3'd3,3'd6,3'd6,3'd6,3'd6,3'd1},
'{3'd0,3'd0,3'd3,3'd6,3'd6,3'd6,3'd6,3'd0},
'{3'd0,3'd0,3'd3,3'd6,3'd6,3'd6,3'd5,3'd0}};

parameter bit [2:0] SpriteTableR_2_0[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd6,3'd6,3'd6,3'd1,3'd1,3'd6,3'd6,3'd6},
'{3'd6,3'd6,3'd6,3'd5,3'd6,3'd6,3'd6,3'd1},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd4},
'{3'd6,3'd6,3'd6,3'd6,3'd1,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_12_4[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd6,3'd0,3'd0,3'd0,3'd0,3'd5,3'd6,3'd6},
'{3'd6,3'd3,3'd0,3'd0,3'd4,3'd6,3'd6,3'd6},
'{3'd6,3'd2,3'd0,3'd0,3'd1,3'd6,3'd6,3'd6},
'{3'd6,3'd5,3'd0,3'd0,3'd5,3'd6,3'd6,3'd6},
'{3'd6,3'd6,3'd4,3'd0,3'd6,3'd6,3'd6,3'd2},
'{3'd6,3'd6,3'd1,3'd3,3'd6,3'd6,3'd6,3'd3}};

parameter bit [2:0] SpriteTableR_4_3[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd5,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd6,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_14_3[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_9_5[7:0][7:0] = '{'{3'd4,3'd6,3'd6,3'd6,3'd6,3'd0,3'd0,3'd1},
'{3'd4,3'd6,3'd6,3'd6,3'd6,3'd0,3'd0,3'd5},
'{3'd4,3'd6,3'd6,3'd6,3'd6,3'd0,3'd0,3'd5},
'{3'd4,3'd6,3'd6,3'd6,3'd6,3'd0,3'd0,3'd1},
'{3'd4,3'd6,3'd6,3'd6,3'd6,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableR_5_2[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
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

parameter bit [2:0] SpriteTableR_11_6[7:0][0:0] = '{'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0},
'{3'd2},
'{3'd6},
'{3'd6}};

parameter bit [2:0] SpriteTableR_10_2[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

logic [9:0] SpriteTableG;

parameter bit [7:0] SpritePaletteG[6:0] = '{8'd144, 8'd0, 8'd182, 8'd102, 8'd58, 8'd219, 8'd255};

	always_comb
	begin
		SpriteTableG = 10'd0;
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableG = SpriteTableG_7_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableG = SpriteTableG_1_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableG = SpriteTableG_12_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd132 && SpriteY >= 10'd48 && SpriteY < 10'd49)
		begin
		    SpriteTableG = SpriteTableG_16_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableG = SpriteTableG_3_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableG = SpriteTableG_14_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableG = SpriteTableG_13_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableG = SpriteTableG_8_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd132 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableG = SpriteTableG_16_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableG = SpriteTableG_15_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableG = SpriteTableG_6_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd48 && SpriteY < 10'd49)
		begin
		    SpriteTableG = SpriteTableG_1_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableG = SpriteTableG_2_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableG = SpriteTableG_8_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableG = SpriteTableG_4_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableG = SpriteTableG_9_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd132 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableG = SpriteTableG_16_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableG = SpriteTableG_5_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableG = SpriteTableG_11_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd48 && SpriteY < 10'd49)
		begin
		    SpriteTableG = SpriteTableG_7_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd48 && SpriteY < 10'd49)
		begin
		    SpriteTableG = SpriteTableG_12_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableG = SpriteTableG_14_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableG = SpriteTableG_5_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableG = SpriteTableG_0_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableG = SpriteTableG_15_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableG = SpriteTableG_10_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableG = SpriteTableG_1_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableG = SpriteTableG_12_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableG = SpriteTableG_3_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd48 && SpriteY < 10'd49)
		begin
		    SpriteTableG = SpriteTableG_2_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableG = SpriteTableG_13_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableG = SpriteTableG_8_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableG = SpriteTableG_4_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableG = SpriteTableG_15_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableG = SpriteTableG_9_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableG = SpriteTableG_6_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableG = SpriteTableG_1_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableG = SpriteTableG_11_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableG = SpriteTableG_7_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableG = SpriteTableG_2_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableG = SpriteTableG_4_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableG = SpriteTableG_14_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd48 && SpriteY < 10'd49)
		begin
		    SpriteTableG = SpriteTableG_9_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableG = SpriteTableG_6_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableG = SpriteTableG_5_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableG = SpriteTableG_0_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableG = SpriteTableG_10_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableG = SpriteTableG_7_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableG = SpriteTableG_12_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableG = SpriteTableG_3_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableG = SpriteTableG_13_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd48 && SpriteY < 10'd49)
		begin
		    SpriteTableG = SpriteTableG_0_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd48 && SpriteY < 10'd49)
		begin
		    SpriteTableG = SpriteTableG_15_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd132 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableG = SpriteTableG_16_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableG = SpriteTableG_3_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableG = SpriteTableG_2_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableG = SpriteTableG_13_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableG = SpriteTableG_8_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd132 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableG = SpriteTableG_16_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableG = SpriteTableG_9_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd48 && SpriteY < 10'd49)
		begin
		    SpriteTableG = SpriteTableG_6_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd48 && SpriteY < 10'd49)
		begin
		    SpriteTableG = SpriteTableG_5_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableG = SpriteTableG_11_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd48 && SpriteY < 10'd49)
		begin
		    SpriteTableG = SpriteTableG_10_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd132 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableG = SpriteTableG_16_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableG = SpriteTableG_2_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableG = SpriteTableG_12_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableG = SpriteTableG_14_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableG = SpriteTableG_9_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableG = SpriteTableG_5_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableG = SpriteTableG_0_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableG = SpriteTableG_15_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableG = SpriteTableG_10_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableG = SpriteTableG_7_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableG = SpriteTableG_1_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableG = SpriteTableG_12_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableG = SpriteTableG_3_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableG = SpriteTableG_14_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableG = SpriteTableG_13_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableG = SpriteTableG_8_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableG = SpriteTableG_4_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableG = SpriteTableG_15_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd132 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableG = SpriteTableG_16_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableG = SpriteTableG_6_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableG = SpriteTableG_1_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableG = SpriteTableG_11_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd48 && SpriteY < 10'd49)
		begin
		    SpriteTableG = SpriteTableG_3_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableG = SpriteTableG_2_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd48 && SpriteY < 10'd49)
		begin
		    SpriteTableG = SpriteTableG_8_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableG = SpriteTableG_4_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableG = SpriteTableG_6_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableG = SpriteTableG_5_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableG = SpriteTableG_0_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableG = SpriteTableG_11_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableG = SpriteTableG_10_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableG = SpriteTableG_7_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd48 && SpriteY < 10'd49)
		begin
		    SpriteTableG = SpriteTableG_14_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd48 && SpriteY < 10'd49)
		begin
		    SpriteTableG = SpriteTableG_13_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableG = SpriteTableG_0_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableG = SpriteTableG_10_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableG = SpriteTableG_1_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableG = SpriteTableG_3_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableG = SpriteTableG_13_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableG = SpriteTableG_8_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd48 && SpriteY < 10'd49)
		begin
		    SpriteTableG = SpriteTableG_4_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableG = SpriteTableG_15_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableG = SpriteTableG_9_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableG = SpriteTableG_6_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableG = SpriteTableG_11_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableG = SpriteTableG_7_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableG = SpriteTableG_2_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableG = SpriteTableG_12_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableG = SpriteTableG_4_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableG = SpriteTableG_14_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableG = SpriteTableG_9_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableG = SpriteTableG_5_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableG = SpriteTableG_0_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd48 && SpriteY < 10'd49)
		begin
		    SpriteTableG = SpriteTableG_11_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableG = SpriteTableG_10_2[Y_Index][X_Index];
		end
	end

parameter bit [2:0] SpriteTableG_7_3[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_1_3[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_12_1[7:0][7:0] = '{'{3'd6,3'd5,3'd1,3'd1,3'd1,3'd6,3'd6,3'd6},
'{3'd6,3'd5,3'd1,3'd1,3'd1,3'd6,3'd6,3'd6},
'{3'd6,3'd5,3'd1,3'd1,3'd1,3'd6,3'd6,3'd6},
'{3'd6,3'd5,3'd1,3'd1,3'd1,3'd6,3'd6,3'd6},
'{3'd6,3'd5,3'd1,3'd1,3'd1,3'd5,3'd6,3'd6},
'{3'd6,3'd5,3'd1,3'd1,3'd1,3'd2,3'd6,3'd6},
'{3'd6,3'd5,3'd1,3'd1,3'd1,3'd1,3'd2,3'd6},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_16_6[3:0][0:0] = '{'{3'd1},
'{3'd1},
'{3'd1},
'{3'd1}};

parameter bit [2:0] SpriteTableG_3_0[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd1,3'd2,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd1,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd6,3'd6,3'd6,3'd6,3'd3,3'd1,3'd1,3'd4}};

parameter bit [2:0] SpriteTableG_14_4[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_13_4[7:0][7:0] = '{'{3'd1,3'd1,3'd2,3'd6,3'd6,3'd6,3'd5,3'd1},
'{3'd1,3'd1,3'd2,3'd6,3'd6,3'd6,3'd2,3'd1},
'{3'd5,3'd1,3'd1,3'd6,3'd6,3'd6,3'd1,3'd1},
'{3'd1,3'd1,3'd3,3'd6,3'd6,3'd6,3'd3,3'd1},
'{3'd4,3'd1,3'd4,3'd6,3'd6,3'd6,3'd3,3'd1},
'{3'd1,3'd1,3'd1,3'd6,3'd6,3'd6,3'd4,3'd1},
'{3'd1,3'd1,3'd1,3'd6,3'd6,3'd6,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_8_0[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_16_1[3:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_15_1[7:0][7:0] = '{'{3'd6,3'd3,3'd1,3'd5,3'd6,3'd6,3'd6,3'd2},
'{3'd6,3'd3,3'd1,3'd5,3'd6,3'd6,3'd6,3'd1},
'{3'd1,3'd1,3'd1,3'd5,3'd6,3'd6,3'd6,3'd3},
'{3'd6,3'd1,3'd1,3'd5,3'd6,3'd6,3'd6,3'd3},
'{3'd3,3'd1,3'd1,3'd5,3'd6,3'd6,3'd6,3'd3},
'{3'd1,3'd1,3'd1,3'd5,3'd6,3'd6,3'd6,3'd3},
'{3'd1,3'd1,3'd1,3'd5,3'd6,3'd6,3'd6,3'd3},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_6_2[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_1_6[7:0][0:0] = '{'{3'd1},
'{3'd1},
'{3'd1},
'{3'd1},
'{3'd1},
'{3'd1},
'{3'd1},
'{3'd1}};

parameter bit [2:0] SpriteTableG_2_5[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_8_5[7:0][7:0] = '{'{3'd1,3'd1,3'd6,3'd6,3'd6,3'd6,3'd4,3'd1},
'{3'd1,3'd1,3'd6,3'd6,3'd6,3'd6,3'd1,3'd1},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd2,3'd1,3'd1},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd1,3'd1,3'd1},
'{3'd6,3'd6,3'd6,3'd5,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_4_0[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd6,3'd3,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd6,3'd6,3'd5,3'd1,3'd1,3'd1,3'd3,3'd6},
'{3'd6,3'd6,3'd6,3'd2,3'd1,3'd1,3'd5,3'd6},
'{3'd6,3'd6,3'd6,3'd6,3'd4,3'd1,3'd6,3'd6}};

parameter bit [2:0] SpriteTableG_9_0[7:0][7:0] = '{'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd6,3'd6,3'd6,3'd6,3'd4,3'd1,3'd1,3'd1},
'{3'd6,3'd6,3'd6,3'd6,3'd4,3'd1,3'd1,3'd1},
'{3'd6,3'd6,3'd6,3'd6,3'd4,3'd1,3'd1,3'd1},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6}};

parameter bit [2:0] SpriteTableG_16_3[3:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_5_5[7:0][7:0] = '{'{3'd6,3'd1,3'd1,3'd1,3'd1,3'd6,3'd6,3'd6},
'{3'd6,3'd2,3'd1,3'd1,3'd2,3'd6,3'd6,3'd6},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd1},
'{3'd5,3'd6,3'd6,3'd6,3'd6,3'd5,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_11_5[7:0][7:0] = '{'{3'd6,3'd6,3'd5,3'd1,3'd1,3'd1,3'd4,3'd6},
'{3'd6,3'd6,3'd5,3'd1,3'd1,3'd1,3'd1,3'd5},
'{3'd6,3'd6,3'd5,3'd1,3'd1,3'd1,3'd1,3'd3},
'{3'd6,3'd6,3'd5,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd6,3'd6,3'd6,3'd4,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd4,3'd6,3'd6,3'd6},
'{3'd1,3'd1,3'd1,3'd1,3'd4,3'd6,3'd6,3'd6}};

parameter bit [2:0] SpriteTableG_7_6[7:0][0:0] = '{'{3'd1},
'{3'd1},
'{3'd2},
'{3'd6},
'{3'd6},
'{3'd6},
'{3'd1},
'{3'd1}};

parameter bit [2:0] SpriteTableG_12_6[7:0][0:0] = '{'{3'd6},
'{3'd6},
'{3'd1},
'{3'd1},
'{3'd1},
'{3'd1},
'{3'd1},
'{3'd1}};

parameter bit [2:0] SpriteTableG_14_1[7:0][7:0] = '{'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd6,3'd4,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd6,3'd2,3'd1,3'd1,3'd1,3'd6,3'd6,3'd6},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd1},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_5_0[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd2,3'd1},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd6,3'd5,3'd1,3'd1,3'd1,3'd6,3'd6,3'd6},
'{3'd6,3'd6,3'd4,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_0_4[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_15_4[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_10_0[7:0][7:0] = '{'{3'd6,3'd6,3'd6,3'd5,3'd1,3'd1,3'd1,3'd1},
'{3'd6,3'd6,3'd6,3'd5,3'd1,3'd1,3'd1,3'd1},
'{3'd6,3'd6,3'd6,3'd5,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd5,3'd6},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd5,3'd6},
'{3'd6,3'd6,3'd6,3'd3,3'd1,3'd1,3'd5,3'd6},
'{3'd6,3'd6,3'd6,3'd3,3'd1,3'd1,3'd5,3'd6}};

parameter bit [2:0] SpriteTableG_1_1[7:0][7:0] = '{'{3'd6,3'd6,3'd2,3'd1,3'd1,3'd1,3'd1,3'd5},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd5},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd5},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd5},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd5},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd5},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd5},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_12_3[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_3_2[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_2_6[7:0][0:0] = '{'{3'd1},
'{3'd1},
'{3'd1},
'{3'd1},
'{3'd1},
'{3'd1},
'{3'd1},
'{3'd1}};

parameter bit [2:0] SpriteTableG_13_2[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_8_2[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_4_5[7:0][7:0] = '{'{3'd6,3'd4,3'd1,3'd1,3'd4,3'd6,3'd6,3'd6},
'{3'd6,3'd4,3'd1,3'd1,3'd1,3'd5,3'd6,3'd6},
'{3'd6,3'd6,3'd6,3'd3,3'd1,3'd3,3'd6,3'd6},
'{3'd6,3'd6,3'd6,3'd1,3'd1,3'd1,3'd1,3'd6},
'{3'd6,3'd6,3'd6,3'd2,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_15_3[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_9_3[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd6,3'd6,3'd6,3'd2,3'd1,3'd1,3'd1},
'{3'd1,3'd6,3'd6,3'd6,3'd2,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_6_0[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd6,3'd6,3'd6},
'{3'd1,3'd1,3'd1,3'd3,3'd6,3'd6,3'd6,3'd6},
'{3'd2,3'd1,3'd1,3'd5,3'd6,3'd6,3'd5,3'd1},
'{3'd1,3'd1,3'd1,3'd6,3'd6,3'd6,3'd6,3'd4}};

parameter bit [2:0] SpriteTableG_1_4[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_11_0[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd6,3'd6,3'd4,3'd3,3'd6,3'd6,3'd6,3'd6},
'{3'd6,3'd6,3'd5,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd6,3'd6,3'd6,3'd1,3'd1,3'd2,3'd6,3'd6}};

parameter bit [2:0] SpriteTableG_7_5[7:0][7:0] = '{'{3'd1,3'd1,3'd2,3'd6,3'd6,3'd6,3'd2,3'd1},
'{3'd1,3'd1,3'd2,3'd6,3'd6,3'd6,3'd6,3'd4},
'{3'd1,3'd1,3'd2,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd1,3'd1,3'd2,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd1,3'd1,3'd2,3'd6,3'd6,3'd6,3'd1,3'd1},
'{3'd1,3'd1,3'd2,3'd6,3'd6,3'd6,3'd1,3'd1},
'{3'd1,3'd1,3'd2,3'd6,3'd6,3'd6,3'd1,3'd1},
'{3'd1,3'd1,3'd2,3'd6,3'd6,3'd6,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_2_3[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_4_2[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_14_2[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_9_6[7:0][0:0] = '{'{3'd1},
'{3'd1},
'{3'd1},
'{3'd1},
'{3'd1},
'{3'd1},
'{3'd1},
'{3'd1}};

parameter bit [2:0] SpriteTableG_6_5[7:0][7:0] = '{'{3'd6,3'd4,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd5,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd3,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_5_3[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_0_1[7:0][7:0] = '{'{3'd1,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd1,3'd6,3'd6,3'd6,3'd6,3'd4,3'd1,3'd1},
'{3'd1,3'd6,3'd6,3'd6,3'd6,3'd4,3'd1,3'd1},
'{3'd1,3'd6,3'd6,3'd6,3'd6,3'd4,3'd1,3'd1},
'{3'd1,3'd6,3'd6,3'd6,3'd6,3'd4,3'd1,3'd1},
'{3'd1,3'd6,3'd6,3'd6,3'd6,3'd4,3'd1,3'd1},
'{3'd1,3'd6,3'd6,3'd6,3'd6,3'd4,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_10_5[7:0][7:0] = '{'{3'd6,3'd6,3'd6,3'd6,3'd4,3'd1,3'd3,3'd6},
'{3'd6,3'd6,3'd6,3'd1,3'd1,3'd1,3'd5,3'd6},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd1,3'd6},
'{3'd2,3'd6,3'd6,3'd6,3'd6,3'd4,3'd1,3'd5},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_7_0[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd6,3'd6,3'd6,3'd2,3'd1,3'd1,3'd1,3'd1},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd6,3'd6,3'd6,3'd2,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_12_0[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd4},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd6,3'd6},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd6,3'd6,3'd6},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd6,3'd6,3'd6},
'{3'd4,3'd1,3'd1,3'd1,3'd6,3'd6,3'd6,3'd6},
'{3'd6,3'd4,3'd1,3'd1,3'd6,3'd6,3'd6,3'd6},
'{3'd6,3'd2,3'd1,3'd1,3'd6,3'd6,3'd6,3'd6},
'{3'd6,3'd5,3'd1,3'd1,3'd1,3'd6,3'd6,3'd6}};

parameter bit [2:0] SpriteTableG_3_1[7:0][7:0] = '{'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd6,3'd6,3'd6,3'd6,3'd4,3'd1,3'd1,3'd1},
'{3'd6,3'd6,3'd6,3'd6,3'd2,3'd1,3'd1,3'd1},
'{3'd1,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd1,3'd2,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd1,3'd1,3'd4,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_13_5[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd6,3'd6,3'd6,3'd2,3'd1},
'{3'd1,3'd1,3'd1,3'd6,3'd6,3'd6,3'd2,3'd1},
'{3'd1,3'd1,3'd1,3'd6,3'd6,3'd6,3'd2,3'd1},
'{3'd1,3'd1,3'd1,3'd6,3'd6,3'd6,3'd2,3'd1},
'{3'd1,3'd1,3'd1,3'd6,3'd6,3'd6,3'd2,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_0_6[7:0][0:0] = '{'{3'd1},
'{3'd1},
'{3'd1},
'{3'd1},
'{3'd1},
'{3'd1},
'{3'd1},
'{3'd1}};

parameter bit [2:0] SpriteTableG_15_6[7:0][0:0] = '{'{3'd1},
'{3'd1},
'{3'd1},
'{3'd1},
'{3'd1},
'{3'd1},
'{3'd1},
'{3'd1}};

parameter bit [2:0] SpriteTableG_16_5[3:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_3_4[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd6,3'd6,3'd6},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd6,3'd6,3'd6},
'{3'd1,3'd1,3'd1,3'd1,3'd6,3'd6,3'd6,3'd6},
'{3'd1,3'd1,3'd1,3'd1,3'd6,3'd6,3'd6,3'd6},
'{3'd1,3'd1,3'd1,3'd1,3'd6,3'd6,3'd6,3'd6},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd6,3'd6,3'd6},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd6,3'd6,3'd6},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd6,3'd6,3'd6}};

parameter bit [2:0] SpriteTableG_2_4[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_13_0[7:0][7:0] = '{'{3'd6,3'd4,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd6,3'd4,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd6,3'd4,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd6,3'd4,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd6,3'd6,3'd6,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd6,3'd6,3'd6,3'd1,3'd1,3'd1,3'd2,3'd6},
'{3'd6,3'd6,3'd6,3'd1,3'd1,3'd1,3'd6,3'd6},
'{3'd6,3'd4,3'd1,3'd1,3'd1,3'd6,3'd6,3'd6}};

parameter bit [2:0] SpriteTableG_8_4[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd6,3'd6,3'd6,3'd5,3'd1,3'd1,3'd1,3'd1},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd1,3'd1,3'd1},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd2,3'd1,3'd1},
'{3'd1,3'd1,3'd6,3'd6,3'd6,3'd6,3'd1,3'd1},
'{3'd1,3'd1,3'd6,3'd6,3'd6,3'd6,3'd4,3'd1},
'{3'd1,3'd1,3'd6,3'd6,3'd6,3'd6,3'd4,3'd1}};

parameter bit [2:0] SpriteTableG_16_0[3:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd5,3'd6,3'd6,3'd2,3'd6,3'd6,3'd6,3'd4},
'{3'd6,3'd6,3'd5,3'd1,3'd4,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_9_1[7:0][7:0] = '{'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd6,3'd6,3'd6,3'd6,3'd4,3'd1,3'd1,3'd1},
'{3'd6,3'd6,3'd6,3'd6,3'd4,3'd1,3'd1,3'd1},
'{3'd6,3'd6,3'd6,3'd6,3'd4,3'd1,3'd1,3'd1},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_6_6[7:0][0:0] = '{'{3'd1},
'{3'd1},
'{3'd1},
'{3'd1},
'{3'd1},
'{3'd1},
'{3'd1},
'{3'd1}};

parameter bit [2:0] SpriteTableG_5_6[7:0][0:0] = '{'{3'd1},
'{3'd1},
'{3'd1},
'{3'd1},
'{3'd1},
'{3'd1},
'{3'd1},
'{3'd1}};

parameter bit [2:0] SpriteTableG_11_2[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_10_6[7:0][0:0] = '{'{3'd1},
'{3'd1},
'{3'd1},
'{3'd1},
'{3'd1},
'{3'd1},
'{3'd1},
'{3'd1}};

parameter bit [2:0] SpriteTableG_16_2[3:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_2_1[7:0][7:0] = '{'{3'd6,3'd6,3'd6,3'd2,3'd1,3'd1,3'd1,3'd4},
'{3'd6,3'd6,3'd6,3'd1,3'd1,3'd1,3'd1,3'd4},
'{3'd6,3'd6,3'd6,3'd3,3'd1,3'd1,3'd1,3'd4},
'{3'd6,3'd6,3'd6,3'd3,3'd1,3'd1,3'd1,3'd1},
'{3'd6,3'd6,3'd6,3'd3,3'd1,3'd1,3'd1,3'd1},
'{3'd6,3'd6,3'd6,3'd3,3'd1,3'd1,3'd1,3'd1},
'{3'd6,3'd6,3'd6,3'd3,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_12_5[7:0][7:0] = '{'{3'd6,3'd6,3'd1,3'd6,3'd6,3'd6,3'd2,3'd1},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd4,3'd1},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd5,3'd1,3'd1},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd1,3'd1,3'd1},
'{3'd1,3'd6,3'd6,3'd6,3'd6,3'd4,3'd1,3'd1},
'{3'd2,3'd6,3'd6,3'd6,3'd2,3'd1,3'd1,3'd1},
'{3'd6,3'd6,3'd6,3'd6,3'd3,3'd1,3'd1,3'd1},
'{3'd6,3'd6,3'd6,3'd2,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_14_0[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd3,3'd1},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd5},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd6,3'd3,3'd1,3'd1,3'd4,3'd6,3'd6,3'd6}};

parameter bit [2:0] SpriteTableG_9_4[7:0][7:0] = '{'{3'd1,3'd6,3'd6,3'd6,3'd2,3'd1,3'd1,3'd1},
'{3'd1,3'd6,3'd6,3'd6,3'd2,3'd1,3'd1,3'd1},
'{3'd1,3'd6,3'd6,3'd6,3'd2,3'd1,3'd1,3'd1},
'{3'd1,3'd6,3'd6,3'd6,3'd2,3'd1,3'd1,3'd1},
'{3'd1,3'd6,3'd6,3'd6,3'd2,3'd1,3'd1,3'd1},
'{3'd1,3'd6,3'd6,3'd6,3'd2,3'd1,3'd1,3'd5},
'{3'd1,3'd6,3'd6,3'd6,3'd2,3'd1,3'd1,3'd1},
'{3'd1,3'd6,3'd6,3'd6,3'd2,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_5_1[7:0][7:0] = '{'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd4},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd1,3'd1,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd5,3'd6,3'd6},
'{3'd6,3'd6,3'd4,3'd1,3'd1,3'd5,3'd6,3'd6},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd5,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_0_3[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_15_5[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_10_3[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_7_2[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_1_2[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_12_2[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_3_3[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd4},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd6,3'd6}};

parameter bit [2:0] SpriteTableG_14_5[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_13_3[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd2,3'd6,3'd6,3'd6,3'd5,3'd1},
'{3'd1,3'd1,3'd2,3'd6,3'd6,3'd6,3'd5,3'd1}};

parameter bit [2:0] SpriteTableG_8_1[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_4_4[7:0][7:0] = '{'{3'd6,3'd4,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd6,3'd4,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd6,3'd6,3'd6,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd6,3'd6,3'd6,3'd1,3'd1,3'd1,3'd1,3'd6},
'{3'd6,3'd6,3'd6,3'd1,3'd1,3'd3,3'd6,3'd6},
'{3'd6,3'd4,3'd1,3'd1,3'd1,3'd5,3'd6,3'd6},
'{3'd6,3'd4,3'd1,3'd1,3'd4,3'd6,3'd6,3'd6},
'{3'd6,3'd4,3'd1,3'd1,3'd4,3'd6,3'd6,3'd6}};

parameter bit [2:0] SpriteTableG_15_0[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd5,3'd6,3'd6,3'd6,3'd4},
'{3'd1,3'd1,3'd1,3'd5,3'd6,3'd6,3'd6,3'd5},
'{3'd2,3'd1,3'd1,3'd5,3'd6,3'd6,3'd6,3'd6},
'{3'd6,3'd4,3'd1,3'd5,3'd6,3'd6,3'd6,3'd6}};

parameter bit [2:0] SpriteTableG_16_4[3:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_6_3[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_1_5[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_11_1[7:0][7:0] = '{'{3'd6,3'd6,3'd1,3'd1,3'd1,3'd3,3'd6,3'd6},
'{3'd6,3'd6,3'd1,3'd1,3'd1,3'd3,3'd6,3'd6},
'{3'd6,3'd6,3'd1,3'd1,3'd1,3'd3,3'd6,3'd6},
'{3'd6,3'd6,3'd1,3'd1,3'd1,3'd3,3'd6,3'd6},
'{3'd6,3'd6,3'd1,3'd1,3'd1,3'd3,3'd6,3'd6},
'{3'd6,3'd6,3'd1,3'd1,3'd1,3'd3,3'd6,3'd6},
'{3'd6,3'd6,3'd1,3'd1,3'd1,3'd3,3'd6,3'd6},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_3_6[7:0][0:0] = '{'{3'd1},
'{3'd1},
'{3'd1},
'{3'd1},
'{3'd1},
'{3'd1},
'{3'd1},
'{3'd1}};

parameter bit [2:0] SpriteTableG_2_2[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_8_6[7:0][0:0] = '{'{3'd1},
'{3'd1},
'{3'd1},
'{3'd1},
'{3'd1},
'{3'd1},
'{3'd1},
'{3'd1}};

parameter bit [2:0] SpriteTableG_4_1[7:0][7:0] = '{'{3'd6,3'd6,3'd6,3'd6,3'd3,3'd1,3'd2,3'd6},
'{3'd6,3'd6,3'd6,3'd6,3'd3,3'd1,3'd1,3'd6},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd6,3'd6,3'd6,3'd6,3'd1,3'd1,3'd1,3'd1},
'{3'd6,3'd6,3'd6,3'd3,3'd1,3'd4,3'd6,3'd6},
'{3'd6,3'd6,3'd1,3'd1,3'd1,3'd1,3'd2,3'd6},
'{3'd6,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd4},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_6_4[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd6,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd6,3'd4,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd6,3'd4,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_5_4[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd5,3'd6,3'd6,3'd6,3'd6,3'd6,3'd1,3'd1},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd1},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd6,3'd2,3'd1,3'd1,3'd2,3'd6,3'd6,3'd6},
'{3'd6,3'd1,3'd1,3'd1,3'd1,3'd6,3'd6,3'd6},
'{3'd6,3'd1,3'd1,3'd1,3'd1,3'd6,3'd6,3'd6}};

parameter bit [2:0] SpriteTableG_0_0[7:0][7:0] = '{'{3'd1,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd1,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd1,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd1,3'd6,3'd6,3'd6,3'd6,3'd4,3'd1,3'd1},
'{3'd1,3'd6,3'd6,3'd6,3'd6,3'd4,3'd1,3'd1},
'{3'd1,3'd6,3'd6,3'd6,3'd6,3'd4,3'd1,3'd1},
'{3'd1,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd1,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6}};

parameter bit [2:0] SpriteTableG_11_4[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd2,3'd1,3'd1,3'd1,3'd2,3'd6,3'd6,3'd6},
'{3'd6,3'd6,3'd1,3'd1,3'd3,3'd6,3'd6,3'd6},
'{3'd6,3'd6,3'd1,3'd1,3'd1,3'd5,3'd6,3'd6},
'{3'd6,3'd6,3'd2,3'd1,3'd1,3'd1,3'd6,3'd6},
'{3'd6,3'd6,3'd5,3'd1,3'd1,3'd1,3'd6,3'd6},
'{3'd6,3'd6,3'd5,3'd1,3'd1,3'd1,3'd2,3'd6}};

parameter bit [2:0] SpriteTableG_10_4[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd5,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd6,3'd6,3'd6,3'd3,3'd1,3'd1,3'd3,3'd6},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd6,3'd6,3'd6},
'{3'd3,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6}};

parameter bit [2:0] SpriteTableG_7_1[7:0][7:0] = '{'{3'd6,3'd6,3'd6,3'd6,3'd4,3'd1,3'd1,3'd1},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd1,3'd1,3'd1},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd1,3'd1},
'{3'd1,3'd1,3'd5,3'd6,3'd6,3'd6,3'd4,3'd1},
'{3'd1,3'd1,3'd5,3'd6,3'd6,3'd6,3'd1,3'd1},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd3,3'd1,3'd1},
'{3'd6,3'd6,3'd6,3'd5,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_14_6[7:0][0:0] = '{'{3'd1},
'{3'd1},
'{3'd1},
'{3'd1},
'{3'd1},
'{3'd1},
'{3'd1},
'{3'd1}};

parameter bit [2:0] SpriteTableG_13_6[7:0][0:0] = '{'{3'd1},
'{3'd1},
'{3'd1},
'{3'd1},
'{3'd1},
'{3'd1},
'{3'd1},
'{3'd1}};

parameter bit [2:0] SpriteTableG_0_5[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_10_1[7:0][7:0] = '{'{3'd6,3'd6,3'd6,3'd3,3'd1,3'd1,3'd5,3'd6},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd5,3'd6},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd5,3'd6},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd5,3'd6},
'{3'd6,3'd6,3'd6,3'd6,3'd1,3'd1,3'd5,3'd6},
'{3'd6,3'd6,3'd6,3'd6,3'd1,3'd1,3'd5,3'd6},
'{3'd6,3'd6,3'd6,3'd6,3'd1,3'd1,3'd5,3'd6},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_1_0[7:0][7:0] = '{'{3'd6,3'd6,3'd6,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd6,3'd6,3'd6,3'd6,3'd3,3'd1,3'd1,3'd1},
'{3'd6,3'd6,3'd6,3'd6,3'd5,3'd1,3'd1,3'd1},
'{3'd5,3'd6,3'd6,3'd6,3'd6,3'd4,3'd1,3'd1},
'{3'd1,3'd6,3'd6,3'd6,3'd6,3'd4,3'd1,3'd5},
'{3'd5,3'd6,3'd6,3'd6,3'd6,3'd1,3'd1,3'd5},
'{3'd6,3'd6,3'd6,3'd6,3'd5,3'd1,3'd1,3'd5},
'{3'd6,3'd6,3'd6,3'd6,3'd4,3'd1,3'd1,3'd5}};

parameter bit [2:0] SpriteTableG_3_5[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd6,3'd6,3'd6},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd6,3'd6,3'd6},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd5,3'd6,3'd6},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd2,3'd6,3'd6},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd2,3'd6},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_13_1[7:0][7:0] = '{'{3'd6,3'd4,3'd1,3'd1,3'd4,3'd6,3'd6,3'd6},
'{3'd6,3'd4,3'd1,3'd1,3'd4,3'd6,3'd6,3'd6},
'{3'd6,3'd4,3'd1,3'd1,3'd4,3'd6,3'd6,3'd6},
'{3'd6,3'd4,3'd1,3'd1,3'd1,3'd6,3'd6,3'd6},
'{3'd6,3'd6,3'd6,3'd3,3'd1,3'd1,3'd6,3'd6},
'{3'd6,3'd6,3'd6,3'd1,3'd1,3'd1,3'd2,3'd6},
'{3'd6,3'd6,3'd6,3'd2,3'd1,3'd1,3'd1,3'd4},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_8_3[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_4_6[7:0][0:0] = '{'{3'd1},
'{3'd1},
'{3'd1},
'{3'd1},
'{3'd1},
'{3'd1},
'{3'd1},
'{3'd1}};

parameter bit [2:0] SpriteTableG_15_2[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_9_2[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_6_1[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd2,3'd6,3'd6,3'd6,3'd6},
'{3'd1,3'd1,3'd1,3'd1,3'd6,3'd6,3'd6,3'd6},
'{3'd6,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd6},
'{3'd6,3'd4,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd6,3'd1,3'd4,3'd6,3'd6,3'd6,3'd6,3'd4},
'{3'd3,3'd1,3'd1,3'd2,3'd6,3'd6,3'd6,3'd6},
'{3'd1,3'd1,3'd1,3'd1,3'd4,3'd6,3'd6,3'd6},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_11_3[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_7_4[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd2,3'd6,3'd6,3'd6,3'd3,3'd3},
'{3'd1,3'd1,3'd2,3'd6,3'd6,3'd6,3'd5,3'd6},
'{3'd1,3'd1,3'd2,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd1,3'd1,3'd2,3'd6,3'd6,3'd6,3'd6,3'd4},
'{3'd1,3'd1,3'd2,3'd6,3'd6,3'd6,3'd2,3'd1},
'{3'd1,3'd1,3'd2,3'd6,3'd6,3'd6,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_2_0[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd6,3'd6,3'd6,3'd4,3'd5,3'd6,3'd6,3'd2},
'{3'd6,3'd6,3'd6,3'd5,3'd6,3'd6,3'd6,3'd4},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd5,3'd1},
'{3'd6,3'd6,3'd6,3'd6,3'd4,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_12_4[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd2,3'd1,3'd1,3'd1,3'd4,3'd6,3'd6,3'd6},
'{3'd6,3'd1,3'd1,3'd1,3'd1,3'd6,3'd6,3'd6},
'{3'd6,3'd3,3'd1,3'd1,3'd5,3'd6,3'd6,3'd6},
'{3'd6,3'd1,3'd1,3'd4,3'd6,3'd6,3'd6,3'd5},
'{3'd6,3'd5,3'd1,3'd3,3'd6,3'd6,3'd6,3'd3},
'{3'd6,3'd6,3'd4,3'd2,3'd6,3'd6,3'd6,3'd1}};

parameter bit [2:0] SpriteTableG_4_3[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd6,3'd4,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd6,3'd4,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_14_3[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_9_5[7:0][7:0] = '{'{3'd1,3'd6,3'd6,3'd6,3'd2,3'd1,3'd1,3'd5},
'{3'd1,3'd6,3'd6,3'd6,3'd2,3'd1,3'd4,3'd6},
'{3'd1,3'd6,3'd6,3'd6,3'd2,3'd1,3'd4,3'd6},
'{3'd1,3'd6,3'd6,3'd6,3'd2,3'd1,3'd1,3'd5},
'{3'd1,3'd6,3'd6,3'd6,3'd2,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_5_2[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_0_2[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

parameter bit [2:0] SpriteTableG_11_6[7:0][0:0] = '{'{3'd1},
'{3'd1},
'{3'd1},
'{3'd1},
'{3'd1},
'{3'd6},
'{3'd6},
'{3'd6}};

parameter bit [2:0] SpriteTableG_10_2[7:0][7:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1}};

logic [9:0] SpriteTableB;

parameter bit [7:0] SpritePaletteB[6:0] = '{8'd0, 8'd144, 8'd102, 8'd182, 8'd58, 8'd219, 8'd255};

	always_comb
	begin
		SpriteTableB = 10'd0;
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableB = SpriteTableB_7_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableB = SpriteTableB_1_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableB = SpriteTableB_12_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd132 && SpriteY >= 10'd48 && SpriteY < 10'd49)
		begin
		    SpriteTableB = SpriteTableB_16_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableB = SpriteTableB_3_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableB = SpriteTableB_14_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableB = SpriteTableB_13_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableB = SpriteTableB_8_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd132 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableB = SpriteTableB_16_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableB = SpriteTableB_15_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableB = SpriteTableB_6_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd48 && SpriteY < 10'd49)
		begin
		    SpriteTableB = SpriteTableB_1_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableB = SpriteTableB_2_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableB = SpriteTableB_8_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableB = SpriteTableB_4_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableB = SpriteTableB_9_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd132 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableB = SpriteTableB_16_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableB = SpriteTableB_5_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableB = SpriteTableB_11_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd48 && SpriteY < 10'd49)
		begin
		    SpriteTableB = SpriteTableB_7_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd48 && SpriteY < 10'd49)
		begin
		    SpriteTableB = SpriteTableB_12_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableB = SpriteTableB_14_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableB = SpriteTableB_5_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableB = SpriteTableB_0_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableB = SpriteTableB_15_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableB = SpriteTableB_10_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableB = SpriteTableB_1_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableB = SpriteTableB_12_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableB = SpriteTableB_3_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd48 && SpriteY < 10'd49)
		begin
		    SpriteTableB = SpriteTableB_2_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableB = SpriteTableB_13_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableB = SpriteTableB_8_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableB = SpriteTableB_4_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableB = SpriteTableB_15_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableB = SpriteTableB_9_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableB = SpriteTableB_6_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableB = SpriteTableB_1_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableB = SpriteTableB_11_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableB = SpriteTableB_7_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableB = SpriteTableB_2_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableB = SpriteTableB_4_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableB = SpriteTableB_14_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd48 && SpriteY < 10'd49)
		begin
		    SpriteTableB = SpriteTableB_9_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableB = SpriteTableB_6_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableB = SpriteTableB_5_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableB = SpriteTableB_0_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableB = SpriteTableB_10_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableB = SpriteTableB_7_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableB = SpriteTableB_12_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableB = SpriteTableB_3_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableB = SpriteTableB_13_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd48 && SpriteY < 10'd49)
		begin
		    SpriteTableB = SpriteTableB_0_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd48 && SpriteY < 10'd49)
		begin
		    SpriteTableB = SpriteTableB_15_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd132 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableB = SpriteTableB_16_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableB = SpriteTableB_3_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableB = SpriteTableB_2_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableB = SpriteTableB_13_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableB = SpriteTableB_8_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd132 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableB = SpriteTableB_16_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableB = SpriteTableB_9_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd48 && SpriteY < 10'd49)
		begin
		    SpriteTableB = SpriteTableB_6_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd48 && SpriteY < 10'd49)
		begin
		    SpriteTableB = SpriteTableB_5_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableB = SpriteTableB_11_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd48 && SpriteY < 10'd49)
		begin
		    SpriteTableB = SpriteTableB_10_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd132 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableB = SpriteTableB_16_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableB = SpriteTableB_2_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableB = SpriteTableB_12_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableB = SpriteTableB_14_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableB = SpriteTableB_9_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableB = SpriteTableB_5_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableB = SpriteTableB_0_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableB = SpriteTableB_15_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableB = SpriteTableB_10_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableB = SpriteTableB_7_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableB = SpriteTableB_1_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableB = SpriteTableB_12_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableB = SpriteTableB_3_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableB = SpriteTableB_14_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableB = SpriteTableB_13_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableB = SpriteTableB_8_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableB = SpriteTableB_4_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableB = SpriteTableB_15_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd132 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableB = SpriteTableB_16_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableB = SpriteTableB_6_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableB = SpriteTableB_1_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableB = SpriteTableB_11_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd48 && SpriteY < 10'd49)
		begin
		    SpriteTableB = SpriteTableB_3_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableB = SpriteTableB_2_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd48 && SpriteY < 10'd49)
		begin
		    SpriteTableB = SpriteTableB_8_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableB = SpriteTableB_4_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableB = SpriteTableB_6_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableB = SpriteTableB_5_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableB = SpriteTableB_0_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableB = SpriteTableB_11_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableB = SpriteTableB_10_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableB = SpriteTableB_7_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd48 && SpriteY < 10'd49)
		begin
		    SpriteTableB = SpriteTableB_14_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd48 && SpriteY < 10'd49)
		begin
		    SpriteTableB = SpriteTableB_13_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableB = SpriteTableB_0_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableB = SpriteTableB_10_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableB = SpriteTableB_1_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableB = SpriteTableB_3_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableB = SpriteTableB_13_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableB = SpriteTableB_8_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd48 && SpriteY < 10'd49)
		begin
		    SpriteTableB = SpriteTableB_4_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableB = SpriteTableB_15_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableB = SpriteTableB_9_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableB = SpriteTableB_6_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableB = SpriteTableB_11_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableB = SpriteTableB_7_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableB = SpriteTableB_2_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableB = SpriteTableB_12_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableB = SpriteTableB_4_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableB = SpriteTableB_14_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableB = SpriteTableB_9_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableB = SpriteTableB_5_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableB = SpriteTableB_0_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd48 && SpriteY < 10'd49)
		begin
		    SpriteTableB = SpriteTableB_11_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableB = SpriteTableB_10_2[Y_Index][X_Index];
		end
	end

parameter bit [2:0] SpriteTableB_7_3[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
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

parameter bit [2:0] SpriteTableB_12_1[7:0][7:0] = '{'{3'd6,3'd1,3'd0,3'd0,3'd2,3'd6,3'd6,3'd6},
'{3'd6,3'd1,3'd0,3'd0,3'd2,3'd6,3'd6,3'd6},
'{3'd6,3'd1,3'd0,3'd0,3'd2,3'd6,3'd6,3'd6},
'{3'd6,3'd1,3'd0,3'd0,3'd2,3'd6,3'd6,3'd6},
'{3'd6,3'd1,3'd0,3'd0,3'd4,3'd6,3'd6,3'd6},
'{3'd6,3'd1,3'd0,3'd0,3'd0,3'd6,3'd6,3'd6},
'{3'd6,3'd1,3'd0,3'd0,3'd0,3'd0,3'd6,3'd6},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_16_6[3:0][0:0] = '{'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0}};

parameter bit [2:0] SpriteTableB_3_0[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd2,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd0,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd5,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd6,3'd6,3'd6,3'd6,3'd0,3'd0,3'd0,3'd1}};

parameter bit [2:0] SpriteTableB_14_4[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_13_4[7:0][7:0] = '{'{3'd0,3'd0,3'd6,3'd6,3'd6,3'd6,3'd1,3'd0},
'{3'd0,3'd0,3'd6,3'd6,3'd6,3'd6,3'd2,3'd0},
'{3'd1,3'd0,3'd5,3'd6,3'd6,3'd6,3'd4,3'd0},
'{3'd4,3'd0,3'd3,3'd6,3'd6,3'd6,3'd0,3'd0},
'{3'd0,3'd0,3'd1,3'd6,3'd6,3'd6,3'd0,3'd0},
'{3'd0,3'd0,3'd2,3'd6,3'd6,3'd5,3'd0,3'd0},
'{3'd0,3'd0,3'd2,3'd6,3'd6,3'd3,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_8_0[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd5},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd5},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd5},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd5},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd5},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd5},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd5},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd5}};

parameter bit [2:0] SpriteTableB_16_1[3:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_15_1[7:0][7:0] = '{'{3'd6,3'd0,3'd4,3'd6,3'd6,3'd6,3'd6,3'd2},
'{3'd6,3'd0,3'd4,3'd6,3'd6,3'd6,3'd6,3'd4},
'{3'd0,3'd0,3'd4,3'd6,3'd6,3'd6,3'd6,3'd0},
'{3'd3,3'd0,3'd4,3'd6,3'd6,3'd6,3'd6,3'd0},
'{3'd0,3'd0,3'd4,3'd6,3'd6,3'd6,3'd6,3'd0},
'{3'd0,3'd0,3'd4,3'd6,3'd6,3'd6,3'd6,3'd0},
'{3'd0,3'd0,3'd4,3'd6,3'd6,3'd6,3'd6,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_6_2[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_1_6[7:0][0:0] = '{'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0}};

parameter bit [2:0] SpriteTableB_2_5[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_8_5[7:0][7:0] = '{'{3'd0,3'd2,3'd6,3'd6,3'd6,3'd5,3'd0,3'd0},
'{3'd0,3'd5,3'd6,3'd6,3'd6,3'd3,3'd0,3'd0},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd2,3'd0,3'd0},
'{3'd6,3'd6,3'd6,3'd6,3'd3,3'd0,3'd0,3'd0},
'{3'd6,3'd6,3'd6,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_4_0[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd6,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd2},
'{3'd6,3'd6,3'd1,3'd0,3'd0,3'd0,3'd3,3'd6},
'{3'd6,3'd6,3'd6,3'd2,3'd0,3'd4,3'd6,3'd6},
'{3'd6,3'd6,3'd6,3'd5,3'd0,3'd2,3'd6,3'd6}};

parameter bit [2:0] SpriteTableB_9_0[7:0][7:0] = '{'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd6,3'd6,3'd6,3'd5,3'd0,3'd0,3'd0,3'd0},
'{3'd6,3'd6,3'd6,3'd5,3'd0,3'd0,3'd0,3'd0},
'{3'd6,3'd6,3'd6,3'd5,3'd0,3'd0,3'd0,3'd0},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6}};

parameter bit [2:0] SpriteTableB_16_3[3:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_5_5[7:0][7:0] = '{'{3'd3,3'd0,3'd0,3'd0,3'd2,3'd6,3'd6,3'd6},
'{3'd6,3'd2,3'd0,3'd0,3'd6,3'd6,3'd6,3'd6},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd4},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd1,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_11_5[7:0][7:0] = '{'{3'd6,3'd6,3'd1,3'd0,3'd0,3'd0,3'd1,3'd6},
'{3'd6,3'd6,3'd1,3'd0,3'd0,3'd0,3'd4,3'd6},
'{3'd6,3'd6,3'd1,3'd0,3'd0,3'd0,3'd0,3'd3},
'{3'd6,3'd6,3'd1,3'd0,3'd0,3'd0,3'd0,3'd2},
'{3'd6,3'd6,3'd5,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd6,3'd6,3'd6},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd6,3'd6,3'd6}};

parameter bit [2:0] SpriteTableB_7_6[7:0][0:0] = '{'{3'd0},
'{3'd0},
'{3'd6},
'{3'd6},
'{3'd6},
'{3'd6},
'{3'd4},
'{3'd0}};

parameter bit [2:0] SpriteTableB_12_6[7:0][0:0] = '{'{3'd6},
'{3'd6},
'{3'd4},
'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0}};

parameter bit [2:0] SpriteTableB_14_1[7:0][7:0] = '{'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd5,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd6,3'd2,3'd0,3'd0,3'd5,3'd6,3'd6,3'd6},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd4},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd3,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_5_0[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd2,3'd0},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd3},
'{3'd6,3'd1,3'd0,3'd0,3'd5,3'd6,3'd6,3'd6},
'{3'd6,3'd5,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_0_4[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_15_4[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_10_0[7:0][7:0] = '{'{3'd6,3'd6,3'd6,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd6,3'd6,3'd6,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd6,3'd6,3'd6,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd4,3'd6,3'd6},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd4,3'd6,3'd6},
'{3'd6,3'd6,3'd6,3'd0,3'd0,3'd4,3'd6,3'd6},
'{3'd6,3'd6,3'd6,3'd0,3'd0,3'd4,3'd6,3'd6}};

parameter bit [2:0] SpriteTableB_1_1[7:0][7:0] = '{'{3'd6,3'd6,3'd2,3'd0,3'd0,3'd0,3'd4,3'd6},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd4,3'd6},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd4,3'd6},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd4,3'd6},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd4,3'd6},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd4,3'd6},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd4,3'd6},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_12_3[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
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
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_2_6[7:0][0:0] = '{'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0}};

parameter bit [2:0] SpriteTableB_13_2[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_8_2[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_4_5[7:0][7:0] = '{'{3'd5,3'd0,3'd0,3'd0,3'd1,3'd6,3'd6,3'd6},
'{3'd5,3'd0,3'd0,3'd0,3'd4,3'd6,3'd6,3'd6},
'{3'd6,3'd6,3'd6,3'd0,3'd0,3'd3,3'd6,3'd6},
'{3'd6,3'd6,3'd6,3'd4,3'd0,3'd0,3'd5,3'd6},
'{3'd6,3'd6,3'd6,3'd2,3'd0,3'd0,3'd0,3'd4},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_15_3[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_9_3[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd5,3'd6,3'd6,3'd6,3'd2,3'd0,3'd0,3'd0},
'{3'd5,3'd6,3'd6,3'd6,3'd2,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_6_0[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd2,3'd6,3'd6,3'd6},
'{3'd0,3'd0,3'd0,3'd3,3'd6,3'd6,3'd6,3'd6},
'{3'd2,3'd0,3'd4,3'd6,3'd6,3'd6,3'd1,3'd0},
'{3'd0,3'd0,3'd2,3'd6,3'd6,3'd6,3'd5,3'd0}};

parameter bit [2:0] SpriteTableB_1_4[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
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
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd6,3'd5,3'd0,3'd3,3'd6,3'd6,3'd6,3'd5},
'{3'd6,3'd5,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd6,3'd6,3'd3,3'd0,3'd0,3'd6,3'd6,3'd6}};

parameter bit [2:0] SpriteTableB_7_5[7:0][7:0] = '{'{3'd0,3'd0,3'd6,3'd6,3'd6,3'd6,3'd2,3'd0},
'{3'd0,3'd0,3'd6,3'd6,3'd6,3'd6,3'd5,3'd0},
'{3'd0,3'd0,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd0,3'd0,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd0,3'd0,3'd6,3'd6,3'd6,3'd6,3'd4,3'd5},
'{3'd0,3'd0,3'd6,3'd6,3'd6,3'd6,3'd4,3'd0},
'{3'd0,3'd0,3'd6,3'd6,3'd6,3'd6,3'd4,3'd0},
'{3'd0,3'd0,3'd6,3'd6,3'd6,3'd6,3'd4,3'd0}};

parameter bit [2:0] SpriteTableB_2_3[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_4_2[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_14_2[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_9_6[7:0][0:0] = '{'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0}};

parameter bit [2:0] SpriteTableB_6_5[7:0][7:0] = '{'{3'd5,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_5_3[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_0_1[7:0][7:0] = '{'{3'd5,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd5,3'd6,3'd6,3'd6,3'd5,3'd0,3'd0,3'd0},
'{3'd5,3'd6,3'd6,3'd6,3'd5,3'd0,3'd0,3'd0},
'{3'd5,3'd6,3'd6,3'd6,3'd5,3'd0,3'd0,3'd0},
'{3'd5,3'd6,3'd6,3'd6,3'd5,3'd0,3'd0,3'd0},
'{3'd5,3'd6,3'd6,3'd6,3'd5,3'd0,3'd0,3'd0},
'{3'd5,3'd6,3'd6,3'd6,3'd5,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_10_5[7:0][7:0] = '{'{3'd6,3'd6,3'd6,3'd5,3'd0,3'd0,3'd3,3'd6},
'{3'd6,3'd6,3'd3,3'd0,3'd0,3'd4,3'd6,3'd6},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd1,3'd6},
'{3'd6,3'd6,3'd6,3'd6,3'd5,3'd0,3'd4,3'd6},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_7_0[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd6,3'd6,3'd6,3'd2,3'd0,3'd0,3'd0,3'd0},
'{3'd6,3'd6,3'd6,3'd6,3'd3,3'd0,3'd0,3'd0},
'{3'd0,3'd5,3'd6,3'd6,3'd6,3'd2,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_12_0[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd2,3'd6,3'd6},
'{3'd0,3'd0,3'd0,3'd0,3'd2,3'd6,3'd6,3'd6},
'{3'd0,3'd0,3'd0,3'd0,3'd2,3'd6,3'd6,3'd6},
'{3'd0,3'd0,3'd0,3'd5,3'd6,3'd6,3'd6,3'd6},
'{3'd5,3'd0,3'd0,3'd5,3'd6,3'd6,3'd6,3'd6},
'{3'd6,3'd2,3'd0,3'd5,3'd6,3'd6,3'd6,3'd6},
'{3'd6,3'd1,3'd0,3'd0,3'd2,3'd6,3'd6,3'd6}};

parameter bit [2:0] SpriteTableB_3_1[7:0][7:0] = '{'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd6,3'd6,3'd6,3'd5,3'd0,3'd0,3'd0,3'd0},
'{3'd6,3'd6,3'd6,3'd6,3'd2,3'd0,3'd0,3'd5},
'{3'd5,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd0,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd0,3'd0,3'd1,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_13_5[7:0][7:0] = '{'{3'd0,3'd0,3'd5,3'd6,3'd6,3'd6,3'd2,3'd0},
'{3'd0,3'd0,3'd5,3'd6,3'd6,3'd6,3'd2,3'd0},
'{3'd0,3'd0,3'd5,3'd6,3'd6,3'd6,3'd2,3'd0},
'{3'd0,3'd0,3'd5,3'd6,3'd6,3'd6,3'd2,3'd0},
'{3'd0,3'd0,3'd5,3'd6,3'd6,3'd6,3'd2,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_0_6[7:0][0:0] = '{'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0}};

parameter bit [2:0] SpriteTableB_15_6[7:0][0:0] = '{'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0}};

parameter bit [2:0] SpriteTableB_16_5[3:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_3_4[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd2,3'd6,3'd6,3'd6},
'{3'd0,3'd0,3'd0,3'd0,3'd2,3'd6,3'd6,3'd6},
'{3'd0,3'd0,3'd0,3'd5,3'd6,3'd6,3'd6,3'd6},
'{3'd0,3'd0,3'd0,3'd5,3'd6,3'd6,3'd6,3'd6},
'{3'd0,3'd0,3'd0,3'd5,3'd6,3'd6,3'd6,3'd6},
'{3'd0,3'd0,3'd0,3'd0,3'd2,3'd6,3'd6,3'd6},
'{3'd0,3'd0,3'd0,3'd0,3'd2,3'd6,3'd6,3'd6},
'{3'd0,3'd0,3'd0,3'd0,3'd2,3'd6,3'd6,3'd6}};

parameter bit [2:0] SpriteTableB_2_4[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_13_0[7:0][7:0] = '{'{3'd5,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd5,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd5,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd5,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd6,3'd6,3'd6,3'd4,3'd0,3'd0,3'd0,3'd2},
'{3'd6,3'd6,3'd6,3'd4,3'd0,3'd0,3'd6,3'd6},
'{3'd6,3'd6,3'd6,3'd4,3'd0,3'd5,3'd6,3'd6},
'{3'd5,3'd0,3'd0,3'd0,3'd2,3'd6,3'd6,3'd6}};

parameter bit [2:0] SpriteTableB_8_4[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd6,3'd6,3'd6,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd6,3'd6,3'd6,3'd6,3'd3,3'd0,3'd0,3'd0},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd2,3'd0,3'd0},
'{3'd0,3'd5,3'd6,3'd6,3'd6,3'd3,3'd0,3'd0},
'{3'd0,3'd2,3'd6,3'd6,3'd6,3'd5,3'd0,3'd0},
'{3'd0,3'd2,3'd6,3'd6,3'd6,3'd5,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_16_0[3:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd6,3'd6,3'd6,3'd2,3'd6,3'd6,3'd5,3'd0},
'{3'd6,3'd6,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_9_1[7:0][7:0] = '{'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd6,3'd6,3'd6,3'd5,3'd0,3'd0,3'd0,3'd0},
'{3'd6,3'd6,3'd6,3'd5,3'd0,3'd0,3'd0,3'd0},
'{3'd6,3'd6,3'd6,3'd5,3'd0,3'd0,3'd0,3'd0},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_6_6[7:0][0:0] = '{'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0}};

parameter bit [2:0] SpriteTableB_5_6[7:0][0:0] = '{'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0}};

parameter bit [2:0] SpriteTableB_11_2[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_10_6[7:0][0:0] = '{'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0}};

parameter bit [2:0] SpriteTableB_16_2[3:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_2_1[7:0][7:0] = '{'{3'd6,3'd6,3'd6,3'd2,3'd0,3'd0,3'd0,3'd1},
'{3'd6,3'd6,3'd6,3'd4,3'd0,3'd0,3'd0,3'd1},
'{3'd6,3'd6,3'd6,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd6,3'd6,3'd6,3'd0,3'd0,3'd0,3'd0,3'd2},
'{3'd6,3'd6,3'd6,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd6,3'd6,3'd6,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd6,3'd6,3'd6,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_12_5[7:0][7:0] = '{'{3'd6,3'd6,3'd1,3'd6,3'd6,3'd6,3'd2,3'd0},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd5,3'd0,3'd0},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd1,3'd0,3'd0},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd4,3'd0,3'd0},
'{3'd5,3'd6,3'd6,3'd6,3'd5,3'd0,3'd0,3'd0},
'{3'd6,3'd6,3'd6,3'd6,3'd2,3'd0,3'd0,3'd0},
'{3'd6,3'd6,3'd6,3'd6,3'd0,3'd0,3'd0,3'd0},
'{3'd6,3'd6,3'd6,3'd2,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_14_0[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd0,3'd0},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd1},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd6,3'd0,3'd0,3'd0,3'd1,3'd6,3'd6,3'd6}};

parameter bit [2:0] SpriteTableB_9_4[7:0][7:0] = '{'{3'd5,3'd6,3'd6,3'd6,3'd2,3'd0,3'd0,3'd0},
'{3'd5,3'd6,3'd6,3'd6,3'd2,3'd0,3'd0,3'd0},
'{3'd5,3'd6,3'd6,3'd6,3'd2,3'd0,3'd0,3'd0},
'{3'd5,3'd6,3'd6,3'd6,3'd2,3'd0,3'd0,3'd4},
'{3'd5,3'd6,3'd6,3'd6,3'd2,3'd0,3'd0,3'd5},
'{3'd5,3'd6,3'd6,3'd6,3'd2,3'd0,3'd4,3'd6},
'{3'd5,3'd6,3'd6,3'd6,3'd2,3'd0,3'd0,3'd0},
'{3'd5,3'd6,3'd6,3'd6,3'd2,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_5_1[7:0][7:0] = '{'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd5,3'd0},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd0,3'd5,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd0,3'd0,3'd0,3'd0,3'd4,3'd6,3'd6,3'd6},
'{3'd6,3'd5,3'd0,3'd0,3'd4,3'd6,3'd6,3'd6},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd1,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_0_3[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_15_5[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_10_3[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_7_2[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
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

parameter bit [2:0] SpriteTableB_12_2[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_3_3[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd2,3'd6,3'd6}};

parameter bit [2:0] SpriteTableB_14_5[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_13_3[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd6,3'd6,3'd6,3'd6,3'd1,3'd0},
'{3'd0,3'd0,3'd6,3'd6,3'd6,3'd6,3'd1,3'd0}};

parameter bit [2:0] SpriteTableB_8_1[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd5},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd5},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd5},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd5},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd5},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd5},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd5},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_4_4[7:0][7:0] = '{'{3'd5,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd5,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd6,3'd6,3'd6,3'd4,3'd0,3'd0,3'd0,3'd4},
'{3'd6,3'd6,3'd6,3'd4,3'd0,3'd0,3'd5,3'd6},
'{3'd6,3'd6,3'd6,3'd4,3'd0,3'd3,3'd6,3'd6},
'{3'd5,3'd0,3'd0,3'd0,3'd4,3'd6,3'd6,3'd6},
'{3'd5,3'd0,3'd0,3'd0,3'd1,3'd6,3'd6,3'd6},
'{3'd5,3'd0,3'd0,3'd0,3'd1,3'd6,3'd6,3'd6}};

parameter bit [2:0] SpriteTableB_15_0[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd4,3'd6,3'd6,3'd6,3'd5,3'd4},
'{3'd0,3'd0,3'd4,3'd6,3'd6,3'd6,3'd5,3'd6},
'{3'd2,3'd0,3'd4,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd5,3'd0,3'd4,3'd6,3'd6,3'd6,3'd6,3'd5}};

parameter bit [2:0] SpriteTableB_16_4[3:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_6_3[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_1_5[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_11_1[7:0][7:0] = '{'{3'd6,3'd6,3'd4,3'd0,3'd0,3'd3,3'd6,3'd6},
'{3'd6,3'd6,3'd4,3'd0,3'd0,3'd3,3'd6,3'd6},
'{3'd6,3'd6,3'd4,3'd0,3'd0,3'd3,3'd6,3'd6},
'{3'd6,3'd6,3'd4,3'd0,3'd0,3'd3,3'd6,3'd6},
'{3'd6,3'd6,3'd4,3'd0,3'd0,3'd3,3'd6,3'd6},
'{3'd6,3'd6,3'd4,3'd0,3'd0,3'd3,3'd6,3'd6},
'{3'd6,3'd6,3'd4,3'd0,3'd0,3'd3,3'd6,3'd6},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_3_6[7:0][0:0] = '{'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0}};

parameter bit [2:0] SpriteTableB_2_2[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_8_6[7:0][0:0] = '{'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0}};

parameter bit [2:0] SpriteTableB_4_1[7:0][7:0] = '{'{3'd6,3'd6,3'd6,3'd6,3'd0,3'd0,3'd6,3'd6},
'{3'd6,3'd6,3'd6,3'd6,3'd0,3'd0,3'd2,3'd6},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd6,3'd6,3'd6,3'd3,3'd0,3'd0,3'd0,3'd0},
'{3'd6,3'd6,3'd6,3'd0,3'd0,3'd1,3'd6,3'd6},
'{3'd6,3'd6,3'd4,3'd0,3'd0,3'd0,3'd6,3'd6},
'{3'd3,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_6_4[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd4,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd3,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd5,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd5,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_5_4[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd3,3'd0,3'd0},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd4},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd6,3'd2,3'd0,3'd0,3'd6,3'd6,3'd6,3'd6},
'{3'd3,3'd0,3'd0,3'd0,3'd2,3'd6,3'd6,3'd6},
'{3'd3,3'd0,3'd0,3'd0,3'd2,3'd6,3'd6,3'd6}};

parameter bit [2:0] SpriteTableB_0_0[7:0][7:0] = '{'{3'd5,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd5,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd5,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd5,3'd6,3'd6,3'd6,3'd5,3'd0,3'd0,3'd4},
'{3'd5,3'd6,3'd6,3'd6,3'd5,3'd0,3'd0,3'd0},
'{3'd5,3'd6,3'd6,3'd6,3'd5,3'd0,3'd0,3'd4},
'{3'd5,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd5,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6}};

parameter bit [2:0] SpriteTableB_11_4[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd2,3'd0,3'd0,3'd0,3'd6,3'd6,3'd6,3'd6},
'{3'd6,3'd3,3'd0,3'd0,3'd3,3'd6,3'd6,3'd6},
'{3'd6,3'd6,3'd4,3'd0,3'd4,3'd6,3'd6,3'd6},
'{3'd6,3'd6,3'd2,3'd0,3'd0,3'd5,3'd6,3'd6},
'{3'd6,3'd6,3'd1,3'd0,3'd0,3'd2,3'd6,3'd6},
'{3'd6,3'd6,3'd1,3'd0,3'd0,3'd0,3'd6,3'd6}};

parameter bit [2:0] SpriteTableB_10_4[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd5,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd6,3'd6,3'd6,3'd0,3'd0,3'd0,3'd3,3'd6},
'{3'd0,3'd0,3'd0,3'd0,3'd2,3'd6,3'd6,3'd6},
'{3'd3,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6}};

parameter bit [2:0] SpriteTableB_7_1[7:0][7:0] = '{'{3'd6,3'd6,3'd6,3'd5,3'd0,3'd0,3'd0,3'd0},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd4,3'd0,3'd0},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd3,3'd0,3'd0},
'{3'd0,3'd4,3'd6,3'd6,3'd6,3'd5,3'd0,3'd0},
'{3'd0,3'd4,3'd6,3'd6,3'd6,3'd3,3'd0,3'd0},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd0,3'd0,3'd0},
'{3'd6,3'd6,3'd6,3'd1,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_14_6[7:0][0:0] = '{'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0}};

parameter bit [2:0] SpriteTableB_13_6[7:0][0:0] = '{'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0}};

parameter bit [2:0] SpriteTableB_0_5[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_10_1[7:0][7:0] = '{'{3'd6,3'd6,3'd6,3'd0,3'd0,3'd4,3'd6,3'd6},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd4,3'd6,3'd6},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd4,3'd6,3'd6},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd4,3'd6,3'd6},
'{3'd6,3'd6,3'd6,3'd3,3'd0,3'd4,3'd6,3'd6},
'{3'd6,3'd6,3'd6,3'd3,3'd0,3'd4,3'd6,3'd6},
'{3'd6,3'd6,3'd6,3'd3,3'd0,3'd4,3'd6,3'd6},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_1_0[7:0][7:0] = '{'{3'd6,3'd6,3'd3,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd6,3'd6,3'd6,3'd6,3'd0,3'd0,3'd0,3'd0},
'{3'd6,3'd6,3'd6,3'd6,3'd1,3'd0,3'd0,3'd0},
'{3'd6,3'd6,3'd6,3'd6,3'd5,3'd0,3'd0,3'd0},
'{3'd5,3'd6,3'd6,3'd6,3'd5,3'd0,3'd4,3'd6},
'{3'd6,3'd6,3'd6,3'd6,3'd3,3'd0,3'd4,3'd6},
'{3'd6,3'd6,3'd6,3'd6,3'd1,3'd0,3'd4,3'd6},
'{3'd6,3'd6,3'd6,3'd5,3'd0,3'd0,3'd4,3'd6}};

parameter bit [2:0] SpriteTableB_3_5[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd2,3'd6,3'd6,3'd6},
'{3'd0,3'd0,3'd0,3'd0,3'd2,3'd6,3'd6,3'd6},
'{3'd0,3'd0,3'd0,3'd0,3'd4,3'd6,3'd6,3'd6},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd6,3'd6,3'd6},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd6,3'd6},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_13_1[7:0][7:0] = '{'{3'd5,3'd0,3'd0,3'd0,3'd1,3'd6,3'd6,3'd6},
'{3'd5,3'd0,3'd0,3'd0,3'd1,3'd6,3'd6,3'd6},
'{3'd5,3'd0,3'd0,3'd0,3'd1,3'd6,3'd6,3'd6},
'{3'd5,3'd0,3'd0,3'd0,3'd2,3'd6,3'd6,3'd6},
'{3'd6,3'd6,3'd6,3'd0,3'd0,3'd5,3'd6,3'd6},
'{3'd6,3'd6,3'd6,3'd4,3'd0,3'd0,3'd6,3'd6},
'{3'd6,3'd6,3'd6,3'd2,3'd0,3'd0,3'd0,3'd1},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_8_3[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_4_6[7:0][0:0] = '{'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0}};

parameter bit [2:0] SpriteTableB_15_2[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_9_2[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_6_1[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd4,3'd0,3'd0,3'd2,3'd6,3'd6,3'd6,3'd6},
'{3'd3,3'd0,3'd0,3'd0,3'd0,3'd0,3'd5,3'd6},
'{3'd5,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd3,3'd0,3'd1,3'd6,3'd6,3'd6,3'd5,3'd0},
'{3'd0,3'd0,3'd0,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd0,3'd0,3'd0,3'd0,3'd1,3'd6,3'd6,3'd6},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_11_3[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_7_4[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd6,3'd6,3'd6,3'd6,3'd0,3'd3},
'{3'd0,3'd0,3'd6,3'd6,3'd6,3'd6,3'd5,3'd6},
'{3'd0,3'd0,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6},
'{3'd0,3'd0,3'd6,3'd6,3'd6,3'd6,3'd5,3'd0},
'{3'd0,3'd0,3'd6,3'd6,3'd6,3'd6,3'd2,3'd0},
'{3'd0,3'd0,3'd6,3'd6,3'd6,3'd6,3'd4,3'd0}};

parameter bit [2:0] SpriteTableB_2_0[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd6,3'd6,3'd5,3'd4,3'd6,3'd6,3'd6,3'd2},
'{3'd6,3'd6,3'd5,3'd6,3'd6,3'd6,3'd5,3'd0},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd1,3'd0},
'{3'd6,3'd6,3'd6,3'd5,3'd0,3'd0,3'd0,3'd2}};

parameter bit [2:0] SpriteTableB_12_4[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd2,3'd0,3'd0,3'd0,3'd1,3'd6,3'd6,3'd6},
'{3'd3,3'd0,3'd0,3'd0,3'd5,3'd6,3'd6,3'd6},
'{3'd6,3'd0,3'd0,3'd4,3'd6,3'd6,3'd6,3'd5},
'{3'd6,3'd4,3'd0,3'd1,3'd6,3'd6,3'd6,3'd1},
'{3'd6,3'd1,3'd0,3'd3,3'd6,3'd6,3'd6,3'd0},
'{3'd6,3'd5,3'd0,3'd6,3'd6,3'd6,3'd3,3'd0}};

parameter bit [2:0] SpriteTableB_4_3[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd5,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd5,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_14_3[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_9_5[7:0][7:0] = '{'{3'd5,3'd6,3'd6,3'd6,3'd2,3'd0,3'd4,3'd6},
'{3'd5,3'd6,3'd6,3'd6,3'd2,3'd0,3'd1,3'd6},
'{3'd5,3'd6,3'd6,3'd6,3'd2,3'd0,3'd1,3'd6},
'{3'd5,3'd6,3'd6,3'd6,3'd2,3'd0,3'd4,3'd6},
'{3'd5,3'd6,3'd6,3'd6,3'd2,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

parameter bit [2:0] SpriteTableB_5_2[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
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

parameter bit [2:0] SpriteTableB_11_6[7:0][0:0] = '{'{3'd0},
'{3'd0},
'{3'd0},
'{3'd0},
'{3'd2},
'{3'd6},
'{3'd6},
'{3'd6}};

parameter bit [2:0] SpriteTableB_10_2[7:0][7:0] = '{'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0}};

assign SpriteR = SpritePaletteR[SpriteTableR];
assign SpriteG = SpritePaletteG[SpriteTableG];
assign SpriteB = SpritePaletteB[SpriteTableB];

endmodule

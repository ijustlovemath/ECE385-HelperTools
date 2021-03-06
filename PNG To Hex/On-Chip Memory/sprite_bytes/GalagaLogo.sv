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
    logic [7:0] ObjectR, ObjectG, ObjectB;
    parameter ObjectXSize = 10'd10;
    parameter ObjectYSize = 10'd10;
    ...
    always_comb
    ...
         if(ObjectOn == 1'b1)
         begin
             Red = ObjectR;
             Green = ObjectG;
             Blue = ObjectB;
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

assign X_Index = SpriteX;
assign Y_Index = SpriteY;
parameter bit [7:0] SpritePaletteR[7:0] = '{8'd16, 8'd49, 8'd82, 8'd115, 8'd148, 8'd210, 8'd244, 8'd178};

parameter bit [2:0] SpriteTableR[24:0][26:0] = '{'{3'd0,3'd0,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd2,3'd2,3'd2,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd3,3'd3,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd2},
'{3'd1,3'd1,3'd1,3'd0,3'd0,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd2,3'd4,3'd1,3'd0,3'd0,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd1,3'd7},
'{3'd1,3'd1,3'd0,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd4,3'd7,3'd1,3'd0,3'd1,3'd3,3'd1,3'd0,3'd1,3'd2,3'd7,3'd6},
'{3'd1,3'd1,3'd0,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd0,3'd0,3'd2,3'd5,3'd4,3'd0,3'd1,3'd4,3'd1,3'd0,3'd2,3'd5,3'd6,3'd6},
'{3'd0,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd0,3'd1,3'd2,3'd0,3'd0,3'd1,3'd4,3'd6,3'd3,3'd1,3'd7,3'd3,3'd2,3'd5,3'd6,3'd6,3'd6},
'{3'd0,3'd0,3'd1,3'd0,3'd0,3'd0,3'd0,3'd1,3'd2,3'd1,3'd0,3'd1,3'd1,3'd0,3'd0,3'd0,3'd2,3'd5,3'd5,3'd4,3'd5,3'd5,3'd5,3'd6,3'd6,3'd6,3'd4},
'{3'd0,3'd0,3'd0,3'd1,3'd1,3'd0,3'd0,3'd0,3'd2,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd4,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd5,3'd1},
'{3'd0,3'd0,3'd0,3'd1,3'd2,3'd0,3'd0,3'd0,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd2,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd5,3'd4},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd2,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd4,3'd5,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd7},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd2,3'd3,3'd4,3'd7,3'd7,3'd5,3'd5,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd4},
'{3'd1,3'd1,3'd2,3'd2,3'd4,3'd7,3'd7,3'd4,3'd3,3'd2,3'd2,3'd2,3'd2,3'd2,3'd1,3'd2,3'd7,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd5,3'd7,3'd7},
'{3'd4,3'd7,3'd5,3'd6,3'd6,3'd6,3'd6,3'd5,3'd7,3'd4,3'd3,3'd3,3'd2,3'd1,3'd1,3'd3,3'd7,3'd6,3'd6,3'd6,3'd6,3'd6,3'd6,3'd4,3'd1,3'd1,3'd1},
'{3'd6,3'd6,3'd6,3'd6,3'd6,3'd7,3'd3,3'd2,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd2,3'd5,3'd6,3'd6,3'd6,3'd6,3'd6,3'd4,3'd0,3'd0,3'd0},
'{3'd5,3'd7,3'd4,3'd4,3'd3,3'd2,3'd1,3'd2,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd2,3'd1,3'd3,3'd6,3'd6,3'd7,3'd5,3'd5,3'd6,3'd7,3'd1,3'd1,3'd1},
'{3'd2,3'd1,3'd2,3'd2,3'd2,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd2,3'd3,3'd5,3'd5,3'd3,3'd2,3'd7,3'd2,3'd7,3'd7,3'd1,3'd1,3'd1},
'{3'd2,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd2,3'd7,3'd5,3'd3,3'd2,3'd7,3'd5,3'd2,3'd3,3'd7,3'd1,3'd0,3'd2},
'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd2,3'd4,3'd4,3'd2,3'd3,3'd5,3'd6,3'd5,3'd1,3'd1,3'd4,3'd2,3'd1,3'd7},
'{3'd2,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd2,3'd2,3'd3,3'd2,3'd1,3'd4,3'd6,3'd6,3'd4,3'd1,3'd0,3'd2,3'd1,3'd2,3'd5},
'{3'd2,3'd2,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd1,3'd2,3'd2,3'd3,3'd2,3'd7,3'd6,3'd6,3'd2,3'd0,3'd0,3'd1,3'd1,3'd4,3'd6},
'{3'd4,3'd1,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd1,3'd1,3'd2,3'd3,3'd3,3'd2,3'd7,3'd6,3'd5,3'd2,3'd1,3'd1,3'd0,3'd1,3'd7,3'd6},
'{3'd3,3'd1,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd2,3'd1,3'd3,3'd3,3'd3,3'd3,3'd2,3'd7,3'd6,3'd5,3'd1,3'd1,3'd0,3'd0,3'd2,3'd5,3'd6},
'{3'd1,3'd2,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd2,3'd5,3'd6,3'd5,3'd1,3'd0,3'd0,3'd0,3'd3,3'd6,3'd6},
'{3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd3,3'd2,3'd2,3'd3,3'd4,3'd3,3'd4,3'd4,3'd4,3'd3,3'd2,3'd5,3'd6,3'd5,3'd1,3'd0,3'd0,3'd0,3'd3,3'd6,3'd6},
'{3'd4,3'd3,3'd3,3'd3,3'd3,3'd2,3'd1,3'd1,3'd1,3'd2,3'd3,3'd3,3'd3,3'd3,3'd3,3'd2,3'd2,3'd5,3'd6,3'd5,3'd2,3'd0,3'd0,3'd0,3'd3,3'd6,3'd6}};

parameter bit [7:0] SpritePaletteG[7:0] = '{8'd16, 8'd49, 8'd82, 8'd179, 8'd212, 8'd246, 8'd113, 8'd146};

parameter bit [2:0] SpriteTableG[24:0][26:0] = '{'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd2,3'd2,3'd6,3'd2,3'd1,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1},
'{3'd1,3'd1,3'd2,3'd2,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd2,3'd6,3'd2,3'd1,3'd1,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd2},
'{3'd1,3'd2,3'd2,3'd1,3'd1,3'd1,3'd2,3'd2,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd2,3'd7,3'd2,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd2,3'd3},
'{3'd2,3'd2,3'd1,3'd1,3'd1,3'd1,3'd2,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd7,3'd3,3'd2,3'd0,3'd1,3'd6,3'd1,3'd1,3'd1,3'd2,3'd3,3'd5},
'{3'd2,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd2,3'd4,3'd3,3'd1,3'd1,3'd7,3'd2,3'd0,3'd2,3'd3,3'd5,3'd5},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd2,3'd1,3'd1,3'd2,3'd2,3'd1,3'd1,3'd1,3'd7,3'd5,3'd6,3'd1,3'd3,3'd6,3'd2,3'd3,3'd5,3'd5,3'd5},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd2,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd2,3'd4,3'd4,3'd7,3'd4,3'd4,3'd3,3'd5,3'd5,3'd5,3'd7},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd6,3'd2,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd7,3'd5,3'd5,3'd5,3'd5,3'd5,3'd5,3'd5,3'd4,3'd2},
'{3'd1,3'd1,3'd1,3'd2,3'd2,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd2,3'd5,3'd5,3'd5,3'd5,3'd5,3'd5,3'd5,3'd4,3'd7},
'{3'd1,3'd1,3'd0,3'd0,3'd1,3'd0,3'd0,3'd1,3'd2,3'd2,3'd6,3'd6,3'd7,3'd7,3'd7,3'd7,3'd7,3'd3,3'd5,3'd5,3'd5,3'd5,3'd5,3'd5,3'd5,3'd5,3'd3},
'{3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd2,3'd2,3'd6,3'd7,3'd3,3'd3,3'd4,3'd4,3'd5,3'd5,3'd5,3'd5,3'd5,3'd5,3'd5,3'd5,3'd5,3'd5,3'd7},
'{3'd1,3'd1,3'd1,3'd1,3'd0,3'd0,3'd0,3'd0,3'd1,3'd1,3'd2,3'd2,3'd2,3'd2,3'd2,3'd2,3'd3,3'd5,3'd5,3'd5,3'd5,3'd5,3'd5,3'd5,3'd4,3'd3,3'd3},
'{3'd0,3'd0,3'd0,3'd0,3'd0,3'd1,3'd2,3'd6,3'd2,3'd2,3'd2,3'd2,3'd1,3'd1,3'd2,3'd6,3'd3,3'd5,3'd5,3'd5,3'd5,3'd5,3'd5,3'd3,3'd2,3'd1,3'd1},
'{3'd0,3'd0,3'd1,3'd2,3'd2,3'd6,3'd2,3'd2,3'd2,3'd2,3'd2,3'd1,3'd1,3'd1,3'd2,3'd1,3'd2,3'd3,3'd5,3'd5,3'd5,3'd5,3'd5,3'd7,3'd1,3'd1,3'd1},
'{3'd2,3'd2,3'd2,3'd6,3'd6,3'd6,3'd6,3'd7,3'd3,3'd4,3'd4,3'd3,3'd3,3'd3,3'd7,3'd1,3'd6,3'd4,3'd5,3'd3,3'd4,3'd3,3'd4,3'd3,3'd1,3'd1,3'd1},
'{3'd2,3'd2,3'd6,3'd7,3'd3,3'd4,3'd4,3'd4,3'd4,3'd4,3'd4,3'd4,3'd4,3'd4,3'd3,3'd6,3'd4,3'd5,3'd6,3'd1,3'd7,3'd2,3'd3,3'd3,3'd2,3'd2,3'd1},
'{3'd7,3'd3,3'd4,3'd4,3'd4,3'd4,3'd4,3'd4,3'd4,3'd4,3'd4,3'd4,3'd4,3'd4,3'd6,3'd7,3'd4,3'd6,3'd1,3'd1,3'd6,3'd2,3'd2,3'd3,3'd2,3'd1,3'd1},
'{3'd4,3'd4,3'd4,3'd4,3'd4,3'd4,3'd4,3'd4,3'd4,3'd4,3'd4,3'd4,3'd4,3'd7,3'd7,3'd7,3'd2,3'd2,3'd7,3'd1,3'd2,3'd1,3'd1,3'd6,3'd2,3'd1,3'd0},
'{3'd6,3'd4,3'd4,3'd4,3'd4,3'd4,3'd4,3'd4,3'd4,3'd4,3'd4,3'd4,3'd7,3'd6,3'd6,3'd6,3'd2,3'd2,3'd3,3'd1,3'd1,3'd1,3'd0,3'd2,3'd2,3'd0,3'd0},
'{3'd1,3'd7,3'd4,3'd4,3'd4,3'd4,3'd4,3'd4,3'd4,3'd4,3'd4,3'd3,3'd2,3'd2,3'd6,3'd3,3'd6,3'd2,3'd6,3'd0,3'd0,3'd0,3'd1,3'd1,3'd1,3'd0,3'd0},
'{3'd2,3'd2,3'd3,3'd4,3'd4,3'd4,3'd4,3'd4,3'd4,3'd4,3'd4,3'd2,3'd1,3'd7,3'd4,3'd4,3'd6,3'd2,3'd2,3'd0,3'd0,3'd2,3'd2,3'd1,3'd0,3'd0,3'd0},
'{3'd2,3'd2,3'd4,3'd4,3'd4,3'd4,3'd4,3'd4,3'd4,3'd4,3'd3,3'd2,3'd7,3'd4,3'd4,3'd4,3'd6,3'd6,3'd2,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd0,3'd0},
'{3'd1,3'd7,3'd4,3'd4,3'd4,3'd4,3'd4,3'd4,3'd4,3'd4,3'd4,3'd3,3'd4,3'd4,3'd4,3'd4,3'd6,3'd6,3'd2,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd0,3'd1},
'{3'd3,3'd4,3'd4,3'd4,3'd4,3'd4,3'd4,3'd7,3'd6,3'd3,3'd4,3'd4,3'd4,3'd4,3'd4,3'd4,3'd2,3'd6,3'd2,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd1},
'{3'd4,3'd4,3'd4,3'd3,3'd3,3'd7,3'd2,3'd1,3'd1,3'd7,3'd3,3'd3,3'd3,3'd3,3'd3,3'd7,3'd2,3'd6,3'd1,3'd0,3'd1,3'd1,3'd1,3'd1,3'd1,3'd0,3'd2}};

parameter bit [7:0] SpritePaletteB[7:0] = '{8'd48, 8'd113, 8'd147, 8'd180, 8'd246, 8'd81, 8'd212, 8'd15};

parameter bit [2:0] SpriteTableB[24:0][26:0] = '{'{3'd1,3'd5,3'd5,3'd1,3'd5,3'd5,3'd5,3'd5,3'd5,3'd5,3'd5,3'd5,3'd5,3'd0,3'd5,3'd5,3'd2,3'd2,3'd1,3'd0,3'd0,3'd1,3'd1,3'd1,3'd1,3'd5,3'd0},
'{3'd1,3'd1,3'd1,3'd1,3'd5,3'd5,3'd5,3'd5,3'd5,3'd5,3'd5,3'd5,3'd5,3'd5,3'd5,3'd1,3'd1,3'd1,3'd5,3'd0,3'd0,3'd5,3'd1,3'd5,3'd5,3'd5,3'd5},
'{3'd5,3'd1,3'd1,3'd1,3'd5,3'd1,3'd1,3'd1,3'd5,3'd5,3'd5,3'd5,3'd1,3'd1,3'd5,3'd2,3'd5,3'd5,3'd5,3'd0,3'd0,3'd5,3'd5,3'd5,3'd5,3'd5,3'd3},
'{3'd1,3'd1,3'd1,3'd1,3'd5,3'd1,3'd1,3'd1,3'd5,3'd5,3'd5,3'd1,3'd1,3'd1,3'd5,3'd1,3'd3,3'd5,3'd5,3'd5,3'd1,3'd5,3'd5,3'd5,3'd5,3'd3,3'd4},
'{3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd5,3'd5,3'd5,3'd5,3'd5,3'd1,3'd1,3'd1,3'd5,3'd5,3'd3,3'd3,3'd0,3'd0,3'd2,3'd5,3'd0,3'd5,3'd3,3'd4,3'd4},
'{3'd1,3'd1,3'd1,3'd5,3'd5,3'd5,3'd5,3'd1,3'd2,3'd1,3'd1,3'd1,3'd2,3'd1,3'd5,3'd5,3'd1,3'd6,3'd1,3'd0,3'd2,3'd1,3'd5,3'd3,3'd4,3'd4,3'd4},
'{3'd5,3'd1,3'd1,3'd5,3'd5,3'd5,3'd5,3'd1,3'd2,3'd1,3'd1,3'd1,3'd1,3'd1,3'd1,3'd5,3'd5,3'd3,3'd6,3'd2,3'd6,3'd6,3'd3,3'd4,3'd4,3'd4,3'd2},
'{3'd5,3'd5,3'd5,3'd1,3'd1,3'd1,3'd1,3'd1,3'd2,3'd2,3'd1,3'd5,3'd5,3'd1,3'd1,3'd5,3'd0,3'd1,3'd4,3'd4,3'd4,3'd4,3'd4,3'd4,3'd4,3'd3,3'd0},
'{3'd1,3'd1,3'd5,3'd1,3'd2,3'd1,3'd5,3'd5,3'd1,3'd1,3'd5,3'd5,3'd5,3'd5,3'd5,3'd5,3'd0,3'd5,3'd6,3'd4,3'd4,3'd4,3'd4,3'd4,3'd4,3'd6,3'd2},
'{3'd1,3'd5,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd5,3'd5,3'd1,3'd1,3'd1,3'd1,3'd2,3'd2,3'd2,3'd3,3'd4,3'd4,3'd4,3'd4,3'd4,3'd4,3'd4,3'd4,3'd2},
'{3'd5,3'd5,3'd5,3'd0,3'd0,3'd0,3'd7,3'd7,3'd0,3'd5,3'd5,3'd1,3'd2,3'd2,3'd3,3'd6,3'd6,3'd4,3'd4,3'd4,3'd4,3'd4,3'd4,3'd4,3'd4,3'd4,3'd2},
'{3'd5,3'd5,3'd5,3'd5,3'd0,3'd7,3'd7,3'd7,3'd7,3'd7,3'd7,3'd7,3'd7,3'd7,3'd0,3'd5,3'd2,3'd4,3'd4,3'd4,3'd4,3'd4,3'd4,3'd4,3'd3,3'd3,3'd2},
'{3'd0,3'd7,3'd7,3'd7,3'd7,3'd7,3'd7,3'd7,3'd7,3'd7,3'd7,3'd7,3'd7,3'd7,3'd0,3'd5,3'd2,3'd6,3'd4,3'd4,3'd4,3'd4,3'd4,3'd2,3'd0,3'd0,3'd5},
'{3'd7,3'd7,3'd7,3'd7,3'd7,3'd7,3'd7,3'd7,3'd0,3'd0,3'd0,3'd7,3'd7,3'd0,3'd0,3'd0,3'd0,3'd3,3'd4,3'd4,3'd4,3'd4,3'd4,3'd2,3'd0,3'd5,3'd5},
'{3'd7,3'd7,3'd7,3'd7,3'd0,3'd0,3'd0,3'd0,3'd5,3'd5,3'd5,3'd5,3'd5,3'd5,3'd0,3'd0,3'd5,3'd6,3'd6,3'd2,3'd3,3'd3,3'd6,3'd3,3'd5,3'd1,3'd1},
'{3'd7,3'd0,3'd0,3'd5,3'd5,3'd5,3'd5,3'd5,3'd5,3'd5,3'd5,3'd5,3'd5,3'd5,3'd5,3'd5,3'd6,3'd6,3'd5,3'd0,3'd1,3'd5,3'd2,3'd3,3'd5,3'd1,3'd1},
'{3'd0,3'd5,3'd5,3'd5,3'd5,3'd5,3'd5,3'd5,3'd5,3'd5,3'd5,3'd5,3'd5,3'd5,3'd5,3'd2,3'd3,3'd5,3'd0,3'd7,3'd5,3'd5,3'd5,3'd3,3'd1,3'd1,3'd5},
'{3'd5,3'd5,3'd5,3'd5,3'd5,3'd5,3'd5,3'd5,3'd5,3'd5,3'd5,3'd5,3'd5,3'd5,3'd1,3'd2,3'd5,3'd7,3'd0,3'd7,3'd0,3'd5,3'd0,3'd1,3'd5,3'd5,3'd0},
'{3'd0,3'd5,3'd5,3'd5,3'd5,3'd5,3'd5,3'd5,3'd5,3'd5,3'd5,3'd5,3'd0,3'd5,3'd5,3'd0,3'd0,3'd7,3'd0,3'd7,3'd7,3'd0,3'd5,3'd5,3'd5,3'd0,3'd7},
'{3'd7,3'd0,3'd5,3'd5,3'd5,3'd5,3'd5,3'd5,3'd5,3'd5,3'd5,3'd5,3'd0,3'd0,3'd0,3'd5,3'd0,3'd7,3'd7,3'd7,3'd7,3'd0,3'd5,3'd0,3'd0,3'd7,3'd7},
'{3'd7,3'd0,3'd5,3'd5,3'd5,3'd5,3'd5,3'd5,3'd5,3'd5,3'd5,3'd0,3'd7,3'd0,3'd5,3'd5,3'd0,3'd7,3'd7,3'd7,3'd7,3'd5,3'd1,3'd5,3'd7,3'd7,3'd7},
'{3'd7,3'd0,3'd5,3'd5,3'd5,3'd5,3'd5,3'd5,3'd5,3'd5,3'd5,3'd0,3'd0,3'd5,3'd5,3'd5,3'd0,3'd7,3'd7,3'd7,3'd0,3'd5,3'd1,3'd5,3'd0,3'd7,3'd7},
'{3'd0,3'd5,3'd5,3'd5,3'd5,3'd5,3'd5,3'd5,3'd5,3'd5,3'd5,3'd5,3'd5,3'd5,3'd5,3'd5,3'd0,3'd7,3'd7,3'd7,3'd0,3'd5,3'd5,3'd5,3'd5,3'd7,3'd7},
'{3'd5,3'd5,3'd5,3'd5,3'd5,3'd5,3'd5,3'd0,3'd0,3'd5,3'd5,3'd5,3'd5,3'd5,3'd5,3'd5,3'd0,3'd7,3'd7,3'd7,3'd5,3'd1,3'd5,3'd5,3'd5,3'd7,3'd7},
'{3'd5,3'd5,3'd5,3'd5,3'd5,3'd0,3'd0,3'd7,3'd7,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd0,3'd7,3'd7,3'd7,3'd5,3'd1,3'd5,3'd1,3'd5,3'd7,3'd7}};

assign SpriteR = 8'd255 - SpritePaletteR[SpriteTableR[SpriteY][SpriteX]];
assign SpriteG = 8'd255 - SpritePaletteG[SpriteTableG[SpriteY][SpriteX]];
assign SpriteB = 8'd255 - SpritePaletteB[SpriteTableB[SpriteY][SpriteX]];

endmodule

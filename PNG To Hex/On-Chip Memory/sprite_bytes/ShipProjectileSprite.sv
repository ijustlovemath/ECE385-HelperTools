module ShipProjectileSprite(input [8:0] SpriteX, SpriteY,
            output [7:0] SpriteR, SpriteG, SpriteB);

parameter bit [7:0] SpriteTableR[7:0][2:0] = '{'{8'h00,8'hff,8'h00},
'{8'h00,8'hff,8'h00},
'{8'hff,8'hff,8'hff},
'{8'hff,8'h00,8'hff},
'{8'h00,8'hde,8'h00},
'{8'h00,8'hde,8'h00},
'{8'h00,8'hde,8'h00},
'{8'h00,8'hde,8'h00}};

parameter bit [7:0] SpriteTableG[7:0][2:0] = '{'{8'h00,8'h00,8'h00},
'{8'h00,8'h00,8'h00},
'{8'h00,8'h00,8'h00},
'{8'h00,8'hff,8'h00},
'{8'h00,8'hde,8'h00},
'{8'h00,8'hde,8'h00},
'{8'h00,8'hde,8'h00},
'{8'h00,8'hde,8'h00}};

parameter bit [7:0] SpriteTableB[7:0][2:0] = '{'{8'h00,8'h00,8'h00},
'{8'h00,8'h00,8'h00},
'{8'h00,8'h00,8'h00},
'{8'h00,8'hde,8'h00},
'{8'h00,8'hde,8'h00},
'{8'h00,8'hde,8'h00},
'{8'h00,8'hde,8'h00},
'{8'h00,8'hde,8'h00}};

assign SpriteR = SpriteTableR[SpriteY][SpriteX];
assign SpriteG = SpriteTableG[SpriteY][SpriteX];
assign SpriteB = SpriteTableB[SpriteY][SpriteX];

endmodule

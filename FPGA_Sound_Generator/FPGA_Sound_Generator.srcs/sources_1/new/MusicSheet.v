//MusicSheet.v
module MusicSheet( 
    input [9:0] number,
    output reg [19:0] note,
    output reg [4:0] duration,
    input [1:0] songSelect
);
parameter QUARTER = 5'b00010;
parameter HALF = 5'b00100;
parameter WHOLE = 5'b01000;
parameter EIGHTH = 5'b00010;
parameter SIXTEENTH = 5'b00001;
parameter ONE = 2* HALF;
parameter TWO = 2* ONE;
parameter FOUR = 2* TWO;
parameter G4 = 127_551, E4 = 151_685, B4 = 101_244, D5 = 85_156, G5 = 63_776, F5 = 71_573, F5s = 67_568, E5 = 75_837, G4f = 135_136, G4s = 120_385, C5s = 90_226, B4s = 95_493, A4 = 113_636, F4 = 143_170, D4 = 170_263, C4 = 191_113, C6 = 47_764, A5 = 56_818, C5 = 95_493, SP=1;
always @ (number, songSelect) begin
    case(songSelect)
        2'b00:
        begin
            //Imperial March
            case(number)
                //1
                0: begin note = G4; duration = QUARTER; end
                1: begin note = SP; duration = EIGHTH; end
                2: begin note = G4; duration = QUARTER; end
                3: begin note = SP; duration = EIGHTH; end
                4: begin note = G4; duration = QUARTER; end
                5: begin note = SP; duration = EIGHTH; end
                6: begin note = E4; duration = QUARTER; end
                7: begin note = SP; duration = SIXTEENTH; end
                8: begin note = B4; duration = SIXTEENTH; end
                9: begin note = SP; duration = SIXTEENTH; end
                
                //2
                10: begin note = G4; duration = QUARTER; end
                11: begin note = SP; duration = EIGHTH; end
                12: begin note = E4; duration = QUARTER; end
                13: begin note = SP; duration = SIXTEENTH; end
                14: begin note = B4; duration = SIXTEENTH; end
                15: begin note = SP; duration = SIXTEENTH; end
                16: begin note = G4; duration = HALF; end
                17: begin note = SP; duration = HALF; end
                
                //3
                18: begin note = D5; duration = QUARTER; end
                19: begin note = SP; duration = EIGHTH; end
                20: begin note = D5; duration = QUARTER; end
                21: begin note = SP; duration = EIGHTH; end
                22: begin note = D5; duration = QUARTER; end
                23: begin note = SP; duration = EIGHTH; end
                24: begin note = E5; duration = QUARTER; end
                25: begin note = SP; duration = SIXTEENTH; end
                26: begin note = B4; duration = SIXTEENTH; end
                27: begin note = SP; duration = SIXTEENTH; end
                
                //4
                28: begin note = G4f; duration = QUARTER; end
                29: begin note = SP; duration = EIGHTH; end
                30: begin note = E4; duration = QUARTER; end
                31: begin note = SP; duration = SIXTEENTH; end
                32: begin note = B4; duration = SIXTEENTH; end
                33: begin note = SP; duration = SIXTEENTH; end
                34: begin note = G4; duration = HALF; end      
                35: begin note = SP; duration = HALF; end
                
                //5
                36: begin note = G5; duration = QUARTER; end
                37: begin note = SP; duration = EIGHTH; end
                38: begin note = G4; duration = QUARTER; end
                39: begin note = SP; duration = SIXTEENTH; end
                40: begin note = G4; duration = SIXTEENTH; end
                41: begin note = SP; duration = SIXTEENTH; end
                42: begin note = G5; duration = QUARTER; end
                43: begin note = SP; duration = EIGHTH; end
                44: begin note = F5s; duration = QUARTER; end
                45: begin note = SP; duration = SIXTEENTH; end
                46: begin note = F5; duration = SIXTEENTH; end
                47: begin note = SP; duration = SIXTEENTH; end
                
                //6
                48: begin note = E5; duration = SIXTEENTH; end
                49: begin note = SP; duration = SIXTEENTH; end
                50: begin note = D5; duration = SIXTEENTH; end
                51: begin note = SP; duration = SIXTEENTH; end
                52: begin note = E5; duration = SIXTEENTH; end
                53: begin note = SP; duration = HALF; end
                54: begin note = G4s; duration = EIGHTH; end
                55: begin note = SP; duration = QUARTER; end
                56: begin note = C5s; duration = QUARTER; end
                57: begin note = SP; duration = QUARTER; end
                58: begin note = B4s; duration = QUARTER; end
                59: begin note = SP; duration = SIXTEENTH; end
                60: begin note = B4; duration = SIXTEENTH; end
                61: begin note = SP; duration = SIXTEENTH; end
                
                //7
                62: begin note = B4; duration = SIXTEENTH; end
                63: begin note = SP; duration = SIXTEENTH; end
                64: begin note = A4; duration = SIXTEENTH; end
                65: begin note = SP; duration = SIXTEENTH; end
                66: begin note = B4; duration = SIXTEENTH; end
                67: begin note = SP; duration = HALF; end
                68: begin note = E4; duration = EIGHTH; end
                69: begin note = SP; duration = EIGHTH; end
                70: begin note = G4; duration = QUARTER; end
                71: begin note = SP; duration = EIGHTH; end
                72: begin note = E4; duration = QUARTER; end
                73: begin note = SP; duration = SIXTEENTH; end
                74: begin note = G4; duration = SIXTEENTH; end
                75: begin note = SP; duration = SIXTEENTH; end
                
                //8
                76: begin note = B4; duration = QUARTER; end
                77: begin note = SP; duration = EIGHTH; end
                78: begin note = G4; duration = QUARTER; end
                79: begin note = SP; duration = SIXTEENTH; end
                80: begin note = B4; duration = SIXTEENTH; end
                81: begin note = SP; duration = SIXTEENTH; end
                82: begin note = D5; duration = HALF; end
                83: begin note = SP; duration = WHOLE; end
                84: begin note = SP; duration = WHOLE; end
                default: begin note = SP; duration = EIGHTH; end
            endcase            
        end
        2'b01:
        begin
            // Twinkle Twinkle Little Star
            case(number)
                0: begin note = C4; duration = QUARTER; end
                1: begin note = SP; duration = EIGHTH; end
                2: begin note = C4; duration = QUARTER; end
                3: begin note = SP; duration = EIGHTH; end
                4: begin note = G4; duration = QUARTER; end
                5: begin note = SP; duration = EIGHTH; end
                6: begin note = G4; duration = QUARTER; end
                7: begin note = SP; duration = EIGHTH; end
                8: begin note = A4; duration = QUARTER; end
                9: begin note = SP; duration = EIGHTH; end
                10: begin note = A4; duration = QUARTER; end
                11: begin note = SP; duration = EIGHTH; end
                12: begin note = G4; duration = HALF; end
                
                13: begin note = SP; duration = EIGHTH; end
                14: begin note = F4; duration = QUARTER; end
                15: begin note = SP; duration = EIGHTH; end
                16: begin note = F4; duration = QUARTER; end
                17: begin note = SP; duration = EIGHTH; end
                18: begin note = E4; duration = QUARTER; end
                19: begin note = SP; duration = EIGHTH; end
                20: begin note = E4; duration = QUARTER; end
                21: begin note = SP; duration = EIGHTH; end
                22: begin note = D4; duration = QUARTER; end
                23: begin note = SP; duration = EIGHTH; end
                24: begin note = D4; duration = QUARTER; end
                25: begin note = SP; duration = EIGHTH; end
                26: begin note = C4; duration = HALF; end
                
                27: begin note = SP; duration = EIGHTH; end
                28: begin note = G4; duration = QUARTER; end
                29: begin note = SP; duration = EIGHTH; end
                30: begin note = G4; duration = QUARTER; end
                31: begin note = SP; duration = EIGHTH; end
                32: begin note = F4; duration = QUARTER; end
                33: begin note = SP; duration = EIGHTH; end
                34: begin note = F4; duration = QUARTER; end
                35: begin note = SP; duration = EIGHTH; end
                36: begin note = E4; duration = QUARTER; end
                37: begin note = SP; duration = EIGHTH; end
                38: begin note = E4; duration = QUARTER; end
                39: begin note = SP; duration = EIGHTH; end
                40: begin note = D4; duration = HALF; end
                
                41: begin note = SP; duration = EIGHTH; end
                42: begin note = G4; duration = QUARTER; end
                43: begin note = SP; duration = EIGHTH; end
                44: begin note = G4; duration = QUARTER; end
                45: begin note = SP; duration = EIGHTH; end
                46: begin note = F4; duration = QUARTER; end
                47: begin note = SP; duration = EIGHTH; end
                48: begin note = F4; duration = QUARTER; end
                49: begin note = SP; duration = EIGHTH; end
                50: begin note = E4; duration = QUARTER; end
                51: begin note = SP; duration = EIGHTH; end
                52: begin note = E4; duration = QUARTER; end
                53: begin note = SP; duration = EIGHTH; end
                54: begin note = D4; duration = HALF; end
                
                55: begin note = SP; duration = EIGHTH; end                              
                56: begin note = C4; duration = QUARTER; end
                57: begin note = SP; duration = EIGHTH; end
                58: begin note = C4; duration = QUARTER; end
                59: begin note = SP; duration = EIGHTH; end
                60: begin note = G4; duration = QUARTER; end
                61: begin note = SP; duration = EIGHTH; end
                62: begin note = G4; duration = QUARTER; end
                63: begin note = SP; duration = EIGHTH; end
                64: begin note = A4; duration = QUARTER; end
                65: begin note = SP; duration = EIGHTH; end
                66: begin note = A4; duration = QUARTER; end
                67: begin note = SP; duration = EIGHTH; end
                68: begin note = G4; duration = HALF; end
                
                69: begin note = SP; duration = EIGHTH; end
                70: begin note = F4; duration = QUARTER; end
                71: begin note = SP; duration = EIGHTH; end
                72: begin note = F4; duration = QUARTER; end
                73: begin note = SP; duration = EIGHTH; end
                74: begin note = E4; duration = QUARTER; end
                75: begin note = SP; duration = EIGHTH; end
                76: begin note = E4; duration = QUARTER; end
                77: begin note = SP; duration = EIGHTH; end
                78: begin note = D4; duration = QUARTER; end
                79: begin note = SP; duration = EIGHTH; end
                80: begin note = D4; duration = QUARTER; end
                81: begin note = SP; duration = EIGHTH; end
                82: begin note = C4; duration = HALF; end                         
                default: begin note = SP; duration = EIGHTH; end
            endcase
        end        
        2'b10:
        begin
            // Happy Birthday
            case(number)
                0: begin note = C4; duration = QUARTER; end
                1: begin note = SP; duration = SIXTEENTH; end
                2: begin note = C4; duration = SIXTEENTH; end
                3: begin note = SP; duration = EIGHTH; end
                4: begin note = D4; duration = QUARTER; end
                5: begin note = SP; duration = EIGHTH; end
                6: begin note = C4; duration = QUARTER; end
                7: begin note = SP; duration = EIGHTH; end
                8: begin note = F4; duration = QUARTER; end
                9: begin note = SP; duration = EIGHTH; end
                10: begin note = E4; duration = HALF; end
                11: begin note = SP; duration = EIGHTH; end
                12: begin note = C4; duration = QUARTER; end
                13: begin note = SP; duration = EIGHTH; end
                14: begin note = C4; duration = SIXTEENTH; end
                15: begin note = SP; duration = SIXTEENTH; end
                16: begin note = D4; duration = QUARTER; end
                17: begin note = SP; duration = EIGHTH; end
                18: begin note = C4; duration = QUARTER; end
                19: begin note = SP; duration = EIGHTH; end
                20: begin note = G4; duration = QUARTER; end
                21: begin note = SP; duration = EIGHTH; end
                22: begin note = F4; duration = HALF; end
                23: begin note = SP; duration = EIGHTH; end
                24: begin note = C4; duration = QUARTER; end
                25: begin note = SP; duration = SIXTEENTH; end
                26: begin note = C4; duration = SIXTEENTH; end
                27: begin note = SP; duration = EIGHTH; end
                28: begin note = C5; duration = QUARTER; end
                29: begin note = SP; duration = EIGHTH; end
                30: begin note = A4; duration = QUARTER; end
                31: begin note = SP; duration = EIGHTH; end
                32: begin note = F4; duration = QUARTER; end
                33: begin note = SP; duration = EIGHTH; end
                34: begin note = E4; duration = QUARTER; end
                35: begin note = SP; duration = EIGHTH; end
                36: begin note = D4; duration = HALF; end
                37: begin note = SP; duration = QUARTER; end
                38: begin note = SP; duration = QUARTER; end
                39: begin note = SP; duration = EIGHTH; end
                40: begin note = B4; duration = QUARTER; end
                41: begin note = SP; duration = SIXTEENTH; end
                42: begin note = B4; duration = SIXTEENTH; end
                43: begin note = SP; duration = EIGHTH; end
                44: begin note = A4; duration = QUARTER; end
                45: begin note = SP; duration = EIGHTH; end
                46: begin note = F4; duration = QUARTER; end
                47: begin note = SP; duration = EIGHTH; end
                48: begin note = G4; duration = QUARTER; end
                49: begin note = SP; duration = EIGHTH; end
                50: begin note = F4; duration = HALF; end
                51: begin note = SP; duration = EIGHTH; end
                52: begin note = C5; duration = QUARTER; end
                53: begin note = SP; duration = SIXTEENTH; end
                54: begin note = C5; duration = SIXTEENTH; end
                55: begin note = SP; duration = EIGHTH; end
                56: begin note = D5; duration = QUARTER; end
                57: begin note = SP; duration = EIGHTH; end
                58: begin note = C5; duration = QUARTER; end
                59: begin note = SP; duration = EIGHTH; end
                60: begin note = F5; duration = QUARTER; end
                61: begin note = SP; duration = EIGHTH; end
                62: begin note = E5; duration = HALF; end
                63: begin note = SP; duration = EIGHTH; end
                64: begin note = C5; duration = QUARTER; end
                65: begin note = SP; duration = SIXTEENTH; end
                66: begin note = C5; duration = SIXTEENTH; end
                67: begin note = SP; duration = EIGHTH; end
                68: begin note = D5; duration = QUARTER; end
                69: begin note = SP; duration = EIGHTH; end
                70: begin note = C5; duration = QUARTER; end
                71: begin note = SP; duration = EIGHTH; end
                72: begin note = G5; duration = QUARTER; end
                73: begin note = SP; duration = EIGHTH; end
                74: begin note = F5; duration = HALF; end
                75: begin note = SP; duration = EIGHTH; end
                76: begin note = C5; duration = QUARTER; end
                77: begin note = SP; duration = SIXTEENTH; end
                78: begin note = C5; duration = SIXTEENTH; end
                79: begin note = SP; duration = EIGHTH; end
                80: begin note = C6; duration = QUARTER; end
                81: begin note = SP; duration = EIGHTH; end
                82: begin note = A5; duration = QUARTER; end
                83: begin note = SP; duration = EIGHTH; end
                84: begin note = F5; duration = QUARTER; end
                85: begin note = SP; duration = EIGHTH; end
                86: begin note = E5; duration = QUARTER; end
                87: begin note = SP; duration = EIGHTH; end
                88: begin note = D5; duration = WHOLE; end
                default: begin note = SP; duration = EIGHTH; end
            endcase
        end
        2'b11:
        begin
            // Mary Had a Little Lamb
            case(number)
                0: begin note = E4; duration = QUARTER; end
                1: begin note = SP; duration = EIGHTH; end
                2: begin note = D4; duration = QUARTER; end
                3: begin note = SP; duration = EIGHTH; end
                4: begin note = C4; duration = QUARTER; end
                5: begin note = SP; duration = EIGHTH; end
                6: begin note = D4; duration = QUARTER; end
                7: begin note = SP; duration = EIGHTH; end
                8: begin note = E4; duration = QUARTER; end
                9: begin note = SP; duration = EIGHTH; end
                10: begin note = E4; duration = QUARTER; end
                11: begin note = SP; duration = EIGHTH; end
                12: begin note = E4; duration = HALF; end
                13: begin note = SP; duration = EIGHTH; end
                14: begin note = D4; duration = QUARTER; end
                15: begin note = SP; duration = EIGHTH; end
                16: begin note = D4; duration = QUARTER; end
                17: begin note = SP; duration = EIGHTH; end
                18: begin note = D4; duration = HALF; end
                19: begin note = SP; duration = EIGHTH; end
                20: begin note = E4; duration = QUARTER; end
                21: begin note = SP; duration = EIGHTH; end
                22: begin note = E4; duration = QUARTER; end
                23: begin note = SP; duration = EIGHTH; end
                24: begin note = E4; duration = HALF; end
                25: begin note = SP; duration = EIGHTH; end
                26: begin note = E4; duration = QUARTER; end
                27: begin note = SP; duration = EIGHTH; end
                28: begin note = D4; duration = QUARTER; end
                29: begin note = SP; duration = EIGHTH; end
                30: begin note = C4; duration = QUARTER; end
                31: begin note = SP; duration = EIGHTH; end
                32: begin note = D4; duration = QUARTER; end
                33: begin note = SP; duration = EIGHTH; end
                34: begin note = E4; duration = QUARTER; end
                35: begin note = SP; duration = EIGHTH; end
                36: begin note = E4; duration = QUARTER; end
                37: begin note = SP; duration = EIGHTH; end
                38: begin note = E4; duration = HALF; end
                39: begin note = SP; duration = EIGHTH; end
                40: begin note = D4; duration = QUARTER; end
                41: begin note = SP; duration = EIGHTH; end
                42: begin note = D4; duration = QUARTER; end
                43: begin note = SP; duration = EIGHTH; end
                44: begin note = E4; duration = QUARTER; end
                45: begin note = SP; duration = EIGHTH; end
                46: begin note = D4; duration = QUARTER; end
                47: begin note = SP; duration = EIGHTH; end
                48: begin note = C4; duration = WHOLE; end
                default: begin note = SP; duration = EIGHTH; end
            endcase
        end           
    endcase    
end                  
endmodule

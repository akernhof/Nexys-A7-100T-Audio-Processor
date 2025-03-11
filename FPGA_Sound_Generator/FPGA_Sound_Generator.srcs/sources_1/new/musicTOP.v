//musicTOP.v
`timescale 1ns / 1ps
module musicTOP(
    input sw1,
    input sw2,
    input sw3,
    input btnl, // New input for song selection button
    input btnr,
    input btnc,
    input clk,
    output audioOut,
    output aud_sd,
    output [1:0] LED // New output for LEDs
    );
    reg [1:0] songSelect; // New register for song selection
    reg btnl_prev, btnr_prev, btnc_prev; // Previous state of btn for edge detection
    wire btnl_out, btnr_out, btnc_out; //Debounced btnc and btnr signals
    reg isPaused;

    // Instantiate the Debouncer
    Debouncer db_btnl (.button_in(btnl), .clk(clk), .button_out(btnl_out));
    Debouncer db_btnr (.button_in(btnr), .clk(clk), .button_out(btnr_out));
    Debouncer db_btnc (.button_in(btnc), .clk(clk), .button_out(btnc_out));

    always @(posedge clk) begin
        if(btnr_out && !btnr_prev && songSelect < 3) songSelect <= songSelect + 1; // Increment songSelect on rising edge of btnr
        btnr_prev <= btnr_out; // Update previous state of btnr
        
        if(btnl_out && !btnl_prev && songSelect > 0) songSelect <= songSelect - 1; // Decrement songSelect on rising edge of btnl, if songSelect > 0
        btnl_prev <= btnl_out; // Update previous state of btnl
        
        if(btnc_out && !btnc_prev) isPaused <= ~isPaused; // If press btnc, pause the song
        btnc_prev <= btnc_out; //Update previous state of btnc
    end
    
    assign LED = songSelect; // Assign songSelect to LED output

    SongPlayer u1 (.clk(clk), .reset(sw2), .playSound(sw3), .songSelect(songSelect), .isPaused(isPaused), .audioOut(audioOut), .aud_sd(aud_sd));
endmodule

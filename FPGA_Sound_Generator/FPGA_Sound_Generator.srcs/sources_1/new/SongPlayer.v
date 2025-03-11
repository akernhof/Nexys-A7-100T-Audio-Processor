//SongPlayer.v
module SongPlayer(
    input clk, 
    input reset, 
    input playSound,
    input [1:0] songSelect,
    input isPaused, 
    output reg audioOut, 
    output wire aud_sd
);
    reg [19:0] counter;
    reg [31:0] time1, noteTime;
    reg [9:0] msec, number; // millisecond counter, and sequence number of musical 
    wire [4:0] note, duration;
    wire [19:0] notePeriod;
    parameter clockFrequency = 100_000_000; 

    assign aud_sd = 1'b1;

    MusicSheet mysong(number, notePeriod, duration, songSelect);

    always @ (posedge clk) begin
        if(reset | ~playSound) begin 
            counter <= 0;  
            time1 <= 0;  
            number <= 0;  
            audioOut <= 1;
        end else if (~isPaused) begin
            counter <= counter + 1; 
            time1 <= time1 + 1;
            if(counter >= notePeriod) begin
                counter <= 0;  
                audioOut <= ~audioOut; 
            end
            // toggle audio output 
            if(time1 >= noteTime) begin
                time1 <= 0;  
                number <= number + 1; 
            end  // play next note
            if(number == 88) number <= 0; // Make the number reset at the end of the song
        end
    end

    always @(duration) noteTime = duration * clockFrequency / 8; // number of FPGA clock periods in one note.
endmodule

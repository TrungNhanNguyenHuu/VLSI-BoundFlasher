module boundFlasher (flick, clk, rst, led);
  input wire flick;
  input wire clk;
  input wire rst;
  output reg [15:0] led;
  
  reg [2:0] state;
  reg [2:0] stateR;
  reg [15:0] ledTemp;
  
  reg flickFlag;
  
  always @(posedge clk or negedge rst) begin
    if (rst == 1'b0) begin
      led <= 16'b0;
    end
    else begin
      led <= ledTemp;
    end
  end
  
  always @(state or led) begin
    if (state == 3'b000) begin
      ledTemp = 16'b0;
    end
    else if (state == 3'b001 || state == 3'b011 || state == 3'b101) begin
      ledTemp = (led << 1) | 1;
    end
    else if (state == 3'b010 || state == 3'b100 || state == 3'b110) begin
      ledTemp = led >> 1;
    end
    else begin
      ledTemp = 16'b0;
    end
  end
  
  always @(posedge clk or negedge rst) begin
    if (rst == 1'b0) begin
      stateR <= 3'b000;
    end
    else begin
      stateR <= state;
    end
  end
  
  always @(flick or stateR or led or rst) begin
    if (rst == 1'b0) begin
      state = 3'b000;
    end
    else begin
    case (stateR)
      3'b000: begin
        if (flick == 1) begin
          state = 3'b001;
        end
      end
      
      3'b001: begin
        if (led[15] == 1) begin
          state = 3'b010;
        end
      end
      
      3'b010: begin	// state 2
        if (flick == 1 && led[5] == 0) begin
          state = 3'b001;
        end
        else if (led[5] == 0 && flickFlag == 0) begin
          state = 3'b011;
        end
      end
      
      3'b011: begin
        if (led[10] == 1) begin
          state = 3'b100;
        end
      end
      
      3'b100: begin	// state 4
        if (flick == 1 && led[5] == 0 && led[4] == 1 && led[3] == 1 && led[2] == 1 && led[1] == 1 && led[0] == 1) begin
          state = 3'b011;
        end
        else if (flick == 1 && led[0] == 0) begin
          state = 3'b011;
        end  
        else if (led[0] == 0 && flickFlag == 0) begin
          state = 3'b101;
        end
      end
      
      3'b101: begin
        if (led[5] == 1) begin
          state = 3'b110;
        end
      end
      
      3'b110: begin
        if (led[0] == 0) begin
          state = 3'b000;
        end
      end
      
      default: state = 3'b000;
    endcase
    end
  end
  
  always @(flick or rst or stateR or led) begin
    if (rst == 1'b0) begin
      flickFlag = 1'b0;
    end
    else if (flick == 1'b1 && stateR == 3'b010 && led[5] == 0) begin
      flickFlag = 1'b1;
    end
    else if (flick == 1'b1 && stateR == 3'b100 && led[5] == 0 && led[4] == 1 && led[3] == 1 && led[2] == 1 && led[1] == 1 && led[0] == 1) begin
      flickFlag = 1'b1;
    end    
    else if (flick == 1'b1 && stateR == 3'b100 && led[0] == 0) begin
      flickFlag = 1'b1;
    end 
    else if (led[5] == 1) begin
      flickFlag = 1'b0;
    end
    else if (led[0] == 1 && stateR == 3'b011 && led[1] == 0) begin
      flickFlag = 1'b0;
    end
  end

endmodule
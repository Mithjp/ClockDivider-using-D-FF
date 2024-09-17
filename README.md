# ClockDivider-using-D-FF
A simple clock divider using multiple D flipflops
A clock divider is a circuit used to slow down the input clock by dividing its frequency.It is designed using flipflops.
Usually a D flipflop is used to generate delay.
The flip-flop works by:
On every rising edge of the clock ,the flip-flop copies the value of D to the output Q.
If we connect the inverted output of the flip-flop back to the input, we can make the flip-flop toggle its output and hence divide the clock frequency.
Each time the flip-flop toggles, it changes its output on every clock edge. Since it requires two clock cycles (one to go from 0 to 1 and one to go from 1 back to 0) to complete a full output cycle, the output frequency is half of the input clock frequency
![image](https://github.com/user-attachments/assets/fead86b8-b41f-4533-927b-c31ba90ba0f7)
![image](https://github.com/user-attachments/assets/ef596fff-3555-4b74-878b-8922ba261e98)


 

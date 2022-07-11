pragma circom 2.0.0;

// [assignment] Modify the circuit below to perform a multiplication of three signals

template Multiplier2 () {  

   // Declaration of signals.  
   signal input a;  
   signal input b;  
   signal output c;  

   // Constraints.  
   c <== a * b;  
}

template Multiplier3 () {  

   // Declaration of signals.  
   signal input a;  
   signal input b;
   signal input c;
   signal output d;

   component mult2 = Multiplier2();
   mult2.a <== a;
   mult2.b <== b;

   // Constraints.  
   var d1 = mult2.c;
   d <== d1 * c;

}

component main = Multiplier3();
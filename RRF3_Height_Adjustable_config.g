M569 P0.5 S0 D2						; Drive 5 direction | A

M584 A5							; Axis to driver mapping 

M208 A0:55						; Set axis software limits and min/max switch-triggering positions

M350 A16 I1						; Configure microstepping with interpolation

M906 A600 I20						; Set motor currents (mA) and idle percent A400
M203 A6000						; Max speeds (mm/min)
M201 A1200						; Max Accelerations (mm/s^2)
M566 A360						; Max jerk (mm/min)

M92 A360						; Steps/mm 

M915 A S5 F0 H200 R0					; A Stall Detection

M950 F7 C"^0.out9" Q600					;Wipe Servo
M106 P7 C"Wipe" 					;Wipe Servo

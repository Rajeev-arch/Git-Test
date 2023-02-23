@echo off
set Arr[0]=10.201.20.6
set Arr[1]=10.201.20.7
set Arr[2]=10.201.20.8
set Arr[3]=10.201.20.9
set Arr[4]=10.201.20.10
set Arr[5]=10.201.20.11
set Arr[6]=10.201.20.27
set Arr[7]=10.201.20.28
set Arr[8]=10.201.20.29
set Arr[9]=10.201.20.30
set Arr[10]=10.201.20.31
set Arr[11]=10.201.20.32
set Arr[12]=10.201.20.35
set Arr[13]=10.201.20.36
set Arr[14]=10.201.20.39
set Arr[15]=10.201.20.40
set Arr[16]=10.201.20.41
set Arr[17]=10.201.20.42

set "x=0"

:SymLoop
if not defined Arr[%x%] goto :endLoop
call set VAL=%%Arr[%x%]%%
ssh -o StrictHostKeyChecking=no -i .\Desktop\admin01 -t admin@%VAL% sudo timedatectl set-timezone America/Los_Angeles && timedatectl
ssh -o StrictHostKeyChecking=no -i .\Desktop\admin01 -t admin@%VAL% sudo timedatectl

[2:16 PM] Rajeev Kumar
use this 


sudo timedatectl set-timezone 
SET /a "x+=1"
GOTO :SymLoop

:endLoop
echo "Done"
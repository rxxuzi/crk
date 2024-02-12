push ebp
mov ebp,esp
and esp,FFFFFFF0
sub esp,120
call crackme.4016D0
mov dword ptr ss:[esp+1A],3179656B
mov word ptr ss:[esp+1E],3332
mov byte ptr ss:[esp+20],0
mov dword ptr ss:[esp],crackme.404044 ; [esp]:TpCallbackIndependent+3E0, 404044:"Enter the password: "
call <JMP.&printf>
lea eax,dword ptr ss:[esp+21]
mov dword ptr ss:[esp+4],eax
mov dword ptr ss:[esp],crackme.404059 ; [esp]:TpCallbackIndependent+3E0, 404059:"%254s"
call <JMP.&scanf>
lea eax,dword ptr ss:[esp+1A]
mov dword ptr ss:[esp+4],eax
lea eax,dword ptr ss:[esp+21]
mov dword ptr ss:[esp],eax ; [esp]:TpCallbackIndependent+3E0
call <JMP.&strcmp>
test eax,eax
jne crackme.40162B
mov dword ptr ss:[esp],crackme.404060 ; [esp]:TpCallbackIndependent+3E0, 404060:"Access Granted! You've entered the correct password."
call <JMP.&puts>
jmp crackme.401639
mov dword ptr ss:[esp],crackme.404098 ; [esp]:TpCallbackIndependent+3E0, 404098:"Access Denied! Incorrect password, please try again."
call <JMP.&puts>
jmp crackme.4015E5
mov eax,0
leave

	Slide_attack() {
		Sleep, 20
		Send, {Ctrl down}
		Sleep, 20
		Send, e
		Sleep, 20
		Send, {Ctrl up}
		return
	}

	Auto_attack() {
		Send, e
		Sleep, 20
		return
	}

	Disable_code() {
		Suspend, Toggle
		return
	}


attack = False

*e::
#IfWinActive Warframe
	if (attack = False){
		Slide_attack()
	}else{
		Auto_attack()
	}
return


*Numpad9::
	if (attack = False){
		attack := True
	}else{
		attack := False
	}
return


{*Numpad8::

Suspend, Toggle

return
}
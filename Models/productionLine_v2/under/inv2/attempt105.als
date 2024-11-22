sig Workstation {
	workers : set Worker,
	succ : set Workstation
}
one sig begin, end in Workstation {}

sig Worker {}
sig Human, Robot extends Worker {}

abstract sig Product {
	parts : set Product	
}

sig Material extends Product {}

sig Component extends Product {
	workstation : set Workstation
}

sig Dangerous in Product {}

pred inv2{
all ws: Workstation | some ws.workers
all w: Worker, ws1, ws2: Workstation | w in ws1.workers && w in ws2.workers => ws1=ws2
}
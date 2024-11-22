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

pred inv9{
no end.succ
no W:Workstation | W in W.succ
no W:Workstation | begin in W.succ

all W:Workstation-end | one W.succ
all W:Workstation-begin | one W2:Workstation-begin | W in W2.succ
}
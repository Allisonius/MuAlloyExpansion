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

pred inv3{
all a:Component | some b:Workstation | a->b in workstation
all a1,a2:Workstation | (some b:Component | a1->b in workstation and a2->b in workstation) implies a1 = a2
}
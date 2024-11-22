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

pred inv10{
all c,c2 : Component | all w,w2 : Workstation |
w in c.workstation and c2 in c.^(parts) and w2 in c2.workstation implies
w in w2.^(succ)
}
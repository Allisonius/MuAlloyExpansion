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
all c0, c1 : Component | all w0, w1 : Workstation | c0->w0 in workstation and c1->w1 in workstation and c1 in c0.^parts implies w0 in w1.^succ
}
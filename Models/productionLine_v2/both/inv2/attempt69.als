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
all w : Workstation | Worker in w.workers
all w1,w2 : Workstation | all wk : Worker | wk in w1.workers and wk in w2.workers implies w1=w2
}
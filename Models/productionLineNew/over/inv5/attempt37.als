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

pred inv5{
all w : Workstation | all h : Human | all r : Robot | ((h in w.workers) iff (r not in w.workers)) and ((r in w.workers) iff (h not in w.workers))
}
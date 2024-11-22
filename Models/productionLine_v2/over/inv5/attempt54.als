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
all w : Workstation | all r : Robot | all h : Human | r in w.workers implies h not in w.workers
all w : Workstation | all r : Robot | all h : Human | h in w.workers implies r not in w.workers
all w : Workstation | w.workers=w.workers&Robot or w.workers=w.workers&Human
}
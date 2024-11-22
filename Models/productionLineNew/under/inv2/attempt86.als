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
all x : Workstation | #(x.workers)>0
all x,y : Worker | all z,w : Workstation | (x in z.workers and y in w.workers and z!=w) implies x!=y
}
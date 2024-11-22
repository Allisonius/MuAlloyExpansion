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
all wb : Workstation | one r : Robot | one h : Human  | (r in wb.workers) implies (h not in wb.workers)
all wb : Workstation | one r : Robot | one h : Human  | (h in wb.workers) implies (r not in wb.workers)
}
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
all x:Workstation | x not in succ.x and lone succ.x
all x:Workstation | one Workstation implies x in begin and x in end
all x:Workstation | (not (x in begin iff x in end)) or x in succ.x
}
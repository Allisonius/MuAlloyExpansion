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

pred inv4{
all p:Product, p1:Product | (p in Component implies p in p1.parts and p!=p1) or (p in Material implies p not in p1.parts and p!=p1)
}
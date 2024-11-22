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
all w : Workstation & begin | w.succ in end and w != w.succ
all w : Workstation & end | w.succ in begin and w != w.succ
all w : Workstation | w.succ in Workstation
}
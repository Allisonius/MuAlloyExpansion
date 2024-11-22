sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv1{
all t:Track | some t.succs implies some x:Exit, e:Entry | x in t.^succs and e in t.^succs
}
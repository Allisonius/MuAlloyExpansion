sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv3{
all t1: Track | some t2: Track | t1 in t2.^succs and no t1.succs implies t1 in Exit
}
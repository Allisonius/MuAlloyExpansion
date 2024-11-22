sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv8{
all e:Track | e in Entry implies all x:Track | x in Exit and x in e.^succs
}
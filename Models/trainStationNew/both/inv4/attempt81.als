sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv4{
all t : Track | all e : Entry | t not in Entry and e not in t.^succs
}
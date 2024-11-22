sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv4{
all e : Entry | all t : Track | all s : Signal | t->e not in succs and e->s not in signals
}
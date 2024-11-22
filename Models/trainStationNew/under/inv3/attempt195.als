sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv3{
all x : Signal | all y : Track | (x in Exit and x in y.signals) implies no y.succs
}
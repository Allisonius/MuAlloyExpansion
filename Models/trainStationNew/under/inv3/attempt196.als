sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv3{
all y : Track | all x : Signal | (x in Exit and y in x.signals) implies no y.succs
}
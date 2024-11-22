sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv2{
all s : Signal | all t1, t2 : Track | s in t1.signals and s in t2.signals implies t1 = t2
}
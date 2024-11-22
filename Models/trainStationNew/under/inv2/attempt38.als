sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv2{
all s,x : Signal | all t,m : Track | (s in t.signals and x in m.signals) implies s!=m
}
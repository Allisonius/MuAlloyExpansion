sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv2{
all x,y : Signal | all t,m : Track | x in t.signals and y in m.signals implies y!=x
}
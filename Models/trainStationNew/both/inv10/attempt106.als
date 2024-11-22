sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv10{
all t1,t2 : Track | all s : Semaphore | t2 in t1.succs and t2 in Junction implies s in t1.signals
}
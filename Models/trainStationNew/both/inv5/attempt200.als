sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv5{
all j : Junction | all t1,t2 : Track | t1!=t2 implies j in t1.succs&t2.succs
}
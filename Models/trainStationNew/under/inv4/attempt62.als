sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv4{
all t,t1 : Track | t!=t1 and t in Entry implies t not in t1.succs
}
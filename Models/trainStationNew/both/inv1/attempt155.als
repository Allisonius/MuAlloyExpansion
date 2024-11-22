sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv1{
all x : Track | some y:Exit | some z:Entry | y in x.succs and z in x.succs and x!=y and x!=z and y!=z and x not in x.succs
}
sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv1{
all j:Junction | j in Track implies some e:Entry, x:Exit | e->j in succs and j->x in succs
}
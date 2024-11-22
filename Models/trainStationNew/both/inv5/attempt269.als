sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv5{
all j : Junction | some t1,t2 : Track | j!=t1 and j!=t2 and j in t1.succs and j in t2.succs and t1!=t2
}
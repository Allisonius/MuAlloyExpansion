sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv1{
some disj t1, t2 : Track | t1 = Entry and t2 = Exit
}
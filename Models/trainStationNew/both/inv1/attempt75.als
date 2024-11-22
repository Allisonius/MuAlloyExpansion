sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv1{
all t1,t2 : Track | t1 != t2 implies some t1 & Entry and some t2 & Exit
}
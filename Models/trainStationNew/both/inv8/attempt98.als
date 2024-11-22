sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv8{
all t1,t2:Track |  t1!=t2 and one (t1 & Entry) and one (t2 & Exit) implies t1 in t2.^succs
}
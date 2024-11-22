sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv4{
all t1,t2:Track | t1 in t2.^succs implies no (t2 & Entry)

all t1:Track | no (t1 & Entry) implies (some t2:Track | t1 in t2.^succs)
}
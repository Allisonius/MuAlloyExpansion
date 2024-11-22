sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv9{
all disj t, t2 : Track | no (t2 & t.succs) <=> no (Semaphore & t.signals)
}
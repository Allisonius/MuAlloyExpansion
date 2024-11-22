sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv5{
all t:Track | (t in Junction and t not in t.(^succs)) implies (#(t.succs) > 1 )
}
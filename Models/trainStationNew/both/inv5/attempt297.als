sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv5{
all disj t,t2,t3:Track | one t2.succs and one t3.succs and t in t2.succs and t in t3.succs and t not in t.^(succs) or t in Track.^(succs)<=> t in Junction
}
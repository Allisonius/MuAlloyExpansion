sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv4{
all t:Track | t not in Track.^succs implies Entry in t
all t:Track | Entry in t implies no t.succs
}
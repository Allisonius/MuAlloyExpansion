sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv3{
all t:Track | t not in Track.^succs implies Exit in t
all t:Track | Exit in t implies t not in Track.^succs
}
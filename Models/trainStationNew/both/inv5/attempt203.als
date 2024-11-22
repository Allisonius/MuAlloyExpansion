sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv5{
all t : Track | some disj p1, p2 : Track |
p1 + p2 in succs.t => t in Junction
}
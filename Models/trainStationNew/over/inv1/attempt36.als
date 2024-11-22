sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv1{
one t: Track | t in Entry and t in Track
one t: Track | t in Exit and t in Track
}
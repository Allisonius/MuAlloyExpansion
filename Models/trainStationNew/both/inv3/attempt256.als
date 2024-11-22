sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv3{
all t : Track | t in Exit or t in Entry or t in Junction
all t : Track | no t.succs implies t in Exit
}
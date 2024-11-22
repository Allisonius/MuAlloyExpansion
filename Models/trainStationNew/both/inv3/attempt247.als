sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv3{
all e:Exit | e not in Entry and e not in Junction
all t: Track| #t.succs=0 implies t in Exit
}
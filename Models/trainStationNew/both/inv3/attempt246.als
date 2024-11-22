sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv3{
all t: Exit| no t.succs
all t: Exit | t not in Junction
all t: Exit | t not in Entry
}
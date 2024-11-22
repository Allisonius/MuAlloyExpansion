sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv5{
all x : Track | (x in Junction implies #(succs.x) > 0) and (#(succs.x) > 0 implies x in Junction )
}
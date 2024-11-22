sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv8{
all t: Track | some t&Entry implies (Exit in t.*succs or some t&Exit)
}
sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv8{
all e : Entry | some t : Track | e->t in succs and (some k : Track | t->k in succs and k in Exit)
}
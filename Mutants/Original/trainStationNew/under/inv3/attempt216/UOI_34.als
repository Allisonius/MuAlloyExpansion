module unknown
open util/integer [] as integer
sig Track {
succs: (set Track),
signals: (set Signal)
}
sig Junction in Track {}
sig Entry in Track {}
sig Exit in Track {}
sig Signal {}
sig Semaphore extends Signal {}
sig Speed extends Signal {}
pred inv3[] {
(all exit,entry,junction: (one univ) {
(((exit in Exit) && (entry in Entry) && (junction in Junction)) => ((entry !in (exit.(~succs))) && (junction !in (exit.succs))))
})
}






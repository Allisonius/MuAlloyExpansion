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
(all exit: (one univ) {
((exit in Exit) => ((no (exit.succs)) && (no track: (one Track) {
(exit in (track.succs))
})))
})
}






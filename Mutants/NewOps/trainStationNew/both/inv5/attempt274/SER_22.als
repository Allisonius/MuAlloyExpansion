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
pred inv5[] {
(all track: (one univ) {
(((track in Junction) && ((#(track.(^succs))) > 1)) => ((track in Junction) && (track !in Exit) && (track !in Entry)))
})
}






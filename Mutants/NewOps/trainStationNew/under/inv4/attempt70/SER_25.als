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
pred inv4[] {
(all entry: (one univ) {
(((entry in Entry) && (no (succs.entry)) && (entry !in (entry.(^succs)))) => (entry in Entry))
})
}






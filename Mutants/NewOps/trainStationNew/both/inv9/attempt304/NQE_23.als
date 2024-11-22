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
pred inv9[] {
(some ts: (one Track) {
(all t: (one Track) {
((((t->ts) in succs) && (ts !in Junction)) => (all s: (one Signal) {
((t->s) !in signals)
}))
})
})
}






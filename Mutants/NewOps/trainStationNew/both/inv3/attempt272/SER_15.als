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
((all t: (one Entry) {
((t in Exit) => (all ts: (one Track) {
((t != ts) && ((t->ts) !in succs))
}))
}) && (all t: (one Track) {
((t in Exit) => (all s: (one Signal) {
((t->s) !in signals)
}))
}))
}






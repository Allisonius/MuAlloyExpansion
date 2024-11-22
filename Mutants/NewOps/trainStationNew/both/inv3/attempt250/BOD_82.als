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
((all t: (one Track) {
(((#(succs.t)) = 0) => (t in Entry))
}) && (all t: (one Track) {
((t in Entry) => ((#t) = 0))
}))
}






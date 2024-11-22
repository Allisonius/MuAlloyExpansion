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
((all t: (Track - Junction) {
(((#(t.succs)) = 0) => (t in Exit))
}) && (all t: (one Exit) {
(no Entry)
}))
}






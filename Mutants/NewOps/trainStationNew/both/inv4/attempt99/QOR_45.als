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
((all x: (one Track) {
((x in Entry) => ((#(x.succs)) = 0))
}) && (no x: (one Track) {
(((#(x.succs)) = 0) => (x in Entry))
}))
}






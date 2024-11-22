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
((all var123456 : Junction { ((#(succs.var123456)) > 1)}) && (all t: (one Track) {
(((#(succs.t)) > 1) => (t in Junction))
}))
}






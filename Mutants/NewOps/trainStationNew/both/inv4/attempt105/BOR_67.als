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
((all t1,t2: (one Track) {
((t1 in (t2.(^succs))) => (no (t2 & Entry)))
}) && (all t1: (one Track) {
((no (t1 & Entry)) <=> (some t2: (one Track) {
(t1 in (t2.(^succs)))
}))
}))
}






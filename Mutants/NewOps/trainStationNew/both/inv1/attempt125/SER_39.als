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
pred inv1[] {
(all s: (one Track) {
((some e: (one Signal) {
(e in (s.succs))
}) && (some x: (one Exit) {
(x in (s.succs))
}))
})
}






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
pred inv6[] {
(all x: (one Signal) {
(one y: (one Signal) {
((x in Entry) => (((x->y) in signals) && (y in Speed)))
})
})
}






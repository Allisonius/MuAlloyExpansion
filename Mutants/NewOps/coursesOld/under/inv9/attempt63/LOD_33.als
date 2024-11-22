module unknown
open util/integer [] as integer
open util/ordering [Grade] as ordering
sig Person {
teaches: (set Course),
enrolled: (set Course),
projects: (set Project)
}
sig Professor in Person {}
sig Student in Person {}
sig Course {
projects: (set Project),
grades: (Person->Grade)
}
sig Project {}
sig Grade {}
pred inv9[] {
(all t,t1: (one Professor) {
(all c,c1: (one Course) {
(((c in ((t.teaches) & (t1.teaches))) && (c1 in (t.teaches))) => (c1 !in (t1.enrolled)))
})
})
}






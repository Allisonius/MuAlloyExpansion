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
(all t1,t2: (one Professor) {
(((t1->t2) in (teaches.(~teaches))) <=> (t2 != (enrolled.(t1.teaches))))
})
}






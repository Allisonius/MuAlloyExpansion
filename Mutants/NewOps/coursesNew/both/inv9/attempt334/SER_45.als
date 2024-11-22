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
(all t1,t2: (one Professor),c: (one Course) {
(((c in (t1.teaches)) && (c in (t2.teaches))) => (all t2: (one Student) {
((c !in (t2.enrolled)) && (t2 != t1) && (c !in (t2.teaches)))
}))
})
}






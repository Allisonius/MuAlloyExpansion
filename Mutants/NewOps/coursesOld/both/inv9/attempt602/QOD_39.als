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
(all t1,t2: (one Person),c: (one (t1.enrolled)) {
(((t1 != t2) && (c in (t2.enrolled))) => (!(((((Course)) in (t1.enrolled)) && (((Course)) in (t2.teaches))) || ((((Course)) in (t2.enrolled)) && (((Course)) in (t1.teaches))))))
})
}






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
(all disj p,p1: (one Professor) {
(((#((p.teaches) & (p1.teaches))) > 0) => (((#((p.enrolled) & (p1.teaches))) = 0) && ((#((p1.enrolled) - (p.teaches))) = 0)))
})
}






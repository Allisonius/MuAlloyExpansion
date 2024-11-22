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
(all disj p,pp: (one Person) {
((some ((p.teaches) & (pp.teaches))) => (((p.enrolled) !in (pp.teaches)) && ((pp.enrolled) in (p.teaches))))
})
}






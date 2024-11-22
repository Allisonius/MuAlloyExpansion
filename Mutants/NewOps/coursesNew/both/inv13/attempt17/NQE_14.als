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
pred inv13[] {
(some p: (one Person) {
(all c: (one Course) {
((p in ((c.grades).(ordering/max[Grade]))) => (((p.projects) & (c.projects)) != none))
})
})
}






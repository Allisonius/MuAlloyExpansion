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
(lone c: (one Course),s: (one Student) {
((s in ((c.grades).(ordering/max[Grade]))) => (one proj: (one (s.projects)) {
(proj in (c.projects))
}))
})
}






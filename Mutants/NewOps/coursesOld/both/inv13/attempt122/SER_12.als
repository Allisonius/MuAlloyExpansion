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
((all c: (one Student) {
(all g: (one Grade) {
((g in (Student.(c.grades))) => ((Student->g) in (c.grades)))
})
}) && (all c: (one Course) {
(some s: (one Student) {
((no ((s.(c.grades)).(ordering/next[]))) => ((s.projects) in (c.projects)))
})
}))
}






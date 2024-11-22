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
((all c: (one Course) {
(all g: (one Grade) {
((g in (Student.(c.grades))) => ((Student->g) in (c.grades)))
})
}) && (all c: (one Course) {
((no ((((Student)).(c.grades)).(ordering/next[]))) => ((((Student)).projects) in (c.projects)))
}))
}






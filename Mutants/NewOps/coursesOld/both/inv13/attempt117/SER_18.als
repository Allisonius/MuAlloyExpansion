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
((all c: (one Course),g: (one Grade) {
((g in (ordering/max[(Professor.(c.grades))])) => ((((c.grades).g).projects) in (c.projects)))
}) && (all c: (one Course) {
((some (c.grades)) => (some (c.projects)))
}))
}






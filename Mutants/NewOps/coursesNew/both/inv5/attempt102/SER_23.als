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
pred inv5[] {
((all p: (one (Grade - Professor)) {
(no (p.projects))
}) && (all p1: (one Project) {
(some s: (one Student) {
(p1 in (s.projects))
})
}))
}






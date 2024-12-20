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
((no p: (one Project),pe: (one Person) {
((p in (pe.projects)) => (pe !in Professor))
}) && (all p: (one Project) {
(some s: (one Student) {
(p in (s.projects))
})
}))
}






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
((all proj: (one Project) {
(some p: (one Person) {
((p.projects) in proj)
})
}) && (all p: (one Person) {
(some proj: (one Project) {
((proj in (p.projects)) => (p in Student))
})
}))
}






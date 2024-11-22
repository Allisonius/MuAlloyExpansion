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
((some s: (one Student) {
(all p: (one Project) {
((s->p) !in projects)
})
}) && (all person: (one Person) {
(all p2: (one Project) {
(((person->p2) in projects) => (person in Student))
})
}))
}






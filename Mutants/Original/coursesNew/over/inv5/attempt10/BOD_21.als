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
((all s: (one Person) {
(all p: (one Project) {
((p in s) => (s in Student))
})
}) && (some s: (one Person) {
(all p: (one Project) {
(s in (projects.p))
})
}))
}






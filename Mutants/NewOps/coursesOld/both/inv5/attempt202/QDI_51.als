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
(all p: (one Person) {
((p in Student) => (some pr: (one Project) {
(((p->pr) in projects) && (all pr: (one Project) {
(some p: (Person + Professor) {
((p->pr) in projects)
})
}))
}))
})
}






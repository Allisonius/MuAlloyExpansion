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
((all p: (one (Person - Student)) {
(no (p.teaches))
}) && (all pr: (one Project) {
(some s: (one (Person - Professor)) {
(pr in (s.projects))
})
}))
}






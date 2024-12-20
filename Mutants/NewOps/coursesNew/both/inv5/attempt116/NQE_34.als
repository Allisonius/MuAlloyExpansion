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
((some c: (one Project) {
(all a: (one (Person - Professor)) {
(c in (a.projects))
})
}) && (all a: (one (Person - Student)) {
(no (a.projects))
}))
}






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
((all s: (one Course) {
(no ((Professor - Student).projects))
}) && (all p: (one Project) {
(some x: (one Student) {
(p in (x.projects))
})
}))
}






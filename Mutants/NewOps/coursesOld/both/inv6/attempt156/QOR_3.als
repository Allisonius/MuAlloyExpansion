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
pred inv6[] {
(lone s: (one Student),tp: (one Project),c: (one Course) {
(((tp in (s.projects)) && (tp in (c.projects))) => (s in (enrolled.c)))
})
}






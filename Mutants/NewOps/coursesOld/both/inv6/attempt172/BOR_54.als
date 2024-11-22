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
((no ((Person - Student).projects)) && (all s: (one Student),c: (one Course) {
(((s.projects) !in (c.projects)) && (c in (s.enrolled)))
}))
}






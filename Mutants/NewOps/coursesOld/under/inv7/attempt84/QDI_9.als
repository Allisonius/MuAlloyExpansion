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
pred inv7[] {
(all s: (Person - Student),c: (one Course),p1,p2: (one Project) {
(((p1 in (s.projects)) && (p2 in (s.projects)) && (c in (s.enrolled)) && (p1 in (c.projects)) && (p2 in (c.projects))) => (p1 = p2))
})
}






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
(all s: (one Student),tp1,tp2: (one Project),c: (one Course) {
(((tp1 in (s.projects)) && (tp2 in (s.projects)) && (tp1 in (c.projects)) && (tp2 in c)) => (tp1 != tp2))
})
}






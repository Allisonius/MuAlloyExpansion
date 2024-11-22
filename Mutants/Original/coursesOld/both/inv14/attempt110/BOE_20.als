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
pred inv14[] {
(all s: (one Student),u: (one (Student - s)),p: (one Project),r: (one (Project - p)) {
(((r in (s.projects)) => ((p in (s.projects)) && (p in (u.projects)))) || (r in (u.projects)))
})
}






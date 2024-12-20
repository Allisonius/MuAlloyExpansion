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
(one s: (one Student),ss: (one (Student - s)),p: (one Project),pp: (one (Project - p)) {
(((p in (s.projects)) && (p in none)) => ((pp in (s.projects)) && (pp in none)))
})
}






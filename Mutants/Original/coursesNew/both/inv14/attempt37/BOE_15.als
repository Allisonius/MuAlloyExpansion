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
(all s: (one Student),ss: (one (Student - s)),p: (one Project),pp: (one (p - Project)) {
(((p in (s.projects)) && (p in (ss.projects))) => ((pp in (s.projects)) && (pp in none)))
})
}






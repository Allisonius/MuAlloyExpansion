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
(all disj s1,s2: (one Project),pj: (one Project) {
(((pj in (s1.projects)) => (pj !in (s2.projects))) && ((pj in (s2.projects)) => (pj !in (s1.projects))))
})
}






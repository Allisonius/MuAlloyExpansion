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
pred inv15[] {
(all c: (one Course),p: (one Project),s1,s2: (one Student) {
(((((~(c.grades)).s2) in none) || (((c.grades).s2) in none)) => (p in (((c.projects) & (s1.projects)) & (s2.projects))))
})
}






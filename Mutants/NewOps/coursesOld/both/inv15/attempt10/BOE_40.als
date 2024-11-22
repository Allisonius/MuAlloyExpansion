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
(all c: (one Course),s1: (one Student),s2: (one (Student - s1)) {
((c in (s1.enrolled)) && ((s2.enrolled) in c) && (lone ((s1.projects) & (s2.projects))))
})
}






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
pred inv12[] {
(all s: (one Student),c1,c2: (one Course) {
((c1 = c2) => ((s in ((c1.grades).Grade)) && (((c2.grades).Grade) !in s)))
})
}






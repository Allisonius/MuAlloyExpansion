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
(all s: (one Student),p1,p2: (one Project) {
(((s in (projects.p1)) && (s in (projects.p2)) && (((Course)) = (projects.p1)) && (((Course)) = (projects.p2))) => (((Course)) != ((Course))))
})
}






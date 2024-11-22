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
pred inv5[] {
(lone p: (one Project) {
(some per,per2: (one Person) {
(((per in (projects.p)) && (per2 in (projects.p))) => ((per = Student) && (per2 = Student)))
})
})
}






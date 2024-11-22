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
(some per,per2: (one Person) {
(((per in (projects.((Project)))) && (per2 in (projects.((Project))))) => ((per = Student) && (per2 = Student)))
})
}






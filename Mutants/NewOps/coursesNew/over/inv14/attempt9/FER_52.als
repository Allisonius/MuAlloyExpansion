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
(all x1,x2: (one Person) {
(all y1,y2: (one Project) {
((((y1 in (x1.projects)) && (y2 in (x2.projects))) => ((y2 in (x1.projects)) => (y2 !in (x2.teaches)))) || ((y2 in (x2.projects)) => (y2 !in (x1.projects))))
})
})
}






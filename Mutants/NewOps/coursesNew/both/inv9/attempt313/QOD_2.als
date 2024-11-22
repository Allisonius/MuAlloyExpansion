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
pred inv9[] {
(all p: (one Professor),c: (one (p.teaches)),p2: (one Professor) {
((p2 in (teaches.c)) => ((p in (teaches.((Course)))) => (p2 !in (enrolled.((Course))))))
})
}






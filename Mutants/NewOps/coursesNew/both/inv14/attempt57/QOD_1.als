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
((((((Person))->((Project))) in projects) && (((Person - ((Person)))->((Project))) in projects) && (((Person)) in Student) && ((Person - ((Person))) in Student)) => (((((Person))->(Project - ((Project)))) in projects) && (((Person - ((Person)))->(Project - ((Project)))) !in projects)))
}






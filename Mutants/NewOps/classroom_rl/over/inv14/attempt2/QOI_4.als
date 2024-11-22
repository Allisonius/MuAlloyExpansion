module unknown
open util/integer [] as integer
sig Person {
Tutors: (set Person),
Teaches: (set Class)
}
sig Group {}
sig Class {
Groups: (Person->Group)
}
sig Teacher in Person {}
sig Student in Person {}
pred inv14[] {
(some var123456 : Group { (Tutors = ((Person.Teaches)->(var123456.(~((Person.Teaches).Groups)))))})
}






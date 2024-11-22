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
pred inv3[] {
(((Person in Student) && (Person !in Teacher)) || ((all var123456 : Person { (var123456 !in Student)}) && (Person in Teacher)))
}






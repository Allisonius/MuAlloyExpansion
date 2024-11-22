module unknown
open util/integer [] as integer
sig User {
follows: (set User),
sees: (set Photo),
posts: (set Photo),
suggested: (set User)
}
sig Influencer extends User {}
sig Photo {
date: (one Day)
}
sig Ad extends Photo {}
sig Day {}
pred inv3[] {
(((((User))->((Photo))) in sees) => ((lone u2: (one User) {
(((((User))->u2) in follows) && ((u2->((Photo))) in posts))
}) || (((Photo)) in Ad)))
}






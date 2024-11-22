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
(some disj u1,u2: (one User) {
((((((Photo)) in (u1.sees)) && (((Photo)) in (u2.posts))) => (u2 in (u1.follows)) else (((Photo)) in Ad)) || ((((Photo)) in (u1.posts)) => (((Photo)) in (u1.sees))))
})
}






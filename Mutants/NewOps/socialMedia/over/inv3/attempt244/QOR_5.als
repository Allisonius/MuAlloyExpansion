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
(some x,y: (one User),p: (one Photo) {
((((p in (x.sees)) && (p !in Ad)) => ((y in (follows.x)) && (p in (y.posts)))) || (p in Ad))
})
}






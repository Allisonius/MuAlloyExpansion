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
(all x,y: (one User),p: (one Photo),a: (one Ad) {
((((p in (x.follows)) && (p in (y.posts)) && (x != y)) => ((y in (follows.x)) && (p != a))) || (p = a))
})
}






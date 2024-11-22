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
((((p in (x.sees)) && (p in (y.posts)) && (!(p in (x.posts)))) => ((y != (follows.x)) && (p != a))) || (p = a))
})
}






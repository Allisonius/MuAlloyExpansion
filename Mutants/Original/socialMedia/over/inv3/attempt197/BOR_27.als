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
(all x,y: (one User),f: (one Photo) {
(((f in (x.sees)) && (f !in Ad)) => ((f !in (y.posts)) && (y in (x.follows))))
})
}






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
pred inv8[] {
(all x,y: (one User),a: (one Ad) {
((a in (x.sees)) => (((y.posts) in a) && (y in ((x.follows) + (x.suggested)))))
})
}






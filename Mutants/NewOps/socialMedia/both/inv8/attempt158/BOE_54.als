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
(all u: (one User),p: (one Photo) {
(((p in (u.sees)) && ((posts.p) in (u.follows))) || ((p in Ad) => ((posts.p) in (u.suggested))))
})
}






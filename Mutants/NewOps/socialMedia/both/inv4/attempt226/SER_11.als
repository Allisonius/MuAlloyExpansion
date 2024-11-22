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
pred inv4[] {
(one p: (one Photo) {
(all f: (one (Photo - Ad)) {
(all x: (one User) {
((p in (x.posts)) => (f !in (x.posts)))
})
})
})
}






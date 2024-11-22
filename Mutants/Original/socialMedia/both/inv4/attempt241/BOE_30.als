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
(all p: (one Photo) {
(one u: (one (User - Influencer)) {
((some (Ad & (u.posts))) => ((p in Ad) => (p in (u.posts))))
})
})
}






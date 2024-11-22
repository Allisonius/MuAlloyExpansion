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
(all u: (one User) {
(one ad: (one (u.sees)) {
((some (ad & Ad)) => (one u2: (one ((u.follows) + (u.suggested))) {
(ad in (u2.posts))
}))
})
})
}






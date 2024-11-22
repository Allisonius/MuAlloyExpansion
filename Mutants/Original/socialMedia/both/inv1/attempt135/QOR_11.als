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
pred inv1[] {
(all i: (one Influencer) {
(all p: (one Photo) {
(lone u: (one (User - i)) {
(p in (u.posts))
})
})
})
}






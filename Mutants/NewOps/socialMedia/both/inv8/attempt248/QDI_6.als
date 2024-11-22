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
(all u: (User - Influencer) {
(some ad: (one Ad),i: (one User) {
(((ad in (u.sees)) => ((i in (u.follows)) && (ad in (i.posts)))) || ((i in (u.suggested)) && (ad in (i.posts))))
})
})
}






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
(some ad: (one Ad),i: (one User) {
(((ad in (((User)).sees)) => ((i in (((User)).follows)) && (ad in (i.posts)))) || ((i in (((User)).suggested)) && (ad in (i.posts))))
})
}






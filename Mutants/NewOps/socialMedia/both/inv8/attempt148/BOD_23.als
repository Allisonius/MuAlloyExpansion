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
(all a: (one Ad),u1,u2: (one User) {
(((u1 in (sees.a)) && (u2 in (posts.a))) || (u1 in (suggested.u2)))
})
}






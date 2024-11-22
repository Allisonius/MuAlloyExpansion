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
(all u,us: (one Ad),a: (one Ad) {
(((a in (u.sees)) && (a in (us.posts))) => ((us in (u.follows)) || (us in (u.suggested))))
})
}






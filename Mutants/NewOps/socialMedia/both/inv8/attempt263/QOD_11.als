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
((some ad: (one Ad) {
(((((User)) != ((User))) && ((((User))->((User))) in follows) && ((((User))->ad) in posts)) => ((((User))->ad) in sees))
}) && (all u,s: (one User) {
(some ad: (one Ad) {
(((u != s) && ((u->s) in suggested) && ((s->ad) in posts)) => ((u->ad) in sees))
})
}))
}






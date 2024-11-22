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
(all a: (one Ad) {
((a in (((User)).sees)) => (some followed,suggest: (one univ) {
(((followed in (a.posts)) && (followed in (((User)).follows))) || (((suggest->a) in posts) && ((((User))->suggest) in suggested)))
}))
})
}






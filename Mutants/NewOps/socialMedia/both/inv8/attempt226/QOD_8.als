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
((((((User)) != ((User))) && (a in (((User)).posts)) && (a in (((User)).sees))) => (((User)) in (((User)).follows))) || (((User)) in (((User)).suggested)))
})
}






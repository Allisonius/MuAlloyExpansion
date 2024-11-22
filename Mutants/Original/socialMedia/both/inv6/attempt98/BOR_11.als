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
pred inv6[] {
(all i: (one Influencer) {
(all x,y: (one (i.posts)) {
((x.date) != ((y.date).(integer/next[])))
})
})
}






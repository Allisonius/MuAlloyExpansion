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
(all inf: (Influencer - User) {
(all day: (one Day) {
(one ph: (one Photo) {
((ph in (inf.posts)) && (day in (ph.date)))
})
})
})
}






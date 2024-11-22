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
pred inv3[] {
(all u,f: (one User),img: (one Photo) {
((img in (u.sees)) => ((img = Day) || ((f in (u.follows)) && (img in (f.posts)))))
})
}






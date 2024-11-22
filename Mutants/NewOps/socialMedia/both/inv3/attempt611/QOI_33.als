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
((no var123456 : User { ((var123456.sees) = (((((var123456.follows).posts) + Ad) + (var123456.posts)) - (var123456.suggested)))}) && ((Influencer.sees) = ((((Influencer.follows).posts) + Ad) + (Influencer.posts))))
}






# Snail's Pace Race

This is a quick code challenge for Week 5 in Mod 4 of Turing BE.

The problem is:
```
Given an n x n array, write a function that returns the array elements arranged from outermost elements to the middle element, traveling clockwise.
```

## Versions

Ruby 2.4.1

## Testing

This challenge uses Minitest

run `ruby test/snail_test.rb`


## Thoughts and Struggles

I thought this was a fun little challenge. I made some silly mistakes like remembering to reverse the direction of the array values for the bottom row. I also had an issue of `nil` being returned as the last value. To combat this, each method first checks to see if the original matrix is empty before running the method.

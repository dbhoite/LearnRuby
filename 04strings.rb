str = "hello World"

## Indexing into a string

# print second char => e
puts str[1]

# print three chars starting at position 6 => Wor
puts str[6,3]

# print chars from position 6 through 9 => Worl
puts str[6..9]

# print two chars starting at fifth character from end => Wo
puts str[-5,2]

# print chars from position -5 through -2 => Worl
puts str[-5..-2]

# print chars from position 6 to 9, excluding 9, three dots excludes the last position => Wor
puts str[6...9]

## String functions

puts str.length           # 11
puts str.reverse          # dlrow olleh
puts str.upcase           # HELLO WORLD
puts str.capitalize       # Hello world
puts str.swapcase         # HELLO wORLD
puts str.downcase         # hello world
puts str.insert(2, "to")  # hetollo world, modifies original
puts str.squeeze          # hetolo world
puts str.split            # ["hello", "World"]

# back quotes execute comands
# same as %x// or %x{}
puts `dir`

# chop chomp work same as perl

# format strings using printf, similar to C
printf("0.04f=%0.04f : 0.02f=%0.02f\n", 10.12945, 10.12945)
printf("d=%d f=%f o=%o x=%x s=%s\n", 10, 10, 10, 10, 10)

# ranges

a = (1..10)
b = ('a'..'e')
puts a.to_a
puts b.to_a

## Heredoc

# heredocs allow you to put a long string spanning multiple lines without needing quotes
hdoc2 = <<'EODOC'
I wandered lonely as a #{"cloud".upcase},
That floats on high o'er vale and hill...
EODOC

# avoid requiring the heredoc marker to be flush to left margin by putting a - in front

hdoc3 = <<-EODOC
I wandered lonely as a #{"cloud".upcase},
That floats on high o'er vale and hill...
    EODOC

puts hdoc2
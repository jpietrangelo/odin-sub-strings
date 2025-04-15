# odin-sub-strings
Odin Project: Sub Strings

#substrings takes a word as the first argument and then an array of valid substrings (your dictionary) as the second argument. It returns a hash listing each substring (case insensitive) that was found in the original string and how many times it was found.

Example:
WORDS = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("below", WORDS)

Returns: {"below" => 1, "low" => 1}

substrings("Howdy partner, sit down! How's it going?", WORDS)

Returns: {"down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1}

Note: This project could have been made much easier by using the Ruby method String#scan, however I wanted to do it without resorting to a single built-in method.

#JOHN CARL V. BABIERA BSIT- 1 SC 239
word = input("Enter a word: ")
word = word.lower()
reversed_word = word[::-1]
if word == reversed_word:
    result = "Palindrome"
else:
    result = "Not a palindrome"
print(f"Original word: {word}")
print(f"Reversed word: {reversed_word}")
print(f"Result: {result}")

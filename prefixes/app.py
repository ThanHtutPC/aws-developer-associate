# This file will run 1024 bytes to words
import random
import string

def generate_random_words(total_length):
    words = []
    current_length = 0

    while current_length < total_length:
        word_length = random.randint(3, 10)  # Create random word length between 3 to 10 characters
        if current_length + word_length + 1 > total_length:  # Ensure final word fits exactly in 1024 bytes
            word_length = total_length - current_length
        word = ''.join(random.choices(string.ascii_lowercase, k=word_length))
        words.append(word)
        current_length += word_length + 1  # Adding 1 for space or next word separator

    return ' '.join(words)

# Generate 1,024 character string
result = generate_random_words(1024)
print(result)

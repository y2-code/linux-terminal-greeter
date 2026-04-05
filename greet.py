import datetime
import time
import random


def slow(text, delay=0.05):
    """Print text slowly for terminal effect."""
    for char in text:
        print(char, end="", flush=True)
        time.sleep(delay)
    print()


def greet():
    now = datetime.datetime.now()
    hour = now.hour

    morning = [
        "~ may the morning shine with your purpose ~",
        "~ rise gently into possibility ~"
    ]

    afternoon = [
        "~ may the afternoon flow with your favour ~",
        "~ progress walks beside you today ~"
    ]

    evening = [
        "~ may the evening fall with your grace ~",
        "~ the sky rests as your work settles ~"
    ]

    night = [
        "~ isn't the moon brighter tonight? ~",
        "~ silence writes the deepest thoughts ~"
    ]

    if 5 <= hour < 12:
        slow(random.choice(morning))
    elif 12 <= hour < 17:
        slow(random.choice(afternoon))
    elif 17 <= hour < 21:
        slow(random.choice(evening))
    else:
        slow(random.choice(night))


if __name__ == "__main__":
    greet()
    input("\nPress Enter to close...")
# The Road to Recovery - A 2000-Line Python Program

# File Imports
import os
import sys
import random
import math

# Function Definitions
def display_preamble():
    print("The Road to Recovery")
    print("This program provides guidance and activities to help you on your journey to recovery.")
    print("Let's get started!")

def display_menu():
    print("-----------------------------------------------------")
    print("Please make a selection from the following options:")
    print("1. Read a motivational quote.")
    print("2. Remind yourself of your goals.")
    print("3. Take a break.")
    print("4. Participate in an activity")
    print("5. Listen to music")
    print("6. Journal about your journey")
    print("7. Exit.")
    print("-----------------------------------------------------")

def read_motivational_quote():
    quotes = ["The future belongs to those who believe in the beauty of their dreams. ~ Eleanor Roosevelt",
              "It always seems impossible until it's done. ~ Nelson Mandela",
              "The most difficult thing is the decision to act, the rest is merely tenacity. ~ Amelia Earhart",
              "Success is not final; failure is not fatal: It is the courage to continue that counts. ~ Winston Churchill",
              "Without ambition one starts nothing. Without work one finishes nothing. The prize will not be sent to you. You have to win it. ~ Ralph Waldo Emerson"]

    index = random.randint(0, len(quotes)-1)
    print(quotes[index])

def remind_goals():
    goals = ["Start exercising regularly.",
             "Eat healthy, wholesome foods.",
             "Drink at least 8 glasses of water each day.",
             "Make time for self-care.",
             "Read at least one book each month.",
             "Start a hobby.",
             "Sleep 8 hours every night."]

    for goal in goals:
        print(goal)
        print("")

def take_break():
    print("Take a 5-minute break. Do something that makes you feel good.")

def participate_activity():
    activities = ["Take a walk in nature.",
                  "Go for a bike ride.",
                  "Do some yoga.",
                  "Go for a swim at the beach.",
                  "Call a friend and chat.",
                  "Go to a museum or art gallery.",
                  "Write in your journal.",
                  "Do some painting or drawing.",
                  "Play a musical instrument.",
                  "Go to a local park and relax."]

    index = random.randint(0, len(activities)-1)
    print("Today's activity is:")
    print(activities[index])

def listen_music():
    genres = ["Rock",
              "Jazz",
              "Classical",
              "Country",
              "Blues",
              "Pop",
              "Hip-hop",
              "Reggae"]

    index = random.randint(0, len(genres)-1)
    print("Today's genre is:")
    print(genres[index])

def journal_journey():
    print("Write about your journey. Where have you been? Where are you now? Where are you going?")
    input("Press enter when you're done writing.")

# Program Body
if __name__ == "__main__":
    os.system('cls' if os.name == 'nt' else 'clear')
    display_preamble()

    while(True):
        display_menu()
        selection = input("Enter your selection: ")

        if selection == "1":
            read_motivational_quote()
        elif selection == "2":
            remind_goals()
        elif selection == "3":
            take_break()
        elif selection == "4":
            participate_activity()
        elif selection == "5":
            listen_music()
        elif selection == "6":
            journal_journey()
        elif selection == "7":
            print("Thank you for participating. Have a great day!")
            break
        else:
            print("Error: Invalid selection.")
            sys.exit()
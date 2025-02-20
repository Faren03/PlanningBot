import pyperplan

# Define available actions
ACTIONS = {
    "1": "send_message",
    "2": "compliment",
    "3": "ask_for_coffee",
    "4": "attend_event",
    "5": "help_with_study",
    "6": "joke_around",
    "7": "give_gift",
    "8": "ask_about_hobbies",
    "9": "confess_feelings",
    "10": "walk_together"
}

def display_choices():
    """ Show available actions for user input. """
    print("\nChoose an action:")
    for key, action in ACTIONS.items():
        print(f"{key}. {action.replace('_', ' ').title()}")

def update_problem_file(selected_action):
    """ Modify the problem file to include the user's selected action. """
    with open("romcom-problem.pddl", "r") as file:
        lines = file.readlines()
    
    # Find where to insert the new action
    for i, line in enumerate(lines):
        if "(:init" in line:
            lines.insert(i+1, f"    ({selected_action})\n")
            break

    # Save updated problem file
    with open("romcom-problem.pddl", "w") as file:
        file.writelines(lines)

def run_planner():
    """ Run the planning system interactively. """
    print("Welcome to the Rom-Com Story Planner!")
    
    while True:
        display_choices()
        choice = input("\nEnter the number of your action (or 'q' to quit): ").strip()
        
        if choice.lower() == 'q':
            print("Exiting the story. Maybe love will find a way another day!")
            break

        if choice not in ACTIONS:
            print("Invalid choice. Try again!")
            continue

        selected_action = ACTIONS[choice]
        print(f"\nYou chose to: {selected_action.replace('_', ' ')}")

        # Update the problem file
        update_problem_file(selected_action)

        # Load PDDL files and call the planner
        domain = pyperplan.load_domain("romcom-domain.pddl")
        problem = pyperplan.load_problem("romcom-problem.pddl")
        solution = pyperplan.solve(domain, problem)

        if solution:
            print("\n💖 Success! Alex and Jordan are now in a relationship! 💖")
            break
        else:
            print("\nNot quite there yet. Keep trying!")
            
    print("\nThanks for playing!")

if __name__ == "__main__":
    run_planner()

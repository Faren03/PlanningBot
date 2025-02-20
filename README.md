Interactive Rom-Com Planning Model
This project implements a romantic comedy (rom-com) story using PDDL (Planning Domain Definition Language) and a planner to model an interactive text-based narrative. The user interacts with the story, influencing the state of the world and progressing toward the goal of starting a romantic relationship.

Project Overview
This interactive story features a character, Alex, who tries to build a relationship with Jordan through various actions. The goal of the project is to model the interactions as planning actions and define the initial and goal states using PDDL, allowing multiple unique paths toward the goal.

Key Components
PDDL Model: The story is modeled using PDDL to represent the different actions Alex can take to reach the goal state. Actions include "Send Message," "Compliment Jordan," "Ask for Coffee," and more.

Planner Integration: The project integrates a PDDL planner to evaluate possible actions and determine the sequence of steps to reach the goal state.

Interactive Story Paths: Multiple story paths are supported, allowing different sequences of actions to lead to the same goal state, providing variety in the interactions.

Requirements
Python 3.x
Pyperplan (or other PDDL-compatible planner)
Install the required dependencies using:

bash
Copy code
pip install pyperplan
Project Structure
bash
Copy code
.
├── romcom-domain.pddl      # PDDL domain definition for the rom-com story
├── romcom-problem.pddl     # PDDL problem definition for the story scenario
├── planner.py              # Python script to run the planner and interact with the user
└── README.md               # Project documentation
How to Use
Domain and Problem Definition:

The romcom-domain.pddl file defines the available actions (e.g., meeting Jordan, sending messages, complimenting, etc.) and the preconditions/effects of each action.
The romcom-problem.pddl file defines the initial state (e.g., Alex is shy and not in a relationship with Jordan) and the goal state (e.g., Alex and Jordan are in a relationship).
Running the Planner:

The planner.py file integrates with a PDDL planner (e.g., Pyperplan) to process the domain and problem definitions and find a solution.
The planner tries to achieve the goal (Alex and Jordan being in a relationship) based on user inputs and available actions.

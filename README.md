Interactive Rom-Com Planning Model

This project implements a romantic comedy (rom-com) interactive story using PDDL (Planning Domain Definition Language) and a planner to model a text-based narrative. The user interacts with the story, influencing the state of the world and progressing toward the goal of starting a romantic relationship.

Project Overview

This interactive story follows Alex, who is trying to build a relationship with Jordan. The goal is to model interactions as planning actions and define the initial and goal states using PDDL. The planner evaluates possible story paths, ensuring multiple unique ways to reach the final goal.

Key Components

PDDL Model:

The story is modeled using PDDL, defining different actions Alex can take (e.g., "Send Message", "Compliment Jordan", "Ask for Coffee", etc.).

Preconditions and effects are included to control the logical flow of the story.

Planner Integration:

Uses Pyperplan (or another compatible PDDL planner) to evaluate the best sequence of actions to reach the goal state.

Interactive Story Paths:

Multiple unique paths to the goal state allow different sequences of actions, making the story dynamic and replayable.

Requirements

Python 3.x

Pyperplan (or another PDDL-compatible planner)

Installation

Install dependencies using:

pip install pyperplan

Project Structure

.
├── romcom-domain.pddl    
├── romcom-problem.pddl   
├── planner.py            
└── README.md              

How to Use

1. Define the Domain and Problem

romcom-domain.pddl defines available actions (meeting Jordan, sending messages, complimenting, etc.) and their preconditions/effects.

romcom-problem.pddl sets the initial state (e.g., Alex is shy and not in a relationship with Jordan) and the goal state (Alex and Jordan are in a relationship).

2. Running the Planner

Execute the planner script to start the interactive story:

python planner.py

This will:

Load the PDDL domain and problem files.

Start an interactive session, where the user can choose Alex’s actions.

Use the planner to compute story progress, updating the state dynamically.

End when Alex reaches the goal (starting a relationship with Jordan) or fails (e.g., Jordan loses interest).

Example Interaction




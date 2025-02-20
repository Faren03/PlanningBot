(define (domain romcom)
  (:requirements :strips)
  (:predicates
    (met ?a ?b)
    (is_shy ?a)
    (has_received_message ?a)
    (in_relationship ?a ?b)
    (mood_confident ?a)
    (complimented ?a ?b)
    (asked_for_coffee ?a ?b)
    (offered_help ?a ?b)
    (planned_date ?a ?b)
    (flirted ?a ?b)
  )

  (:action meet_jordan
    :parameters (?a - person ?j - person)
    :precondition (and (at ?a dorm) (at ?j cafeteria) (not (met ?a ?j)))
    :effect (met ?a ?j)
  )
  
  (:action send_message
    :parameters (?a - person ?j - person)
    :precondition (met ?a ?j)
    :effect (has_received_message ?a)
  )
  
  (:action change_mood
    :parameters (?a - person)
    :precondition (is_shy ?a)
    :effect (not (is_shy ?a)) (mood_confident ?a)
  )
  
  (:action compliment_jordan
    :parameters (?a - person ?j - person)
    :precondition (met ?a ?j)
    :effect (complimented ?a ?j)
  )
  
  (:action ask_for_coffee
    :parameters (?a - person ?j - person)
    :precondition (met ?a ?j)
    :effect (asked_for_coffee ?a ?j)
  )
  
  (:action offer_help
    :parameters (?a - person ?j - person)
    :precondition (met ?a ?j)
    :effect (offered_help ?a ?j)
  )
  
  (:action plan_date
    :parameters (?a - person ?j - person)
    :precondition (met ?a ?j)
    :effect (planned_date ?a ?j)
  )
  
  (:action apologize
    :parameters (?a - person ?j - person)
    :precondition (met ?a ?j)
    :effect (not (flirted ?a ?j))
  )
  
  (:action flirt
    :parameters (?a - person ?j - person)
    :precondition (met ?a ?j)
    :effect (flirted ?a ?j)
  )
  
  (:action ask_out
    :parameters (?a - person ?j - person)
    :precondition (and (met ?a ?j) (mood_confident ?a) (not (in_relationship ?a ?j)))
    :effect (in_relationship ?a ?j)
  )
)

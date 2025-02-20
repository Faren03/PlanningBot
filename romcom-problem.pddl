(define (problem romcom-problem)
  (:domain romcom)
  (:objects
    Alex Jordan - person
  )
  (:init
    (at Alex dorm)
    (at Jordan cafeteria)
    (is_shy Alex)
    (not (met Alex Jordan))
    (not (in_relationship Alex Jordan))
  )
  (:goal
    (and
      (in_relationship Alex Jordan)
      (has_received_message Alex)
      (planned_date Alex Jordan)
      (mood_confident Alex)
    )
  )
)

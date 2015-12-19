;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; HW3 blocks world + painting
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (domain hw3)
  (:requirements :strips)

  (:constants dummy red green blue)

  (:predicates (on ?x ?y)
	       (on-table ?x)
	       (clear ?x)
	       (arm-empty)
	       (holding ?x)
	       (can-color ?ob ?color)
	       (spray ?ob)
	       (can ?obj)
	       (brush ?ob)
	       (clean ?brush)
  )
	       
  (:action clean-brush
         :parameters (?ob1 ?ob2 ?ob3)
         :precondition
         (and (brush ?ob1) 
            (holding ?ob1) 
            (not (clean ?ob1)) 
            (water ?ob2) 
            (on-table ?ob2) 
            (clear ?ob2) 
            (color ?ob3)
            (can-color ?ob1 ?ob3)
         )
         :effect
         (and (clean ?ob1) 
            (not (can-color ?ob1 ?ob3))
          )
  )
	       
  (:action load-brush
         :parameters (?ob1 ?color ?ob2)
         :precondition 
         (and (brush ?ob1) 
              (holding ?ob1) 
              (clean ?ob1) 
              (can ?ob2) 
              (on-table ?ob2) 
              (clear ?ob2) 
              (has-color ?ob2 ?color)
         )
         :effect
         (and (not (clean ?ob1))
           (can-color ?ob1 ?color)))
   
  (:action paint-block
         :parameters (?ob1 ?ob2 ?color)
         :precondition
         (and (brush ?ob1) 
              (holding ?ob1) 
              (can-color ?ob1 ?color) 
              (not (clean ?ob1))
              (on-table ?ob2) 
              (clear ?ob2)
         )
         :effect 
         (and (color ?ob2 ?color))
  )
         
  (:action spray-block
         :parameters (?ob1 ?ob2 ?color)
         :precondition 
         (and (on-table ?ob1) 
              (on-table ?ob1) 
              (clear ?ob1) 
              (holding ?ob2) 
              (spray ?ob2) 
              (has-color ?ob2 ?color)
         )
         :effect
         (and (color ?ob1 ?color))
  )
	       
  (:action pick-up
	     :parameters (?ob1)
	     :precondition (and (clear ?ob1) (on-table ?ob1) (arm-empty))
	     :effect
	     (and (not (on-table ?ob1))
		   (not (clear ?ob1))
		   (not (arm-empty))
		   (holding ?ob1)))

  (:action put-down
	     :parameters (?ob)
	     :precondition (holding ?ob)
	     :effect
	     (and (not (holding ?ob))
		   (clear ?ob)
		   (arm-empty)
		   (on-table ?ob)))

  (:action stack
	     :parameters (?sob ?sunderob)
	     :precondition (and (holding ?sob) (clear ?sunderob))
	     :effect
	     (and (not (holding ?sob))
		   (not (clear ?sunderob))
		   (clear ?sob)
		   (arm-empty)
		   (on ?sob ?sunderob)))
		   
   (:action un-stack
   		:parameters (?upperob ?belowob)
   		:precondition 
   		(and (on ?upperob ?belowob) 
   		     (clear ?upperob) 
   		     (arm-empty)
   		)
   		:effect
   		(and 
   		    (not (on ?upperob ?belowob))
   		    (holding ?upperob)
   		    (not (arm-empty))
   		    (clear ?belowob)
   		    (not (clear ?upperob))
   		)
   )
)

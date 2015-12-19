;; There is only one block, A, which is on the table.  A can with
;; red paint is on the table.  There is a clean brush on the
;; table.  Our goal is to have A be red and the arm empty.

(define (problem 01)
  (:domain hw3)
  (:objects a brush1 can1)
  (:init (arm-empty)
  
  		 ;there is a block on the table with nothing on it
         (on-table a)
         (clear a)
  
  		 ;there is a clean brush on table with nothing on it 
  		 (brush brush1)
  		 (on-table brush1)
  		 (clear brush1)
  		 (clean brush1)
  		 
  		 ;there is red can on the table with nothing on it
  		 (on-table can1)
  		 (clear can1)
  		 (can can1)
  		 (has-color can1 red)
  		 
  		 ;red is a color
  		 (color red)
  		 )  		        

  ;block is colored red and arm is empty
  (:goal (and (color a red) (arm-empty))))

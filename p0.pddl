;; There is only one block, A, which is on the table.  A sprayer with
;; red paint is on the table.  Our goal is to have A be red and the
;; arm empty.

(define (problem 01)
  (:domain hw3)
  (:objects a spray1)
  (:init (arm-empty)
  		 ;there is a block A on the table with nothing on it
         (on-table a)
         (clear a)
         
         ;there is a red sprayer on the table with nothing on it
         (on-table spray1)
         (clear spray1)
         (spray spray1)
         (has-color spray1 red)
     
     	 ;red is color    
         (color red))         
  
  ;goal to have a colored read and arm is empty
  (:goal (color a red) (arm-empty)))